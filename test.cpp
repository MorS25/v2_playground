
#include <cstdio>
#include <iostream>
#include <fcntl.h>
#include "mavlink.capnp.h"
#include <capnp/message.h>
#include <capnp/serialize-packed.h>

int main(int argc, char *argv[])
{
	printf("Hello MAVLink 2.0!\n");

	::capnp::MallocMessageBuilder message;

  	AttitudeSubtyped::Builder attitude = message.initRoot<AttitudeSubtyped>();
  	attitude.setTimestamp(2384573485);
  	attitude.getOrientation().setW(0.9f);
  	attitude.getOrientation().setX(0.23f);
  	attitude.getOrientation().setY(0.12f);
  	attitude.getOrientation().setZ(0.09f);
  	attitude.getGyroSpeed().setX(0.00023f);
  	attitude.getGyroSpeed().setY(-0.00023f);
  	attitude.getGyroSpeed().setZ(0.00023f);

  	kj::Array<capnp::word> words = capnp::messageToFlatArray(message);
  	kj::ArrayPtr<kj::byte> bytes = words.asBytes();

  	int sizeWords = capnp::computeSerializedSizeInWords(message);

  	printf("encoded attitude with %d bytes (vs 36 in MAVLink, duh!)\n", sizeWords * 8);
}
