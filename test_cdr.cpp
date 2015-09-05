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

	// Note: Fast-CDR don't provide codegen now, so hand-made messages.

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
	if (type == "essentials") {
		cdr << uint8_t(1);		// vehicle_type
		cdr << uint32_t(2144324);	// time
		cdr << int32_t(-353608059);	// lat
		cdr << int32_t(1491637570);	// lon
		cdr << float(98.970001);	// alt
		cdr << uint8_t(10);		// mode
		cdr << int16_t(1200);		// nav_bearing
		cdr << float(140.0);		// nav_dist
		cdr << uint32_t(65591);		// health
		cdr << uint16_t(1459);		// groundspeed
		cdr << uint16_t(1678);		// airspeed
		cdr << uint8_t(20);		// gps_nsats
		cdr << uint8_t(2);		// gps_hdop
		cdr << uint8_t(3);		// gps_fixtype
		cdr << uint16_t(14382);		// bat_volt
		cdr << uint8_t(82);		// bat_remaining
		cdr << uint16_t(2549);		// bat_curr
		cdr << int16_t(521);		// roll
		cdr << int16_t(1023);		// pitch
		cdr << int16_t(723);		// navroll
		cdr << int16_t(1234);		// navpitch
		cdr << int16_t(631);		// wind_speed
		cdr << int16_t(2513);		// wind_dir
		cdr << uint16_t(14);		// wpnum
		cdr << uint8_t(68);		// throttle
		cdr << char(38);		// temperature, NOTE: int8_t cause a error.
		cdr << uint16_t(65536);		// rangefinder
		cdr << uint16_t(23);		// vertical_speed. XXX unsigned?
		cdr << bool(true);		// armed_status
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
