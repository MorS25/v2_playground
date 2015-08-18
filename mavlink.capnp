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
