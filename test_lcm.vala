/*
 * Just a play with LCM message serializer, that i implemented in VALA
 *
 * Compile:
 * lcm-gen --vala mavlink.lcm
 * valac --pkg=json-glib-1.0 --pkg=lcm test_lcm.vala /usr/local/src/lcm/lcm_message.vala mavlink.*.vala
 */

int main(string[] args)
{
	var msg_type = "";
	var json_file = "";
	if (args.length > 2) {
		msg_type = args[1];
		json_file = args[2];
	}
	else {
		unowned string program = args[0];
		stderr.puts(@"Usage: $program <type> <json data file>\n");
		return 1;
	}

	var parser = new Json.Parser();
	parser.load_from_file(json_file);

	uint8[] encoded = null;

	if (msg_type == "attitude_t") {
		var msg = (mavlink.attitude_t) Json.gobject_deserialize(typeof(mavlink.attitude_t), parser.get_root());
		encoded = (uint8[]) msg.encode();
	}
	else if (msg_type == "attitude_subtyped_t") {
		// XXX segfault now.
		var msg = (mavlink.attitude_subtyped_t) Json.gobject_deserialize(typeof(mavlink.attitude_subtyped_t), parser.get_root());
		encoded = (uint8[]) msg.encode();
	}
	else if (msg_type == "essentials_t") {
		var msg = (mavlink.essentials_t) Json.gobject_deserialize(typeof(mavlink.essentials_t), parser.get_root());
		encoded = (uint8[]) msg.encode();
	}
	else if (msg_type == "essentials_v2_t") {
		var msg = (mavlink.essentials_v2_t) Json.gobject_deserialize(typeof(mavlink.essentials_v2_t), parser.get_root());
		encoded = (uint8[]) msg.encode();
	}

	if (encoded != null) {
		stderr.printf("Encoded size: %zu\n", encoded.length);
		stdout.write(encoded);
		return 0;
	}
	else {
		stderr.puts(@"Unknown type: $msg_type\n");
		return 1;
	}
}
