// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.45.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

abstract class IntifaceEngineFlutterBridge {
  Stream<String> runEngine({required EngineOptionsExternal args, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRunEngineConstMeta;

  Future<void> stopEngine({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStopEngineConstMeta;
}

class EngineOptionsExternal {
  final String? sentryApiKey;
  final String? ipcPipeName;
  final String? deviceConfigJson;
  final String? userDeviceConfigJson;
  final String serverName;
  final bool crashReporting;
  final bool websocketUseAllInterfaces;
  final int? websocketPort;
  final int? frontendWebsocketPort;
  final bool frontendInProcessChannel;
  final int maxPingTime;
  final String? logLevel;
  final bool allowRawMessages;
  final bool useBluetoothLe;
  final bool useSerialPort;
  final bool useHid;
  final bool useLovenseDongleSerial;
  final bool useLovenseDongleHid;
  final bool useXinput;
  final bool useLovenseConnect;
  final bool useDeviceWebsocketServer;
  final int? deviceWebsocketServerPort;
  final bool crashMainThread;
  final bool crashTaskThread;

  EngineOptionsExternal({
    this.sentryApiKey,
    this.ipcPipeName,
    this.deviceConfigJson,
    this.userDeviceConfigJson,
    required this.serverName,
    required this.crashReporting,
    required this.websocketUseAllInterfaces,
    this.websocketPort,
    this.frontendWebsocketPort,
    required this.frontendInProcessChannel,
    required this.maxPingTime,
    this.logLevel,
    required this.allowRawMessages,
    required this.useBluetoothLe,
    required this.useSerialPort,
    required this.useHid,
    required this.useLovenseDongleSerial,
    required this.useLovenseDongleHid,
    required this.useXinput,
    required this.useLovenseConnect,
    required this.useDeviceWebsocketServer,
    this.deviceWebsocketServerPort,
    required this.crashMainThread,
    required this.crashTaskThread,
  });
}

class IntifaceEngineFlutterBridgeImpl implements IntifaceEngineFlutterBridge {
  final IntifaceEngineFlutterBridgePlatform _platform;
  factory IntifaceEngineFlutterBridgeImpl(ExternalLibrary dylib) =>
      IntifaceEngineFlutterBridgeImpl.raw(
          IntifaceEngineFlutterBridgePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory IntifaceEngineFlutterBridgeImpl.wasm(FutureOr<WasmModule> module) =>
      IntifaceEngineFlutterBridgeImpl(module as ExternalLibrary);
  IntifaceEngineFlutterBridgeImpl.raw(this._platform);
  Stream<String> runEngine(
          {required EngineOptionsExternal args, dynamic hint}) =>
      _platform.executeStream(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_run_engine(port_,
            _platform.api2wire_box_autoadd_engine_options_external(args)),
        parseSuccessData: _wire2api_String,
        constMeta: kRunEngineConstMeta,
        argValues: [args],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kRunEngineConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "run_engine",
        argNames: ["args"],
      );

  Future<void> stopEngine({dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_stop_engine(port_),
        parseSuccessData: _wire2api_unit,
        constMeta: kStopEngineConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kStopEngineConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "stop_engine",
        argNames: [],
      );
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_u16(int raw) {
  return raw;
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: wire2api

String _wire2api_String(dynamic raw) {
  return raw as String;
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

void _wire2api_unit(dynamic raw) {
  return;
}

class IntifaceEngineFlutterBridgePlatform
    extends FlutterRustBridgeBase<IntifaceEngineFlutterBridgeWire> {
  IntifaceEngineFlutterBridgePlatform(ffi.DynamicLibrary dylib)
      : super(IntifaceEngineFlutterBridgeWire(dylib));
// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_EngineOptionsExternal>
      api2wire_box_autoadd_engine_options_external(EngineOptionsExternal raw) {
    final ptr = inner.new_box_autoadd_engine_options_external_0();
    _api_fill_to_wire_engine_options_external(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Uint16> api2wire_box_autoadd_u16(int raw) {
    return inner.new_box_autoadd_u16_0(api2wire_u16(raw));
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Uint16> api2wire_opt_box_autoadd_u16(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_u16(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_engine_options_external(
      EngineOptionsExternal apiObj,
      ffi.Pointer<wire_EngineOptionsExternal> wireObj) {
    _api_fill_to_wire_engine_options_external(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_engine_options_external(
      EngineOptionsExternal apiObj, wire_EngineOptionsExternal wireObj) {
    wireObj.sentry_api_key = api2wire_opt_String(apiObj.sentryApiKey);
    wireObj.ipc_pipe_name = api2wire_opt_String(apiObj.ipcPipeName);
    wireObj.device_config_json = api2wire_opt_String(apiObj.deviceConfigJson);
    wireObj.user_device_config_json =
        api2wire_opt_String(apiObj.userDeviceConfigJson);
    wireObj.server_name = api2wire_String(apiObj.serverName);
    wireObj.crash_reporting = api2wire_bool(apiObj.crashReporting);
    wireObj.websocket_use_all_interfaces =
        api2wire_bool(apiObj.websocketUseAllInterfaces);
    wireObj.websocket_port = api2wire_opt_box_autoadd_u16(apiObj.websocketPort);
    wireObj.frontend_websocket_port =
        api2wire_opt_box_autoadd_u16(apiObj.frontendWebsocketPort);
    wireObj.frontend_in_process_channel =
        api2wire_bool(apiObj.frontendInProcessChannel);
    wireObj.max_ping_time = api2wire_u32(apiObj.maxPingTime);
    wireObj.log_level = api2wire_opt_String(apiObj.logLevel);
    wireObj.allow_raw_messages = api2wire_bool(apiObj.allowRawMessages);
    wireObj.use_bluetooth_le = api2wire_bool(apiObj.useBluetoothLe);
    wireObj.use_serial_port = api2wire_bool(apiObj.useSerialPort);
    wireObj.use_hid = api2wire_bool(apiObj.useHid);
    wireObj.use_lovense_dongle_serial =
        api2wire_bool(apiObj.useLovenseDongleSerial);
    wireObj.use_lovense_dongle_hid = api2wire_bool(apiObj.useLovenseDongleHid);
    wireObj.use_xinput = api2wire_bool(apiObj.useXinput);
    wireObj.use_lovense_connect = api2wire_bool(apiObj.useLovenseConnect);
    wireObj.use_device_websocket_server =
        api2wire_bool(apiObj.useDeviceWebsocketServer);
    wireObj.device_websocket_server_port =
        api2wire_opt_box_autoadd_u16(apiObj.deviceWebsocketServerPort);
    wireObj.crash_main_thread = api2wire_bool(apiObj.crashMainThread);
    wireObj.crash_task_thread = api2wire_bool(apiObj.crashTaskThread);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class IntifaceEngineFlutterBridgeWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  IntifaceEngineFlutterBridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  IntifaceEngineFlutterBridgeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire_run_engine(
    int port_,
    ffi.Pointer<wire_EngineOptionsExternal> args,
  ) {
    return _wire_run_engine(
      port_,
      args,
    );
  }

  late final _wire_run_enginePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_EngineOptionsExternal>)>>('wire_run_engine');
  late final _wire_run_engine = _wire_run_enginePtr.asFunction<
      void Function(int, ffi.Pointer<wire_EngineOptionsExternal>)>();

  void wire_stop_engine(
    int port_,
  ) {
    return _wire_stop_engine(
      port_,
    );
  }

  late final _wire_stop_enginePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_stop_engine');
  late final _wire_stop_engine =
      _wire_stop_enginePtr.asFunction<void Function(int)>();

  ffi.Pointer<wire_EngineOptionsExternal>
      new_box_autoadd_engine_options_external_0() {
    return _new_box_autoadd_engine_options_external_0();
  }

  late final _new_box_autoadd_engine_options_external_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_EngineOptionsExternal>
              Function()>>('new_box_autoadd_engine_options_external_0');
  late final _new_box_autoadd_engine_options_external_0 =
      _new_box_autoadd_engine_options_external_0Ptr
          .asFunction<ffi.Pointer<wire_EngineOptionsExternal> Function()>();

  ffi.Pointer<ffi.Uint16> new_box_autoadd_u16_0(
    int value,
  ) {
    return _new_box_autoadd_u16_0(
      value,
    );
  }

  late final _new_box_autoadd_u16_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint16> Function(ffi.Uint16)>>(
          'new_box_autoadd_u16_0');
  late final _new_box_autoadd_u16_0 = _new_box_autoadd_u16_0Ptr
      .asFunction<ffi.Pointer<ffi.Uint16> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_EngineOptionsExternal extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> sentry_api_key;

  external ffi.Pointer<wire_uint_8_list> ipc_pipe_name;

  external ffi.Pointer<wire_uint_8_list> device_config_json;

  external ffi.Pointer<wire_uint_8_list> user_device_config_json;

  external ffi.Pointer<wire_uint_8_list> server_name;

  @ffi.Bool()
  external bool crash_reporting;

  @ffi.Bool()
  external bool websocket_use_all_interfaces;

  external ffi.Pointer<ffi.Uint16> websocket_port;

  external ffi.Pointer<ffi.Uint16> frontend_websocket_port;

  @ffi.Bool()
  external bool frontend_in_process_channel;

  @ffi.Uint32()
  external int max_ping_time;

  external ffi.Pointer<wire_uint_8_list> log_level;

  @ffi.Bool()
  external bool allow_raw_messages;

  @ffi.Bool()
  external bool use_bluetooth_le;

  @ffi.Bool()
  external bool use_serial_port;

  @ffi.Bool()
  external bool use_hid;

  @ffi.Bool()
  external bool use_lovense_dongle_serial;

  @ffi.Bool()
  external bool use_lovense_dongle_hid;

  @ffi.Bool()
  external bool use_xinput;

  @ffi.Bool()
  external bool use_lovense_connect;

  @ffi.Bool()
  external bool use_device_websocket_server;

  external ffi.Pointer<ffi.Uint16> device_websocket_server_port;

  @ffi.Bool()
  external bool crash_main_thread;

  @ffi.Bool()
  external bool crash_task_thread;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
