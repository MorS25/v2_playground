/*
 * Test CDR serialization with eProsima Fast CDR library
 *
 */

#include <iostream>
#include <fastcdr/Cdr.h>
#include <fastcdr/FastBuffer.h>

using eprosima::fastcdr::Cdr;
using eprosima::fastcdr::FastBuffer;

int main(int argc, char *argv[])
{
	if (argc < 3) {
		std::cerr << "Usage: " << argv[0] << " <attitude|attitude_subtyped|essentials|essentials_v2> <corba|dds>" << std::endl;
		return 1;
	}

	auto type = std::string(argv[1]);
	auto enc = std::string(argv[2]);

	Cdr::CdrType enc_type;
	if (enc == "corba")
		enc_type = Cdr::CORBA_CDR;
	else if (enc == "dds")
		enc_type = Cdr::DDS_CDR;
	else {
		std::cerr << "Unknown cdr encoding type: " << enc << std::endl;
		return 1;
	}

	char buffer[500];
	FastBuffer cdr_buffer(buffer, sizeof(buffer));
	Cdr cdr(cdr_buffer, Cdr::DEFAULT_ENDIAN, enc_type);

	// Note: Fast-CDR don't provide codegen now, so hand-made it.

	if (type == "attitude" || type == "attitude_subtyped") {
		// i don't seen differences between struct and simple type.
		// so i assume that Quaternion and Vector3 eats same amount of space as 4 and 3 floats
		cdr << uint64_t(2384573485);	// timestamp
		cdr << float(0.9);		// w
		cdr << float(0.23);		// x
		cdr << float(0.12);		// y
		cdr << float(0.9);		// z
		cdr << float(0.00023);		// rollspeed
		cdr << float(-0.00023);		// pitchspeed
		cdr << float(0.00023);		// yawspeed
	}
	else {
		std::cerr << "Unknown type." << std::endl;
		return 1;
	}

	const size_t msglen = cdr.getSerializedDataLength();
	std::cerr << "Message size: " << msglen << std::endl;
	//std::cout << cdr_buffer;
	for (size_t i = 0; i < msglen; i++)
		std::cout << buffer[i];

	return 0;
}
