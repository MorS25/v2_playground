__author__ = 'schwa'

from lxml import etree
import re
import jinja2
from pathlib import Path
import sys

class Structure(object):
    def __init__(self, name):
        self.name = name
        self.description = None
        self.fields = []

class Type(object):
    def __init__(self, name):
        self.name = name
        self.description = None

class ScalarType(Type):
    def __init__(self, name):
        super(ScalarType, self).__init__(name = "Union")
        self.name = name
        self.description = None


class UnionType(Type):
    def __init__(self):
        super(UnionType, self).__init__(name = "Union")
        self.fields = []


class Field(object):
    def __init__(self, name, index = None, type = None, defaultValue = None):
        self.name = name
        self.index = index
        self.type = type
        self.defaultValue = defaultValue
        self.description = None

def normalise_case(string, mixed_case = False):
    string = string.lower()
    words = string.split("_")
    words = [word.title() for word in words]
    string = ''.join(words)
    if mixed_case:
        string = string[:1].lower() + string[1:]
    return string


mavlink_types = {
    "int8_t": Type("Int8"),
    "int16_t": Type("Int16"),
    "int32_t": Type("Int32"),
    "int64_t": Type("Int64"),
    "uint8_t": Type("UInt8"),
    "uint16_t": Type("UInt16"),
    "uint32_t": Type("UInt32"),
    "uint64_t": Type("UInt64"),
    "uint8_t_mavlink_version": Type("UInt8"),
    "char": Type("Text"),
    "float": Type("Float32"),
}

schema_path = Path("message_definitions/v1.0/common.xml")

schema_tree = etree.parse(schema_path.open())

definitions = []

message_schemas = schema_tree.xpath("/mavlink/messages/message")
for message_schema in message_schemas:
    structure = Structure(name = normalise_case(message_schema.attrib["name"]))
    if message_schema.xpath("description"):
        structure.description = message_schema.xpath("description")[0].text
    field_schemas = message_schema.xpath("field")
    for index, field_schema in enumerate(field_schemas):

        type = field_schema.attrib["type"]
        match = re.compile(r"([^[]+)").match(type)
        if match:
            type = match.groups()[0]
        type = mavlink_types[type]

        field = Field(name = normalise_case(field_schema.attrib["name"], mixed_case=True), index = index, type = type)

        field.description = field_schema.text
        structure.fields.append(field)

    definitions.append(structure)


message = Structure(name="Message")
message.fields.append(Field(name="sequence", index=0, type=Type("UInt8")))
message.fields.append(Field(name="systemID", index=1, type=Type("UInt8")))
message.fields.append(Field(name="componentID", index=2, type=Type("UInt8")))
message.fields.append(Field(name="messageID", index=3, type=Type("UInt8")))
message.fields.append(Field(name="crc", index=4, type=Type("UInt16")))

payloads_union = UnionType()
for index, message_definition in enumerate(definitions):
    field = Field(name = message_definition.name[:1].lower() + message_definition.name[1:], index = index + 5, type = Type(name = message_definition.name))
    payloads_union.fields.append(field)

message.fields.append(Field(name="payload", type=payloads_union))

definitions.append(message)

# struct Person {
#   # ...
#
#   employment :union {
#     unemployed @4 :Void;
#     employer @5 :Company;
#     school @6 :School;
#     selfEmployed @7 :Void;
#     # We assume that a person is only one of these.
#   }

template_file = Path("capnp.jinja2")

loader = jinja2.FileSystemLoader(searchpath = str(template_file.parent))
env = jinja2.Environment(loader = loader, trim_blocks = True, lstrip_blocks = True)
template = env.get_template(template_file.name)
output_data = template.render(definitions = definitions)

output_path = Path("common.capnp")

output_path.open("w").write(output_data)
