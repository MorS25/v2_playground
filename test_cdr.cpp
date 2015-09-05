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
	if (argc < 2) {
		std::cerr << "Usage: " << argv[0] << " <attitude|attitude_subtyped|essentials|essentials_v2>" << std::endl;
		return 1;
	}

	return 0;
}
