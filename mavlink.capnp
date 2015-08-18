@0x997e5b76f98f279f;

struct Attitude {
  timestamp @0 :UInt64;
  w @1 :Float32;
  x @2 :Float32;
  y @3 :Float32;
  z @4 :Float32;
  rollspeed @5 :Float32;
  pitchspeed @6 :Float32;
  yawspeed @7 :Float32;
}

struct Quaternion {
	w @0 :Float32;
	x @1 :Float32;
	y @2 :Float32;
	z @3 :Float32;
}

struct Vector3 {
	x @0 :Float32;	# roll
	y @1 :Float32;	# pitch
	z @2 :Float32;	# yaw
}

struct AttitudeSubtyped {
  timestamp @0 :UInt64;
  orientation @1 :Quaternion;
  gyroSpeed @2 :Vector3;
}

# described in: https://docs.google.com/spreadsheets/d/1c5Vd-kzI7SOdKRk_d_Ri04z0xFR21Zg5ZMHgyiKkpUA/edit#gid=1551144504
struct Essentials {
	vehicleType @0 :UInt8;
	time @1 :UInt32;
	lat @2 :Int32;
	lon @3 :Int32;
	alt @4 :Float32;
	mode @5 :UInt8;
	navBearing @6 :Int16;
	navDist @7 :Float32;
	health @8 :UInt32;
	groundspeed @9 :UInt16;
	airspeed @10 :UInt16;
	gpsNSats @11 :UInt8;
	gpsHdop @12 :UInt8;
	gpsFixtype @13 :UInt8;
	batVolt @14 :UInt16;
	batRemaining @15 :UInt8;
	batCurr @16 :UInt16;
	roll @17 :Int16;
	pitch @18 :Int16;
	navroll @19 :Int16;
	navpitch @20 :Int16;
	windSpeed @21 :Int16;
	windDir @22 :Int16;
	wpnum @23 :UInt16;
	throttle @24 :UInt8;
	temperature @25 :Int8;
	rangefinder @26 :UInt16;
	verticalSpeed @27 :UInt16;
	armedStatus @28 :Bool;
}

struct Essentials2 {
	roll @0 :Int16;
	pitch @1 :Int16;
	heading @2 :Int16;
	throttle @3 :UInt8;
	lat @4 :Int32;
	lon @5 :Int32;
	altRel @6 :Float32;
	altAbs @7 :Float32;
	altTerrain @8 :Float32;
	flightMode @9 :UInt8;
	groundspeed @10 :UInt16;
	airspeed @11 :UInt16;
	climbRate @12 :UInt16;
	gpsNSats @13 :UInt8;
	gpsHdop @14 :UInt8;
	gpsFixtype @15 :UInt8;
	batVolt @16 :UInt16;
	batRemaining @17 :UInt8;
	batCurr @18 :UInt16;
	temperature @19 :Int8;
	unhealthy @20 :UInt32;
	failsafe @21 :UInt8;
	armedStatus @22 :Bool;
	eventMessage @23 :UInt16;
	wpnum @24 :UInt16;
	distanceToTarget @25 :Float32;
	targetRoll @26 :Int16;
	targetPitch @27 :Int16;
	targetHeading @28 :Int16;
}

