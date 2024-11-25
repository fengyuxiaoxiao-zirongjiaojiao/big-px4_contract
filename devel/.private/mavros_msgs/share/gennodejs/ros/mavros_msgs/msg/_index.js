
"use strict";

let ActuatorControl = require('./ActuatorControl.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let Altitude = require('./Altitude.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let BatteryStatus = require('./BatteryStatus.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let CellularStatus = require('./CellularStatus.js');
let CommandCode = require('./CommandCode.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let DebugValue = require('./DebugValue.js');
let ESCInfo = require('./ESCInfo.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let ESCStatus = require('./ESCStatus.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let ExtendedState = require('./ExtendedState.js');
let FileEntry = require('./FileEntry.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let GPSINPUT = require('./GPSINPUT.js');
let GPSRAW = require('./GPSRAW.js');
let GPSRTK = require('./GPSRTK.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let HilControls = require('./HilControls.js');
let HilGPS = require('./HilGPS.js');
let HilSensor = require('./HilSensor.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let HomePosition = require('./HomePosition.js');
let LandingTarget = require('./LandingTarget.js');
let LogData = require('./LogData.js');
let LogEntry = require('./LogEntry.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let ManualControl = require('./ManualControl.js');
let Mavlink = require('./Mavlink.js');
let MountConfig = require('./MountConfig.js');
let MountControl = require('./MountControl.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let Param = require('./Param.js');
let ParamValue = require('./ParamValue.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let PositionTarget = require('./PositionTarget.js');
let RadioStatus = require('./RadioStatus.js');
let RCIn = require('./RCIn.js');
let RCOut = require('./RCOut.js');
let RTCM = require('./RTCM.js');
let RTKBaseline = require('./RTKBaseline.js');
let State = require('./State.js');
let StatusText = require('./StatusText.js');
let SysStatus = require('./SysStatus.js');
let TerrainReport = require('./TerrainReport.js');
let Thrust = require('./Thrust.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let Trajectory = require('./Trajectory.js');
let Tunnel = require('./Tunnel.js');
let VehicleInfo = require('./VehicleInfo.js');
let VFR_HUD = require('./VFR_HUD.js');
let Vibration = require('./Vibration.js');
let Waypoint = require('./Waypoint.js');
let WaypointList = require('./WaypointList.js');
let WaypointReached = require('./WaypointReached.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');

module.exports = {
  ActuatorControl: ActuatorControl,
  ADSBVehicle: ADSBVehicle,
  Altitude: Altitude,
  AttitudeTarget: AttitudeTarget,
  BatteryStatus: BatteryStatus,
  CameraImageCaptured: CameraImageCaptured,
  CamIMUStamp: CamIMUStamp,
  CellularStatus: CellularStatus,
  CommandCode: CommandCode,
  CompanionProcessStatus: CompanionProcessStatus,
  DebugValue: DebugValue,
  ESCInfo: ESCInfo,
  ESCInfoItem: ESCInfoItem,
  ESCStatus: ESCStatus,
  ESCStatusItem: ESCStatusItem,
  ESCTelemetry: ESCTelemetry,
  ESCTelemetryItem: ESCTelemetryItem,
  EstimatorStatus: EstimatorStatus,
  ExtendedState: ExtendedState,
  FileEntry: FileEntry,
  GlobalPositionTarget: GlobalPositionTarget,
  GPSINPUT: GPSINPUT,
  GPSRAW: GPSRAW,
  GPSRTK: GPSRTK,
  HilActuatorControls: HilActuatorControls,
  HilControls: HilControls,
  HilGPS: HilGPS,
  HilSensor: HilSensor,
  HilStateQuaternion: HilStateQuaternion,
  HomePosition: HomePosition,
  LandingTarget: LandingTarget,
  LogData: LogData,
  LogEntry: LogEntry,
  MagnetometerReporter: MagnetometerReporter,
  ManualControl: ManualControl,
  Mavlink: Mavlink,
  MountConfig: MountConfig,
  MountControl: MountControl,
  NavControllerOutput: NavControllerOutput,
  OnboardComputerStatus: OnboardComputerStatus,
  OpticalFlowRad: OpticalFlowRad,
  OverrideRCIn: OverrideRCIn,
  Param: Param,
  ParamValue: ParamValue,
  PlayTuneV2: PlayTuneV2,
  PositionTarget: PositionTarget,
  RadioStatus: RadioStatus,
  RCIn: RCIn,
  RCOut: RCOut,
  RTCM: RTCM,
  RTKBaseline: RTKBaseline,
  State: State,
  StatusText: StatusText,
  SysStatus: SysStatus,
  TerrainReport: TerrainReport,
  Thrust: Thrust,
  TimesyncStatus: TimesyncStatus,
  Trajectory: Trajectory,
  Tunnel: Tunnel,
  VehicleInfo: VehicleInfo,
  VFR_HUD: VFR_HUD,
  Vibration: Vibration,
  Waypoint: Waypoint,
  WaypointList: WaypointList,
  WaypointReached: WaypointReached,
  WheelOdomStamped: WheelOdomStamped,
};
