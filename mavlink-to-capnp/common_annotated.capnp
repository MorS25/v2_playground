# common.capnp
@0xffffffffffffffff;
struct Heartbeat @0xcd11ac7f0573f69e {  # 16 bytes, 0 ptrs
  type @0 :UInt8;  # bits[0, 8)
  autopilot @1 :UInt8;  # bits[8, 16)
  baseMode @2 :UInt8;  # bits[16, 24)
  customMode @3 :UInt32;  # bits[32, 64)
  systemStatus @4 :UInt8;  # bits[24, 32)
  mavlinkVersion @5 :UInt8;  # bits[64, 72)
}
struct SysStatus @0xb7acf204e5dbdff8 {  # 32 bytes, 0 ptrs
  onboardControlSensorsPresent @0 :UInt32;  # bits[0, 32)
  onboardControlSensorsEnabled @1 :UInt32;  # bits[32, 64)
  onboardControlSensorsHealth @2 :UInt32;  # bits[64, 96)
  load @3 :UInt16;  # bits[96, 112)
  voltageBattery @4 :UInt16;  # bits[112, 128)
  currentBattery @5 :Int16;  # bits[128, 144)
  batteryRemaining @6 :Int8;  # bits[144, 152)
  dropRateComm @7 :UInt16;  # bits[160, 176)
  errorsComm @8 :UInt16;  # bits[176, 192)
  errorsCount1 @9 :UInt16;  # bits[192, 208)
  errorsCount2 @10 :UInt16;  # bits[208, 224)
  errorsCount3 @11 :UInt16;  # bits[224, 240)
  errorsCount4 @12 :UInt16;  # bits[240, 256)
}
struct SystemTime @0xe29895a832125141 {  # 16 bytes, 0 ptrs
  timeUnixUsec @0 :UInt64;  # bits[0, 64)
  timeBootMs @1 :UInt32;  # bits[64, 96)
}
struct Ping @0x9a6b6a08073ee741 {  # 16 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  seq @1 :UInt32;  # bits[64, 96)
  targetSystem @2 :UInt8;  # bits[96, 104)
  targetComponent @3 :UInt8;  # bits[104, 112)
}
struct ChangeOperatorControl @0xee3c4e71178eb403 {  # 8 bytes, 1 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  controlRequest @1 :UInt8;  # bits[8, 16)
  version @2 :UInt8;  # bits[16, 24)
  passkey @3 :Text;  # ptr[0]
}
struct ChangeOperatorControlAck @0x965db2070f1f45d7 {  # 8 bytes, 0 ptrs
  gcsSystemId @0 :UInt8;  # bits[0, 8)
  controlRequest @1 :UInt8;  # bits[8, 16)
  ack @2 :UInt8;  # bits[16, 24)
}
struct AuthKey @0xa3bf65d37b6cee29 {  # 0 bytes, 1 ptrs
  key @0 :Text;  # ptr[0]
}
struct SetMode @0xb22407cfb114c352 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  baseMode @1 :UInt8;  # bits[8, 16)
  customMode @2 :UInt32;  # bits[32, 64)
}
struct ParamRequestRead @0xc9cdde92660f7d3a {  # 8 bytes, 1 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  paramId @2 :Text;  # ptr[0]
  paramIndex @3 :Int16;  # bits[16, 32)
}
struct ParamRequestList @0xfce4c7eab9ebde2f {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
}
struct ParamValue @0xbed526fdd4741455 {  # 16 bytes, 1 ptrs
  paramId @0 :Text;  # ptr[0]
  paramValue @1 :Float32;  # bits[0, 32)
  paramType @2 :UInt8;  # bits[32, 40)
  paramCount @3 :UInt16;  # bits[48, 64)
  paramIndex @4 :UInt16;  # bits[64, 80)
}
struct ParamSet @0xfbae8b8c78e1b5fe {  # 8 bytes, 1 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  paramId @2 :Text;  # ptr[0]
  paramValue @3 :Float32;  # bits[32, 64)
  paramType @4 :UInt8;  # bits[16, 24)
}
struct GpsRawInt @0xbae43072bb2d7037 {  # 32 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  fixType @1 :UInt8;  # bits[64, 72)
  lat @2 :Int32;  # bits[96, 128)
  lon @3 :Int32;  # bits[128, 160)
  alt @4 :Int32;  # bits[160, 192)
  eph @5 :UInt16;  # bits[80, 96)
  epv @6 :UInt16;  # bits[192, 208)
  vel @7 :UInt16;  # bits[208, 224)
  cog @8 :UInt16;  # bits[224, 240)
  satellitesVisible @9 :UInt8;  # bits[72, 80)
}
struct GpsStatus @0xc1849bbd7b755909 {  # 8 bytes, 0 ptrs
  satellitesVisible @0 :UInt8;  # bits[0, 8)
  satellitePrn @1 :UInt8;  # bits[8, 16)
  satelliteUsed @2 :UInt8;  # bits[16, 24)
  satelliteElevation @3 :UInt8;  # bits[24, 32)
  satelliteAzimuth @4 :UInt8;  # bits[32, 40)
  satelliteSnr @5 :UInt8;  # bits[40, 48)
}
struct ScaledImu @0xe0adc3f82f141671 {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  xacc @1 :Int16;  # bits[32, 48)
  yacc @2 :Int16;  # bits[48, 64)
  zacc @3 :Int16;  # bits[64, 80)
  xgyro @4 :Int16;  # bits[80, 96)
  ygyro @5 :Int16;  # bits[96, 112)
  zgyro @6 :Int16;  # bits[112, 128)
  xmag @7 :Int16;  # bits[128, 144)
  ymag @8 :Int16;  # bits[144, 160)
  zmag @9 :Int16;  # bits[160, 176)
}
struct RawImu @0x8ee8545968389345 {  # 32 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  xacc @1 :Int16;  # bits[64, 80)
  yacc @2 :Int16;  # bits[80, 96)
  zacc @3 :Int16;  # bits[96, 112)
  xgyro @4 :Int16;  # bits[112, 128)
  ygyro @5 :Int16;  # bits[128, 144)
  zgyro @6 :Int16;  # bits[144, 160)
  xmag @7 :Int16;  # bits[160, 176)
  ymag @8 :Int16;  # bits[176, 192)
  zmag @9 :Int16;  # bits[192, 208)
}
struct RawPressure @0x965933af4de63bad {  # 16 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  pressAbs @1 :Int16;  # bits[64, 80)
  pressDiff1 @2 :Int16;  # bits[80, 96)
  pressDiff2 @3 :Int16;  # bits[96, 112)
  temperature @4 :Int16;  # bits[112, 128)
}
struct ScaledPressure @0xa6c8057e6f886194 {  # 16 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  pressAbs @1 :Float32;  # bits[32, 64)
  pressDiff @2 :Float32;  # bits[64, 96)
  temperature @3 :Int16;  # bits[96, 112)
}
struct Attitude @0xeaba000ee5973d51 {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  roll @1 :Float32;  # bits[32, 64)
  pitch @2 :Float32;  # bits[64, 96)
  yaw @3 :Float32;  # bits[96, 128)
  rollspeed @4 :Float32;  # bits[128, 160)
  pitchspeed @5 :Float32;  # bits[160, 192)
  yawspeed @6 :Float32;  # bits[192, 224)
}
struct AttitudeQuaternion @0x9ddec4d1f48a59d8 {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  q1 @1 :Float32;  # bits[32, 64)
  q2 @2 :Float32;  # bits[64, 96)
  q3 @3 :Float32;  # bits[96, 128)
  q4 @4 :Float32;  # bits[128, 160)
  rollspeed @5 :Float32;  # bits[160, 192)
  pitchspeed @6 :Float32;  # bits[192, 224)
  yawspeed @7 :Float32;  # bits[224, 256)
}
struct LocalPositionNed @0x8c7ef7c799172758 {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  x @1 :Float32;  # bits[32, 64)
  y @2 :Float32;  # bits[64, 96)
  z @3 :Float32;  # bits[96, 128)
  vx @4 :Float32;  # bits[128, 160)
  vy @5 :Float32;  # bits[160, 192)
  vz @6 :Float32;  # bits[192, 224)
}
struct GlobalPositionInt @0xe1c15c9b8d7f690b {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  lat @1 :Int32;  # bits[32, 64)
  lon @2 :Int32;  # bits[64, 96)
  alt @3 :Int32;  # bits[96, 128)
  relativeAlt @4 :Int32;  # bits[128, 160)
  vx @5 :Int16;  # bits[160, 176)
  vy @6 :Int16;  # bits[176, 192)
  vz @7 :Int16;  # bits[192, 208)
  hdg @8 :UInt16;  # bits[208, 224)
}
struct RcChannelsScaled @0x87195dca4522488a {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  port @1 :UInt8;  # bits[32, 40)
  chan1Scaled @2 :Int16;  # bits[48, 64)
  chan2Scaled @3 :Int16;  # bits[64, 80)
  chan3Scaled @4 :Int16;  # bits[80, 96)
  chan4Scaled @5 :Int16;  # bits[96, 112)
  chan5Scaled @6 :Int16;  # bits[112, 128)
  chan6Scaled @7 :Int16;  # bits[128, 144)
  chan7Scaled @8 :Int16;  # bits[144, 160)
  chan8Scaled @9 :Int16;  # bits[160, 176)
  rssi @10 :UInt8;  # bits[40, 48)
}
struct RcChannelsRaw @0xab8e2bd21fc58c3a {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  port @1 :UInt8;  # bits[32, 40)
  chan1Raw @2 :UInt16;  # bits[48, 64)
  chan2Raw @3 :UInt16;  # bits[64, 80)
  chan3Raw @4 :UInt16;  # bits[80, 96)
  chan4Raw @5 :UInt16;  # bits[96, 112)
  chan5Raw @6 :UInt16;  # bits[112, 128)
  chan6Raw @7 :UInt16;  # bits[128, 144)
  chan7Raw @8 :UInt16;  # bits[144, 160)
  chan8Raw @9 :UInt16;  # bits[160, 176)
  rssi @10 :UInt8;  # bits[40, 48)
}
struct ServoOutputRaw @0x95346e1f4abe4ac7 {  # 24 bytes, 0 ptrs
  timeUsec @0 :UInt32;  # bits[0, 32)
  port @1 :UInt8;  # bits[32, 40)
  servo1Raw @2 :UInt16;  # bits[48, 64)
  servo2Raw @3 :UInt16;  # bits[64, 80)
  servo3Raw @4 :UInt16;  # bits[80, 96)
  servo4Raw @5 :UInt16;  # bits[96, 112)
  servo5Raw @6 :UInt16;  # bits[112, 128)
  servo6Raw @7 :UInt16;  # bits[128, 144)
  servo7Raw @8 :UInt16;  # bits[144, 160)
  servo8Raw @9 :UInt16;  # bits[160, 176)
}
struct MissionRequestPartialList @0xd25cbbb96d2112f6 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  startIndex @2 :Int16;  # bits[16, 32)
  endIndex @3 :Int16;  # bits[32, 48)
}
struct MissionWritePartialList @0x9c9ef33f76cd840e {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  startIndex @2 :Int16;  # bits[16, 32)
  endIndex @3 :Int16;  # bits[32, 48)
}
struct MissionItem @0xc3dc6409eab93551 {  # 40 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  seq @2 :UInt16;  # bits[16, 32)
  frame @3 :UInt8;  # bits[32, 40)
  command @4 :UInt16;  # bits[48, 64)
  current @5 :UInt8;  # bits[40, 48)
  autocontinue @6 :UInt8;  # bits[64, 72)
  param1 @7 :Float32;  # bits[96, 128)
  param2 @8 :Float32;  # bits[128, 160)
  param3 @9 :Float32;  # bits[160, 192)
  param4 @10 :Float32;  # bits[192, 224)
  x @11 :Float32;  # bits[224, 256)
  y @12 :Float32;  # bits[256, 288)
  z @13 :Float32;  # bits[288, 320)
}
struct MissionRequest @0xe2b47e63ac540be0 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  seq @2 :UInt16;  # bits[16, 32)
}
struct MissionSetCurrent @0xd349840a5c7fda95 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  seq @2 :UInt16;  # bits[16, 32)
}
struct MissionCurrent @0xadb1437a358c31a3 {  # 8 bytes, 0 ptrs
  seq @0 :UInt16;  # bits[0, 16)
}
struct MissionRequestList @0x8cb70ce6328dd23e {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
}
struct MissionCount @0x9b1a2cd7f42dbe97 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  count @2 :UInt16;  # bits[16, 32)
}
struct MissionClearAll @0xb8160f798f1fb193 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
}
struct MissionItemReached @0x91833c860f7f7512 {  # 8 bytes, 0 ptrs
  seq @0 :UInt16;  # bits[0, 16)
}
struct MissionAck @0x9b85294510445d47 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  type @2 :UInt8;  # bits[16, 24)
}
struct SetGpsGlobalOrigin @0x8fa4e6f226007a69 {  # 16 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  latitude @1 :Int32;  # bits[32, 64)
  longitude @2 :Int32;  # bits[64, 96)
  altitude @3 :Int32;  # bits[96, 128)
}
struct GpsGlobalOrigin @0xd458a016c3af004f {  # 16 bytes, 0 ptrs
  latitude @0 :Int32;  # bits[0, 32)
  longitude @1 :Int32;  # bits[32, 64)
  altitude @2 :Int32;  # bits[64, 96)
}
struct ParamMapRc @0xd0b929e3b59544f7 {  # 24 bytes, 1 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  paramId @2 :Text;  # ptr[0]
  paramIndex @3 :Int16;  # bits[16, 32)
  parameterRcChannelIndex @4 :UInt8;  # bits[32, 40)
  paramValue0 @5 :Float32;  # bits[64, 96)
  scale @6 :Float32;  # bits[96, 128)
  paramValueMin @7 :Float32;  # bits[128, 160)
  paramValueMax @8 :Float32;  # bits[160, 192)
}
struct SafetySetAllowedArea @0x80992cef5d3b50eb {  # 32 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  frame @2 :UInt8;  # bits[16, 24)
  p1X @3 :Float32;  # bits[32, 64)
  p1Y @4 :Float32;  # bits[64, 96)
  p1Z @5 :Float32;  # bits[96, 128)
  p2X @6 :Float32;  # bits[128, 160)
  p2Y @7 :Float32;  # bits[160, 192)
  p2Z @8 :Float32;  # bits[192, 224)
}
struct SafetyAllowedArea @0xa26716ff45cfc220 {  # 32 bytes, 0 ptrs
  frame @0 :UInt8;  # bits[0, 8)
  p1X @1 :Float32;  # bits[32, 64)
  p1Y @2 :Float32;  # bits[64, 96)
  p1Z @3 :Float32;  # bits[96, 128)
  p2X @4 :Float32;  # bits[128, 160)
  p2Y @5 :Float32;  # bits[160, 192)
  p2Z @6 :Float32;  # bits[192, 224)
}
struct AttitudeQuaternionCov @0xe16ca910b0ce3e18 {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  q @1 :Float32;  # bits[32, 64)
  rollspeed @2 :Float32;  # bits[64, 96)
  pitchspeed @3 :Float32;  # bits[96, 128)
  yawspeed @4 :Float32;  # bits[128, 160)
  covariance @5 :Float32;  # bits[160, 192)
}
struct NavControllerOutput @0x9fe15859a7f78ad0 {  # 32 bytes, 0 ptrs
  navRoll @0 :Float32;  # bits[0, 32)
  navPitch @1 :Float32;  # bits[32, 64)
  navBearing @2 :Int16;  # bits[64, 80)
  targetBearing @3 :Int16;  # bits[80, 96)
  wpDist @4 :UInt16;  # bits[96, 112)
  altError @5 :Float32;  # bits[128, 160)
  aspdError @6 :Float32;  # bits[160, 192)
  xtrackError @7 :Float32;  # bits[192, 224)
}
struct GlobalPositionIntCov @0x96535e6fbfd08546 {  # 48 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  timeUtc @1 :UInt64;  # bits[64, 128)
  estimatorType @2 :UInt8;  # bits[32, 40)
  lat @3 :Int32;  # bits[128, 160)
  lon @4 :Int32;  # bits[160, 192)
  alt @5 :Int32;  # bits[192, 224)
  relativeAlt @6 :Int32;  # bits[224, 256)
  vx @7 :Float32;  # bits[256, 288)
  vy @8 :Float32;  # bits[288, 320)
  vz @9 :Float32;  # bits[320, 352)
  covariance @10 :Float32;  # bits[352, 384)
}
struct LocalPositionNedCov @0xba176a5e550d8eed {  # 48 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  timeUtc @1 :UInt64;  # bits[64, 128)
  estimatorType @2 :UInt8;  # bits[32, 40)
  x @3 :Float32;  # bits[128, 160)
  y @4 :Float32;  # bits[160, 192)
  z @5 :Float32;  # bits[192, 224)
  vx @6 :Float32;  # bits[224, 256)
  vy @7 :Float32;  # bits[256, 288)
  vz @8 :Float32;  # bits[288, 320)
  covariance @9 :Float32;  # bits[320, 352)
}
struct RcChannels @0x84ba2237ce895752 {  # 48 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  chancount @1 :UInt8;  # bits[32, 40)
  chan1Raw @2 :UInt16;  # bits[48, 64)
  chan2Raw @3 :UInt16;  # bits[64, 80)
  chan3Raw @4 :UInt16;  # bits[80, 96)
  chan4Raw @5 :UInt16;  # bits[96, 112)
  chan5Raw @6 :UInt16;  # bits[112, 128)
  chan6Raw @7 :UInt16;  # bits[128, 144)
  chan7Raw @8 :UInt16;  # bits[144, 160)
  chan8Raw @9 :UInt16;  # bits[160, 176)
  chan9Raw @10 :UInt16;  # bits[176, 192)
  chan10Raw @11 :UInt16;  # bits[192, 208)
  chan11Raw @12 :UInt16;  # bits[208, 224)
  chan12Raw @13 :UInt16;  # bits[224, 240)
  chan13Raw @14 :UInt16;  # bits[240, 256)
  chan14Raw @15 :UInt16;  # bits[256, 272)
  chan15Raw @16 :UInt16;  # bits[272, 288)
  chan16Raw @17 :UInt16;  # bits[288, 304)
  chan17Raw @18 :UInt16;  # bits[304, 320)
  chan18Raw @19 :UInt16;  # bits[320, 336)
  rssi @20 :UInt8;  # bits[40, 48)
}
struct RequestDataStream @0xf74a091ed41187e7 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  reqStreamId @2 :UInt8;  # bits[16, 24)
  reqMessageRate @3 :UInt16;  # bits[32, 48)
  startStop @4 :UInt8;  # bits[24, 32)
}
struct DataStream @0xb459c0afd900d1b0 {  # 8 bytes, 0 ptrs
  streamId @0 :UInt8;  # bits[0, 8)
  messageRate @1 :UInt16;  # bits[16, 32)
  onOff @2 :UInt8;  # bits[8, 16)
}
struct ManualControl @0xfaffce8c21c3ca97 {  # 16 bytes, 0 ptrs
  target @0 :UInt8;  # bits[0, 8)
  x @1 :Int16;  # bits[16, 32)
  y @2 :Int16;  # bits[32, 48)
  z @3 :Int16;  # bits[48, 64)
  r @4 :Int16;  # bits[64, 80)
  buttons @5 :UInt16;  # bits[80, 96)
}
struct RcChannelsOverride @0x933509429ec6e479 {  # 24 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  chan1Raw @2 :UInt16;  # bits[16, 32)
  chan2Raw @3 :UInt16;  # bits[32, 48)
  chan3Raw @4 :UInt16;  # bits[48, 64)
  chan4Raw @5 :UInt16;  # bits[64, 80)
  chan5Raw @6 :UInt16;  # bits[80, 96)
  chan6Raw @7 :UInt16;  # bits[96, 112)
  chan7Raw @8 :UInt16;  # bits[112, 128)
  chan8Raw @9 :UInt16;  # bits[128, 144)
}
struct MissionItemInt @0xc6731f9ff87a35af {  # 40 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  seq @2 :UInt16;  # bits[16, 32)
  frame @3 :UInt8;  # bits[32, 40)
  command @4 :UInt16;  # bits[48, 64)
  current @5 :UInt8;  # bits[40, 48)
  autocontinue @6 :UInt8;  # bits[64, 72)
  param1 @7 :Float32;  # bits[96, 128)
  param2 @8 :Float32;  # bits[128, 160)
  param3 @9 :Float32;  # bits[160, 192)
  param4 @10 :Float32;  # bits[192, 224)
  x @11 :Int32;  # bits[224, 256)
  y @12 :Int32;  # bits[256, 288)
  z @13 :Float32;  # bits[288, 320)
}
struct VfrHud @0x98396c83ba1c38c7 {  # 24 bytes, 0 ptrs
  airspeed @0 :Float32;  # bits[0, 32)
  groundspeed @1 :Float32;  # bits[32, 64)
  heading @2 :Int16;  # bits[64, 80)
  throttle @3 :UInt16;  # bits[80, 96)
  alt @4 :Float32;  # bits[96, 128)
  climb @5 :Float32;  # bits[128, 160)
}
struct CommandInt @0xc874b46d525abdd2 {  # 40 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  frame @2 :UInt8;  # bits[16, 24)
  command @3 :UInt16;  # bits[32, 48)
  current @4 :UInt8;  # bits[24, 32)
  autocontinue @5 :UInt8;  # bits[48, 56)
  param1 @6 :Float32;  # bits[64, 96)
  param2 @7 :Float32;  # bits[96, 128)
  param3 @8 :Float32;  # bits[128, 160)
  param4 @9 :Float32;  # bits[160, 192)
  x @10 :Int32;  # bits[192, 224)
  y @11 :Int32;  # bits[224, 256)
  z @12 :Float32;  # bits[256, 288)
}
struct CommandLong @0xf1d48cdbb6cf1298 {  # 40 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  command @2 :UInt16;  # bits[16, 32)
  confirmation @3 :UInt8;  # bits[32, 40)
  param1 @4 :Float32;  # bits[64, 96)
  param2 @5 :Float32;  # bits[96, 128)
  param3 @6 :Float32;  # bits[128, 160)
  param4 @7 :Float32;  # bits[160, 192)
  param5 @8 :Float32;  # bits[192, 224)
  param6 @9 :Float32;  # bits[224, 256)
  param7 @10 :Float32;  # bits[256, 288)
}
struct CommandAck @0xba7c50efaf5251f9 {  # 8 bytes, 0 ptrs
  command @0 :UInt16;  # bits[0, 16)
  result @1 :UInt8;  # bits[16, 24)
}
struct ManualSetpoint @0x995ae8a3c328dd87 {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  roll @1 :Float32;  # bits[32, 64)
  pitch @2 :Float32;  # bits[64, 96)
  yaw @3 :Float32;  # bits[96, 128)
  thrust @4 :Float32;  # bits[128, 160)
  modeSwitch @5 :UInt8;  # bits[160, 168)
  manualOverrideSwitch @6 :UInt8;  # bits[168, 176)
}
struct SetAttitudeTarget @0xed5269f8c03bb452 {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  targetSystem @1 :UInt8;  # bits[32, 40)
  targetComponent @2 :UInt8;  # bits[40, 48)
  typeMask @3 :UInt8;  # bits[48, 56)
  q @4 :Float32;  # bits[64, 96)
  bodyRollRate @5 :Float32;  # bits[96, 128)
  bodyPitchRate @6 :Float32;  # bits[128, 160)
  bodyYawRate @7 :Float32;  # bits[160, 192)
  thrust @8 :Float32;  # bits[192, 224)
}
struct AttitudeTarget @0x88f2e2c72f9591cc {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  typeMask @1 :UInt8;  # bits[32, 40)
  q @2 :Float32;  # bits[64, 96)
  bodyRollRate @3 :Float32;  # bits[96, 128)
  bodyPitchRate @4 :Float32;  # bits[128, 160)
  bodyYawRate @5 :Float32;  # bits[160, 192)
  thrust @6 :Float32;  # bits[192, 224)
}
struct SetPositionTargetLocalNed @0x931543adc47c7628 {  # 56 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  targetSystem @1 :UInt8;  # bits[32, 40)
  targetComponent @2 :UInt8;  # bits[40, 48)
  coordinateFrame @3 :UInt8;  # bits[48, 56)
  typeMask @4 :UInt16;  # bits[64, 80)
  x @5 :Float32;  # bits[96, 128)
  y @6 :Float32;  # bits[128, 160)
  z @7 :Float32;  # bits[160, 192)
  vx @8 :Float32;  # bits[192, 224)
  vy @9 :Float32;  # bits[224, 256)
  vz @10 :Float32;  # bits[256, 288)
  afx @11 :Float32;  # bits[288, 320)
  afy @12 :Float32;  # bits[320, 352)
  afz @13 :Float32;  # bits[352, 384)
  yaw @14 :Float32;  # bits[384, 416)
  yawRate @15 :Float32;  # bits[416, 448)
}
struct PositionTargetLocalNed @0xffe3a08da1b83133 {  # 56 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  coordinateFrame @1 :UInt8;  # bits[32, 40)
  typeMask @2 :UInt16;  # bits[48, 64)
  x @3 :Float32;  # bits[64, 96)
  y @4 :Float32;  # bits[96, 128)
  z @5 :Float32;  # bits[128, 160)
  vx @6 :Float32;  # bits[160, 192)
  vy @7 :Float32;  # bits[192, 224)
  vz @8 :Float32;  # bits[224, 256)
  afx @9 :Float32;  # bits[256, 288)
  afy @10 :Float32;  # bits[288, 320)
  afz @11 :Float32;  # bits[320, 352)
  yaw @12 :Float32;  # bits[352, 384)
  yawRate @13 :Float32;  # bits[384, 416)
}
struct SetPositionTargetGlobalInt @0x9fdc89be2339aff5 {  # 56 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  targetSystem @1 :UInt8;  # bits[32, 40)
  targetComponent @2 :UInt8;  # bits[40, 48)
  coordinateFrame @3 :UInt8;  # bits[48, 56)
  typeMask @4 :UInt16;  # bits[64, 80)
  latInt @5 :Int32;  # bits[96, 128)
  lonInt @6 :Int32;  # bits[128, 160)
  alt @7 :Float32;  # bits[160, 192)
  vx @8 :Float32;  # bits[192, 224)
  vy @9 :Float32;  # bits[224, 256)
  vz @10 :Float32;  # bits[256, 288)
  afx @11 :Float32;  # bits[288, 320)
  afy @12 :Float32;  # bits[320, 352)
  afz @13 :Float32;  # bits[352, 384)
  yaw @14 :Float32;  # bits[384, 416)
  yawRate @15 :Float32;  # bits[416, 448)
}
struct PositionTargetGlobalInt @0xb5d50331f4b6bf95 {  # 56 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  coordinateFrame @1 :UInt8;  # bits[32, 40)
  typeMask @2 :UInt16;  # bits[48, 64)
  latInt @3 :Int32;  # bits[64, 96)
  lonInt @4 :Int32;  # bits[96, 128)
  alt @5 :Float32;  # bits[128, 160)
  vx @6 :Float32;  # bits[160, 192)
  vy @7 :Float32;  # bits[192, 224)
  vz @8 :Float32;  # bits[224, 256)
  afx @9 :Float32;  # bits[256, 288)
  afy @10 :Float32;  # bits[288, 320)
  afz @11 :Float32;  # bits[320, 352)
  yaw @12 :Float32;  # bits[352, 384)
  yawRate @13 :Float32;  # bits[384, 416)
}
struct LocalPositionNedSystemGlobalOffset @0x8e187c4f52596b7f {  # 32 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  x @1 :Float32;  # bits[32, 64)
  y @2 :Float32;  # bits[64, 96)
  z @3 :Float32;  # bits[96, 128)
  roll @4 :Float32;  # bits[128, 160)
  pitch @5 :Float32;  # bits[160, 192)
  yaw @6 :Float32;  # bits[192, 224)
}
struct HilState @0xeb226c8e1a230a4e {  # 56 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  roll @1 :Float32;  # bits[64, 96)
  pitch @2 :Float32;  # bits[96, 128)
  yaw @3 :Float32;  # bits[128, 160)
  rollspeed @4 :Float32;  # bits[160, 192)
  pitchspeed @5 :Float32;  # bits[192, 224)
  yawspeed @6 :Float32;  # bits[224, 256)
  lat @7 :Int32;  # bits[256, 288)
  lon @8 :Int32;  # bits[288, 320)
  alt @9 :Int32;  # bits[320, 352)
  vx @10 :Int16;  # bits[352, 368)
  vy @11 :Int16;  # bits[368, 384)
  vz @12 :Int16;  # bits[384, 400)
  xacc @13 :Int16;  # bits[400, 416)
  yacc @14 :Int16;  # bits[416, 432)
  zacc @15 :Int16;  # bits[432, 448)
}
struct HilControls @0xb1d2603faf703c25 {  # 48 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  rollAilerons @1 :Float32;  # bits[64, 96)
  pitchElevator @2 :Float32;  # bits[96, 128)
  yawRudder @3 :Float32;  # bits[128, 160)
  throttle @4 :Float32;  # bits[160, 192)
  aux1 @5 :Float32;  # bits[192, 224)
  aux2 @6 :Float32;  # bits[224, 256)
  aux3 @7 :Float32;  # bits[256, 288)
  aux4 @8 :Float32;  # bits[288, 320)
  mode @9 :UInt8;  # bits[320, 328)
  navMode @10 :UInt8;  # bits[328, 336)
}
struct HilRcInputsRaw @0x8317bc4f7335facb {  # 40 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  chan1Raw @1 :UInt16;  # bits[64, 80)
  chan2Raw @2 :UInt16;  # bits[80, 96)
  chan3Raw @3 :UInt16;  # bits[96, 112)
  chan4Raw @4 :UInt16;  # bits[112, 128)
  chan5Raw @5 :UInt16;  # bits[128, 144)
  chan6Raw @6 :UInt16;  # bits[144, 160)
  chan7Raw @7 :UInt16;  # bits[160, 176)
  chan8Raw @8 :UInt16;  # bits[176, 192)
  chan9Raw @9 :UInt16;  # bits[192, 208)
  chan10Raw @10 :UInt16;  # bits[208, 224)
  chan11Raw @11 :UInt16;  # bits[224, 240)
  chan12Raw @12 :UInt16;  # bits[240, 256)
  rssi @13 :UInt8;  # bits[256, 264)
}
struct OpticalFlow @0x8e91cc6eb99cdf7d {  # 32 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  sensorId @1 :UInt8;  # bits[64, 72)
  flowX @2 :Int16;  # bits[80, 96)
  flowY @3 :Int16;  # bits[96, 112)
  flowCompMX @4 :Float32;  # bits[128, 160)
  flowCompMY @5 :Float32;  # bits[160, 192)
  quality @6 :UInt8;  # bits[72, 80)
  groundDistance @7 :Float32;  # bits[192, 224)
}
struct GlobalVisionPositionEstimate @0x9948737be7ef9821 {  # 32 bytes, 0 ptrs
  usec @0 :UInt64;  # bits[0, 64)
  x @1 :Float32;  # bits[64, 96)
  y @2 :Float32;  # bits[96, 128)
  z @3 :Float32;  # bits[128, 160)
  roll @4 :Float32;  # bits[160, 192)
  pitch @5 :Float32;  # bits[192, 224)
  yaw @6 :Float32;  # bits[224, 256)
}
struct VisionPositionEstimate @0xc007ead2623b5e2f {  # 32 bytes, 0 ptrs
  usec @0 :UInt64;  # bits[0, 64)
  x @1 :Float32;  # bits[64, 96)
  y @2 :Float32;  # bits[96, 128)
  z @3 :Float32;  # bits[128, 160)
  roll @4 :Float32;  # bits[160, 192)
  pitch @5 :Float32;  # bits[192, 224)
  yaw @6 :Float32;  # bits[224, 256)
}
struct VisionSpeedEstimate @0xe142e0cacf9d1071 {  # 24 bytes, 0 ptrs
  usec @0 :UInt64;  # bits[0, 64)
  x @1 :Float32;  # bits[64, 96)
  y @2 :Float32;  # bits[96, 128)
  z @3 :Float32;  # bits[128, 160)
}
struct ViconPositionEstimate @0xe199f273ecbf8da6 {  # 32 bytes, 0 ptrs
  usec @0 :UInt64;  # bits[0, 64)
  x @1 :Float32;  # bits[64, 96)
  y @2 :Float32;  # bits[96, 128)
  z @3 :Float32;  # bits[128, 160)
  roll @4 :Float32;  # bits[160, 192)
  pitch @5 :Float32;  # bits[192, 224)
  yaw @6 :Float32;  # bits[224, 256)
}
struct HighresImu @0xa589e9f09c77ccb8 {  # 64 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  xacc @1 :Float32;  # bits[64, 96)
  yacc @2 :Float32;  # bits[96, 128)
  zacc @3 :Float32;  # bits[128, 160)
  xgyro @4 :Float32;  # bits[160, 192)
  ygyro @5 :Float32;  # bits[192, 224)
  zgyro @6 :Float32;  # bits[224, 256)
  xmag @7 :Float32;  # bits[256, 288)
  ymag @8 :Float32;  # bits[288, 320)
  zmag @9 :Float32;  # bits[320, 352)
  absPressure @10 :Float32;  # bits[352, 384)
  diffPressure @11 :Float32;  # bits[384, 416)
  pressureAlt @12 :Float32;  # bits[416, 448)
  temperature @13 :Float32;  # bits[448, 480)
  fieldsUpdated @14 :UInt16;  # bits[480, 496)
}
struct OpticalFlowRad @0xa680062e8be251c0 {  # 48 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  sensorId @1 :UInt8;  # bits[64, 72)
  integrationTimeUs @2 :UInt32;  # bits[96, 128)
  integratedX @3 :Float32;  # bits[128, 160)
  integratedY @4 :Float32;  # bits[160, 192)
  integratedXgyro @5 :Float32;  # bits[192, 224)
  integratedYgyro @6 :Float32;  # bits[224, 256)
  integratedZgyro @7 :Float32;  # bits[256, 288)
  temperature @8 :Int16;  # bits[80, 96)
  quality @9 :UInt8;  # bits[72, 80)
  timeDeltaDistanceUs @10 :UInt32;  # bits[288, 320)
  distance @11 :Float32;  # bits[320, 352)
}
struct HilSensor @0xc0d8b7cf9dc27cb8 {  # 64 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  xacc @1 :Float32;  # bits[64, 96)
  yacc @2 :Float32;  # bits[96, 128)
  zacc @3 :Float32;  # bits[128, 160)
  xgyro @4 :Float32;  # bits[160, 192)
  ygyro @5 :Float32;  # bits[192, 224)
  zgyro @6 :Float32;  # bits[224, 256)
  xmag @7 :Float32;  # bits[256, 288)
  ymag @8 :Float32;  # bits[288, 320)
  zmag @9 :Float32;  # bits[320, 352)
  absPressure @10 :Float32;  # bits[352, 384)
  diffPressure @11 :Float32;  # bits[384, 416)
  pressureAlt @12 :Float32;  # bits[416, 448)
  temperature @13 :Float32;  # bits[448, 480)
  fieldsUpdated @14 :UInt32;  # bits[480, 512)
}
struct SimState @0xca361ea2290eb89f {  # 88 bytes, 0 ptrs
  q1 @0 :Float32;  # bits[0, 32)
  q2 @1 :Float32;  # bits[32, 64)
  q3 @2 :Float32;  # bits[64, 96)
  q4 @3 :Float32;  # bits[96, 128)
  roll @4 :Float32;  # bits[128, 160)
  pitch @5 :Float32;  # bits[160, 192)
  yaw @6 :Float32;  # bits[192, 224)
  xacc @7 :Float32;  # bits[224, 256)
  yacc @8 :Float32;  # bits[256, 288)
  zacc @9 :Float32;  # bits[288, 320)
  xgyro @10 :Float32;  # bits[320, 352)
  ygyro @11 :Float32;  # bits[352, 384)
  zgyro @12 :Float32;  # bits[384, 416)
  lat @13 :Float32;  # bits[416, 448)
  lon @14 :Float32;  # bits[448, 480)
  alt @15 :Float32;  # bits[480, 512)
  stdDevHorz @16 :Float32;  # bits[512, 544)
  stdDevVert @17 :Float32;  # bits[544, 576)
  vn @18 :Float32;  # bits[576, 608)
  ve @19 :Float32;  # bits[608, 640)
  vd @20 :Float32;  # bits[640, 672)
}
struct RadioStatus @0x8892a689397737c7 {  # 16 bytes, 0 ptrs
  rssi @0 :UInt8;  # bits[0, 8)
  remrssi @1 :UInt8;  # bits[8, 16)
  txbuf @2 :UInt8;  # bits[16, 24)
  noise @3 :UInt8;  # bits[24, 32)
  remnoise @4 :UInt8;  # bits[32, 40)
  rxerrors @5 :UInt16;  # bits[48, 64)
  fixed @6 :UInt16;  # bits[64, 80)
}
struct FileTransferProtocol @0xe5827f1d9945f6fb {  # 8 bytes, 0 ptrs
  targetNetwork @0 :UInt8;  # bits[0, 8)
  targetSystem @1 :UInt8;  # bits[8, 16)
  targetComponent @2 :UInt8;  # bits[16, 24)
  payload @3 :UInt8;  # bits[24, 32)
}
struct Timesync @0xe69d800db7715019 {  # 16 bytes, 0 ptrs
  tc1 @0 :Int64;  # bits[0, 64)
  ts1 @1 :Int64;  # bits[64, 128)
}
struct HilGps @0x824b02d0b3771fa9 {  # 40 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  fixType @1 :UInt8;  # bits[64, 72)
  lat @2 :Int32;  # bits[96, 128)
  lon @3 :Int32;  # bits[128, 160)
  alt @4 :Int32;  # bits[160, 192)
  eph @5 :UInt16;  # bits[80, 96)
  epv @6 :UInt16;  # bits[192, 208)
  vel @7 :UInt16;  # bits[208, 224)
  vn @8 :Int16;  # bits[224, 240)
  ve @9 :Int16;  # bits[240, 256)
  vd @10 :Int16;  # bits[256, 272)
  cog @11 :UInt16;  # bits[272, 288)
  satellitesVisible @12 :UInt8;  # bits[72, 80)
}
struct HilOpticalFlow @0xcf416e6945c2817b {  # 48 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  sensorId @1 :UInt8;  # bits[64, 72)
  integrationTimeUs @2 :UInt32;  # bits[96, 128)
  integratedX @3 :Float32;  # bits[128, 160)
  integratedY @4 :Float32;  # bits[160, 192)
  integratedXgyro @5 :Float32;  # bits[192, 224)
  integratedYgyro @6 :Float32;  # bits[224, 256)
  integratedZgyro @7 :Float32;  # bits[256, 288)
  temperature @8 :Int16;  # bits[80, 96)
  quality @9 :UInt8;  # bits[72, 80)
  timeDeltaDistanceUs @10 :UInt32;  # bits[288, 320)
  distance @11 :Float32;  # bits[320, 352)
}
struct HilStateQuaternion @0xeeabf24275fb29c8 {  # 56 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  attitudeQuaternion @1 :Float32;  # bits[64, 96)
  rollspeed @2 :Float32;  # bits[96, 128)
  pitchspeed @3 :Float32;  # bits[128, 160)
  yawspeed @4 :Float32;  # bits[160, 192)
  lat @5 :Int32;  # bits[192, 224)
  lon @6 :Int32;  # bits[224, 256)
  alt @7 :Int32;  # bits[256, 288)
  vx @8 :Int16;  # bits[288, 304)
  vy @9 :Int16;  # bits[304, 320)
  vz @10 :Int16;  # bits[320, 336)
  indAirspeed @11 :UInt16;  # bits[336, 352)
  trueAirspeed @12 :UInt16;  # bits[352, 368)
  xacc @13 :Int16;  # bits[368, 384)
  yacc @14 :Int16;  # bits[384, 400)
  zacc @15 :Int16;  # bits[400, 416)
}
struct ScaledImu2 @0xaddceb7f5f1efaec {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  xacc @1 :Int16;  # bits[32, 48)
  yacc @2 :Int16;  # bits[48, 64)
  zacc @3 :Int16;  # bits[64, 80)
  xgyro @4 :Int16;  # bits[80, 96)
  ygyro @5 :Int16;  # bits[96, 112)
  zgyro @6 :Int16;  # bits[112, 128)
  xmag @7 :Int16;  # bits[128, 144)
  ymag @8 :Int16;  # bits[144, 160)
  zmag @9 :Int16;  # bits[160, 176)
}
struct LogRequestList @0x8bbed06a2ee7c6da {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  start @2 :UInt16;  # bits[16, 32)
  end @3 :UInt16;  # bits[32, 48)
}
struct LogEntry @0xf60c00f90dae364b {  # 16 bytes, 0 ptrs
  id @0 :UInt16;  # bits[0, 16)
  numLogs @1 :UInt16;  # bits[16, 32)
  lastLogNum @2 :UInt16;  # bits[32, 48)
  timeUtc @3 :UInt32;  # bits[64, 96)
  size @4 :UInt32;  # bits[96, 128)
}
struct LogRequestData @0xe2482cde38d375cd {  # 16 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  id @2 :UInt16;  # bits[16, 32)
  ofs @3 :UInt32;  # bits[32, 64)
  count @4 :UInt32;  # bits[64, 96)
}
struct LogData @0xcdaa1073e4decfef {  # 8 bytes, 0 ptrs
  id @0 :UInt16;  # bits[0, 16)
  ofs @1 :UInt32;  # bits[32, 64)
  count @2 :UInt8;  # bits[16, 24)
  data @3 :UInt8;  # bits[24, 32)
}
struct LogErase @0xdbf70b3ac957f476 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
}
struct LogRequestEnd @0x8b54bd3def016625 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
}
struct GpsInjectData @0xca2723867ad4b2c3 {  # 8 bytes, 0 ptrs
  targetSystem @0 :UInt8;  # bits[0, 8)
  targetComponent @1 :UInt8;  # bits[8, 16)
  len @2 :UInt8;  # bits[16, 24)
  data @3 :UInt8;  # bits[24, 32)
}
struct Gps2Raw @0xaf482d6ae5d5d16c {  # 40 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  fixType @1 :UInt8;  # bits[64, 72)
  lat @2 :Int32;  # bits[96, 128)
  lon @3 :Int32;  # bits[128, 160)
  alt @4 :Int32;  # bits[160, 192)
  eph @5 :UInt16;  # bits[80, 96)
  epv @6 :UInt16;  # bits[192, 208)
  vel @7 :UInt16;  # bits[208, 224)
  cog @8 :UInt16;  # bits[224, 240)
  satellitesVisible @9 :UInt8;  # bits[72, 80)
  dgpsNumch @10 :UInt8;  # bits[240, 248)
  dgpsAge @11 :UInt32;  # bits[256, 288)
}
struct PowerStatus @0xcc2bbf7a7c1dff4e {  # 8 bytes, 0 ptrs
  vcc @0 :UInt16;  # bits[0, 16)
  vservo @1 :UInt16;  # bits[16, 32)
  flags @2 :UInt16;  # bits[32, 48)
}
struct SerialControl @0xce8305ff0a2b273a {  # 16 bytes, 0 ptrs
  device @0 :UInt8;  # bits[0, 8)
  flags @1 :UInt8;  # bits[8, 16)
  timeout @2 :UInt16;  # bits[16, 32)
  baudrate @3 :UInt32;  # bits[32, 64)
  count @4 :UInt8;  # bits[64, 72)
  data @5 :UInt8;  # bits[72, 80)
}
struct GpsRtk @0xfb174beff50b11fc {  # 40 bytes, 0 ptrs
  timeLastBaselineMs @0 :UInt32;  # bits[0, 32)
  rtkReceiverId @1 :UInt8;  # bits[32, 40)
  wn @2 :UInt16;  # bits[48, 64)
  tow @3 :UInt32;  # bits[64, 96)
  rtkHealth @4 :UInt8;  # bits[40, 48)
  rtkRate @5 :UInt8;  # bits[96, 104)
  nsats @6 :UInt8;  # bits[104, 112)
  baselineCoordsType @7 :UInt8;  # bits[112, 120)
  baselineAMm @8 :Int32;  # bits[128, 160)
  baselineBMm @9 :Int32;  # bits[160, 192)
  baselineCMm @10 :Int32;  # bits[192, 224)
  accuracy @11 :UInt32;  # bits[224, 256)
  iarNumHypotheses @12 :Int32;  # bits[256, 288)
}
struct Gps2Rtk @0xd32d2482e02f80cf {  # 40 bytes, 0 ptrs
  timeLastBaselineMs @0 :UInt32;  # bits[0, 32)
  rtkReceiverId @1 :UInt8;  # bits[32, 40)
  wn @2 :UInt16;  # bits[48, 64)
  tow @3 :UInt32;  # bits[64, 96)
  rtkHealth @4 :UInt8;  # bits[40, 48)
  rtkRate @5 :UInt8;  # bits[96, 104)
  nsats @6 :UInt8;  # bits[104, 112)
  baselineCoordsType @7 :UInt8;  # bits[112, 120)
  baselineAMm @8 :Int32;  # bits[128, 160)
  baselineBMm @9 :Int32;  # bits[160, 192)
  baselineCMm @10 :Int32;  # bits[192, 224)
  accuracy @11 :UInt32;  # bits[224, 256)
  iarNumHypotheses @12 :Int32;  # bits[256, 288)
}
struct ScaledImu3 @0x938cc697c7af9b90 {  # 24 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  xacc @1 :Int16;  # bits[32, 48)
  yacc @2 :Int16;  # bits[48, 64)
  zacc @3 :Int16;  # bits[64, 80)
  xgyro @4 :Int16;  # bits[80, 96)
  ygyro @5 :Int16;  # bits[96, 112)
  zgyro @6 :Int16;  # bits[112, 128)
  xmag @7 :Int16;  # bits[128, 144)
  ymag @8 :Int16;  # bits[144, 160)
  zmag @9 :Int16;  # bits[160, 176)
}
struct DataTransmissionHandshake @0xf03fdc4c8337084f {  # 16 bytes, 0 ptrs
  type @0 :UInt8;  # bits[0, 8)
  size @1 :UInt32;  # bits[32, 64)
  width @2 :UInt16;  # bits[16, 32)
  height @3 :UInt16;  # bits[64, 80)
  packets @4 :UInt16;  # bits[80, 96)
  payload @5 :UInt8;  # bits[8, 16)
  jpgQuality @6 :UInt8;  # bits[96, 104)
}
struct EncapsulatedData @0xcb06d9b059373de9 {  # 8 bytes, 0 ptrs
  seqnr @0 :UInt16;  # bits[0, 16)
  data @1 :UInt8;  # bits[16, 24)
}
struct DistanceSensor @0xe485b7bcc3f02cb4 {  # 16 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  minDistance @1 :UInt16;  # bits[32, 48)
  maxDistance @2 :UInt16;  # bits[48, 64)
  currentDistance @3 :UInt16;  # bits[64, 80)
  type @4 :UInt8;  # bits[80, 88)
  id @5 :UInt8;  # bits[88, 96)
  orientation @6 :UInt8;  # bits[96, 104)
  covariance @7 :UInt8;  # bits[104, 112)
}
struct TerrainRequest @0xbe9352d5c2580aca {  # 24 bytes, 0 ptrs
  lat @0 :Int32;  # bits[0, 32)
  lon @1 :Int32;  # bits[32, 64)
  gridSpacing @2 :UInt16;  # bits[64, 80)
  mask @3 :UInt64;  # bits[128, 192)
}
struct TerrainData @0xe59971cdabf8d60a {  # 16 bytes, 0 ptrs
  lat @0 :Int32;  # bits[0, 32)
  lon @1 :Int32;  # bits[32, 64)
  gridSpacing @2 :UInt16;  # bits[64, 80)
  gridbit @3 :UInt8;  # bits[80, 88)
  data @4 :Int16;  # bits[96, 112)
}
struct TerrainCheck @0xa1406a5490f982be {  # 8 bytes, 0 ptrs
  lat @0 :Int32;  # bits[0, 32)
  lon @1 :Int32;  # bits[32, 64)
}
struct TerrainReport @0xe205432e75dd16f5 {  # 24 bytes, 0 ptrs
  lat @0 :Int32;  # bits[0, 32)
  lon @1 :Int32;  # bits[32, 64)
  spacing @2 :UInt16;  # bits[64, 80)
  terrainHeight @3 :Float32;  # bits[96, 128)
  currentHeight @4 :Float32;  # bits[128, 160)
  pending @5 :UInt16;  # bits[80, 96)
  loaded @6 :UInt16;  # bits[160, 176)
}
struct ScaledPressure2 @0xbc0bf69c3803c343 {  # 16 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  pressAbs @1 :Float32;  # bits[32, 64)
  pressDiff @2 :Float32;  # bits[64, 96)
  temperature @3 :Int16;  # bits[96, 112)
}
struct AttPosMocap @0xd58c136e37096180 {  # 24 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  q @1 :Float32;  # bits[64, 96)
  x @2 :Float32;  # bits[96, 128)
  y @3 :Float32;  # bits[128, 160)
  z @4 :Float32;  # bits[160, 192)
}
struct SetActuatorControlTarget @0xdcc77ea77caadce9 {  # 16 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  groupMlx @1 :UInt8;  # bits[64, 72)
  targetSystem @2 :UInt8;  # bits[72, 80)
  targetComponent @3 :UInt8;  # bits[80, 88)
  controls @4 :Float32;  # bits[96, 128)
}
struct ActuatorControlTarget @0xeedad11ad49d9e55 {  # 16 bytes, 0 ptrs
  timeUsec @0 :UInt64;  # bits[0, 64)
  groupMlx @1 :UInt8;  # bits[64, 72)
  controls @2 :Float32;  # bits[96, 128)
}
struct BatteryStatus @0xc7f5e2ced5fbacf4 {  # 24 bytes, 0 ptrs
  id @0 :UInt8;  # bits[0, 8)
  batteryFunction @1 :UInt8;  # bits[8, 16)
  type @2 :UInt8;  # bits[16, 24)
  temperature @3 :Int16;  # bits[32, 48)
  voltages @4 :UInt16;  # bits[48, 64)
  currentBattery @5 :Int16;  # bits[64, 80)
  currentConsumed @6 :Int32;  # bits[96, 128)
  energyConsumed @7 :Int32;  # bits[128, 160)
  batteryRemaining @8 :Int8;  # bits[24, 32)
}
struct AutopilotVersion @0xaec930c4da9198c0 {  # 40 bytes, 0 ptrs
  capabilities @0 :UInt64;  # bits[0, 64)
  flightSwVersion @1 :UInt32;  # bits[64, 96)
  middlewareSwVersion @2 :UInt32;  # bits[96, 128)
  osSwVersion @3 :UInt32;  # bits[128, 160)
  boardVersion @4 :UInt32;  # bits[160, 192)
  flightCustomVersion @5 :UInt8;  # bits[192, 200)
  middlewareCustomVersion @6 :UInt8;  # bits[200, 208)
  osCustomVersion @7 :UInt8;  # bits[208, 216)
  vendorId @8 :UInt16;  # bits[224, 240)
  productId @9 :UInt16;  # bits[240, 256)
  uid @10 :UInt64;  # bits[256, 320)
}
struct V2Extension @0x914b316fca2414d5 {  # 8 bytes, 0 ptrs
  targetNetwork @0 :UInt8;  # bits[0, 8)
  targetSystem @1 :UInt8;  # bits[8, 16)
  targetComponent @2 :UInt8;  # bits[16, 24)
  messageType @3 :UInt16;  # bits[32, 48)
  payload @4 :UInt8;  # bits[24, 32)
}
struct MemoryVect @0xeec74a2aefbb0d62 {  # 8 bytes, 0 ptrs
  address @0 :UInt16;  # bits[0, 16)
  ver @1 :UInt8;  # bits[16, 24)
  type @2 :UInt8;  # bits[24, 32)
  value @3 :Int8;  # bits[32, 40)
}
struct DebugVect @0xfbb45f8a7a3d3a15 {  # 24 bytes, 1 ptrs
  name @0 :Text;  # ptr[0]
  timeUsec @1 :UInt64;  # bits[0, 64)
  x @2 :Float32;  # bits[64, 96)
  y @3 :Float32;  # bits[96, 128)
  z @4 :Float32;  # bits[128, 160)
}
struct NamedValueFloat @0xe2eaecac00884f4f {  # 8 bytes, 1 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  name @1 :Text;  # ptr[0]
  value @2 :Float32;  # bits[32, 64)
}
struct NamedValueInt @0xe50ff4ebb3967dea {  # 8 bytes, 1 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  name @1 :Text;  # ptr[0]
  value @2 :Int32;  # bits[32, 64)
}
struct Statustext @0xe41c10b65f12ed7d {  # 8 bytes, 1 ptrs
  severity @0 :UInt8;  # bits[0, 8)
  text @1 :Text;  # ptr[0]
}
struct Debug @0xaae4a6fa52593b89 {  # 16 bytes, 0 ptrs
  timeBootMs @0 :UInt32;  # bits[0, 32)
  ind @1 :UInt8;  # bits[32, 40)
  value @2 :Float32;  # bits[64, 96)
}
struct Message @0xf9f2035611c52d30 {  # 8 bytes, 1 ptrs
  sequence @0 :UInt8;  # bits[0, 8)
  systemID @1 :UInt8;  # bits[8, 16)
  componentID @2 :UInt8;  # bits[16, 24)
  messageID @3 :UInt8;  # bits[24, 32)
  crc @4 :UInt16;  # bits[32, 48)
  payload :group {
    union {  # tag bits [48, 64)
      heartbeat @5 :Heartbeat;  # ptr[0], union tag = 0
      sysStatus @6 :SysStatus;  # ptr[0], union tag = 1
      systemTime @7 :SystemTime;  # ptr[0], union tag = 2
      ping @8 :Ping;  # ptr[0], union tag = 3
      changeOperatorControl @9 :ChangeOperatorControl;  # ptr[0], union tag = 4
      changeOperatorControlAck @10 :ChangeOperatorControlAck;  # ptr[0], union tag = 5
      authKey @11 :AuthKey;  # ptr[0], union tag = 6
      setMode @12 :SetMode;  # ptr[0], union tag = 7
      paramRequestRead @13 :ParamRequestRead;  # ptr[0], union tag = 8
      paramRequestList @14 :ParamRequestList;  # ptr[0], union tag = 9
      paramValue @15 :ParamValue;  # ptr[0], union tag = 10
      paramSet @16 :ParamSet;  # ptr[0], union tag = 11
      gpsRawInt @17 :GpsRawInt;  # ptr[0], union tag = 12
      gpsStatus @18 :GpsStatus;  # ptr[0], union tag = 13
      scaledImu @19 :ScaledImu;  # ptr[0], union tag = 14
      rawImu @20 :RawImu;  # ptr[0], union tag = 15
      rawPressure @21 :RawPressure;  # ptr[0], union tag = 16
      scaledPressure @22 :ScaledPressure;  # ptr[0], union tag = 17
      attitude @23 :Attitude;  # ptr[0], union tag = 18
      attitudeQuaternion @24 :AttitudeQuaternion;  # ptr[0], union tag = 19
      localPositionNed @25 :LocalPositionNed;  # ptr[0], union tag = 20
      globalPositionInt @26 :GlobalPositionInt;  # ptr[0], union tag = 21
      rcChannelsScaled @27 :RcChannelsScaled;  # ptr[0], union tag = 22
      rcChannelsRaw @28 :RcChannelsRaw;  # ptr[0], union tag = 23
      servoOutputRaw @29 :ServoOutputRaw;  # ptr[0], union tag = 24
      missionRequestPartialList @30 :MissionRequestPartialList;  # ptr[0], union tag = 25
      missionWritePartialList @31 :MissionWritePartialList;  # ptr[0], union tag = 26
      missionItem @32 :MissionItem;  # ptr[0], union tag = 27
      missionRequest @33 :MissionRequest;  # ptr[0], union tag = 28
      missionSetCurrent @34 :MissionSetCurrent;  # ptr[0], union tag = 29
      missionCurrent @35 :MissionCurrent;  # ptr[0], union tag = 30
      missionRequestList @36 :MissionRequestList;  # ptr[0], union tag = 31
      missionCount @37 :MissionCount;  # ptr[0], union tag = 32
      missionClearAll @38 :MissionClearAll;  # ptr[0], union tag = 33
      missionItemReached @39 :MissionItemReached;  # ptr[0], union tag = 34
      missionAck @40 :MissionAck;  # ptr[0], union tag = 35
      setGpsGlobalOrigin @41 :SetGpsGlobalOrigin;  # ptr[0], union tag = 36
      gpsGlobalOrigin @42 :GpsGlobalOrigin;  # ptr[0], union tag = 37
      paramMapRc @43 :ParamMapRc;  # ptr[0], union tag = 38
      safetySetAllowedArea @44 :SafetySetAllowedArea;  # ptr[0], union tag = 39
      safetyAllowedArea @45 :SafetyAllowedArea;  # ptr[0], union tag = 40
      attitudeQuaternionCov @46 :AttitudeQuaternionCov;  # ptr[0], union tag = 41
      navControllerOutput @47 :NavControllerOutput;  # ptr[0], union tag = 42
      globalPositionIntCov @48 :GlobalPositionIntCov;  # ptr[0], union tag = 43
      localPositionNedCov @49 :LocalPositionNedCov;  # ptr[0], union tag = 44
      rcChannels @50 :RcChannels;  # ptr[0], union tag = 45
      requestDataStream @51 :RequestDataStream;  # ptr[0], union tag = 46
      dataStream @52 :DataStream;  # ptr[0], union tag = 47
      manualControl @53 :ManualControl;  # ptr[0], union tag = 48
      rcChannelsOverride @54 :RcChannelsOverride;  # ptr[0], union tag = 49
      missionItemInt @55 :MissionItemInt;  # ptr[0], union tag = 50
      vfrHud @56 :VfrHud;  # ptr[0], union tag = 51
      commandInt @57 :CommandInt;  # ptr[0], union tag = 52
      commandLong @58 :CommandLong;  # ptr[0], union tag = 53
      commandAck @59 :CommandAck;  # ptr[0], union tag = 54
      manualSetpoint @60 :ManualSetpoint;  # ptr[0], union tag = 55
      setAttitudeTarget @61 :SetAttitudeTarget;  # ptr[0], union tag = 56
      attitudeTarget @62 :AttitudeTarget;  # ptr[0], union tag = 57
      setPositionTargetLocalNed @63 :SetPositionTargetLocalNed;  # ptr[0], union tag = 58
      positionTargetLocalNed @64 :PositionTargetLocalNed;  # ptr[0], union tag = 59
      setPositionTargetGlobalInt @65 :SetPositionTargetGlobalInt;  # ptr[0], union tag = 60
      positionTargetGlobalInt @66 :PositionTargetGlobalInt;  # ptr[0], union tag = 61
      localPositionNedSystemGlobalOffset @67 :LocalPositionNedSystemGlobalOffset;  # ptr[0], union tag = 62
      hilState @68 :HilState;  # ptr[0], union tag = 63
      hilControls @69 :HilControls;  # ptr[0], union tag = 64
      hilRcInputsRaw @70 :HilRcInputsRaw;  # ptr[0], union tag = 65
      opticalFlow @71 :OpticalFlow;  # ptr[0], union tag = 66
      globalVisionPositionEstimate @72 :GlobalVisionPositionEstimate;  # ptr[0], union tag = 67
      visionPositionEstimate @73 :VisionPositionEstimate;  # ptr[0], union tag = 68
      visionSpeedEstimate @74 :VisionSpeedEstimate;  # ptr[0], union tag = 69
      viconPositionEstimate @75 :ViconPositionEstimate;  # ptr[0], union tag = 70
      highresImu @76 :HighresImu;  # ptr[0], union tag = 71
      opticalFlowRad @77 :OpticalFlowRad;  # ptr[0], union tag = 72
      hilSensor @78 :HilSensor;  # ptr[0], union tag = 73
      simState @79 :SimState;  # ptr[0], union tag = 74
      radioStatus @80 :RadioStatus;  # ptr[0], union tag = 75
      fileTransferProtocol @81 :FileTransferProtocol;  # ptr[0], union tag = 76
      timesync @82 :Timesync;  # ptr[0], union tag = 77
      hilGps @83 :HilGps;  # ptr[0], union tag = 78
      hilOpticalFlow @84 :HilOpticalFlow;  # ptr[0], union tag = 79
      hilStateQuaternion @85 :HilStateQuaternion;  # ptr[0], union tag = 80
      scaledImu2 @86 :ScaledImu2;  # ptr[0], union tag = 81
      logRequestList @87 :LogRequestList;  # ptr[0], union tag = 82
      logEntry @88 :LogEntry;  # ptr[0], union tag = 83
      logRequestData @89 :LogRequestData;  # ptr[0], union tag = 84
      logData @90 :LogData;  # ptr[0], union tag = 85
      logErase @91 :LogErase;  # ptr[0], union tag = 86
      logRequestEnd @92 :LogRequestEnd;  # ptr[0], union tag = 87
      gpsInjectData @93 :GpsInjectData;  # ptr[0], union tag = 88
      gps2Raw @94 :Gps2Raw;  # ptr[0], union tag = 89
      powerStatus @95 :PowerStatus;  # ptr[0], union tag = 90
      serialControl @96 :SerialControl;  # ptr[0], union tag = 91
      gpsRtk @97 :GpsRtk;  # ptr[0], union tag = 92
      gps2Rtk @98 :Gps2Rtk;  # ptr[0], union tag = 93
      scaledImu3 @99 :ScaledImu3;  # ptr[0], union tag = 94
      dataTransmissionHandshake @100 :DataTransmissionHandshake;  # ptr[0], union tag = 95
      encapsulatedData @101 :EncapsulatedData;  # ptr[0], union tag = 96
      distanceSensor @102 :DistanceSensor;  # ptr[0], union tag = 97
      terrainRequest @103 :TerrainRequest;  # ptr[0], union tag = 98
      terrainData @104 :TerrainData;  # ptr[0], union tag = 99
      terrainCheck @105 :TerrainCheck;  # ptr[0], union tag = 100
      terrainReport @106 :TerrainReport;  # ptr[0], union tag = 101
      scaledPressure2 @107 :ScaledPressure2;  # ptr[0], union tag = 102
      attPosMocap @108 :AttPosMocap;  # ptr[0], union tag = 103
      setActuatorControlTarget @109 :SetActuatorControlTarget;  # ptr[0], union tag = 104
      actuatorControlTarget @110 :ActuatorControlTarget;  # ptr[0], union tag = 105
      batteryStatus @111 :BatteryStatus;  # ptr[0], union tag = 106
      autopilotVersion @112 :AutopilotVersion;  # ptr[0], union tag = 107
      v2Extension @113 :V2Extension;  # ptr[0], union tag = 108
      memoryVect @114 :MemoryVect;  # ptr[0], union tag = 109
      debugVect @115 :DebugVect;  # ptr[0], union tag = 110
      namedValueFloat @116 :NamedValueFloat;  # ptr[0], union tag = 111
      namedValueInt @117 :NamedValueInt;  # ptr[0], union tag = 112
      statustext @118 :Statustext;  # ptr[0], union tag = 113
      debug @119 :Debug;  # ptr[0], union tag = 114
    }
  }
}
