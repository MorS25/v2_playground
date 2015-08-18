@0x997e5b76f98f279f;

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

struct Attitude {
  timestamp @0 :UInt64;
  orientation @1 :Quaternion;
  gyroSpeed @2 :Vector3;
}
