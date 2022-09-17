#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_EngineOptionsExternal {
  struct wire_uint_8_list *sentry_api_key;
  struct wire_uint_8_list *ipc_pipe_name;
  struct wire_uint_8_list *device_config_json;
  struct wire_uint_8_list *user_device_config_json;
  struct wire_uint_8_list *server_name;
  bool crash_reporting;
  bool websocket_use_all_interfaces;
  uint16_t *websocket_port;
  uint16_t *frontend_websocket_port;
  bool frontend_in_process_channel;
  uint32_t max_ping_time;
  struct wire_uint_8_list *log_level;
  bool allow_raw_messages;
  bool use_bluetooth_le;
  bool use_serial_port;
  bool use_hid;
  bool use_lovense_dongle_serial;
  bool use_lovense_dongle_hid;
  bool use_xinput;
  bool use_lovense_connect;
  bool use_device_websocket_server;
  uint16_t *device_websocket_server_port;
  bool crash_main_thread;
  bool crash_task_thread;
} wire_EngineOptionsExternal;

typedef struct WireSyncReturnStruct {
  uint8_t *ptr;
  int32_t len;
  bool success;
} WireSyncReturnStruct;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

void wire_run_engine(int64_t port_, struct wire_EngineOptionsExternal *args);

void wire_stop_engine(int64_t port_);

struct wire_EngineOptionsExternal *new_box_autoadd_engine_options_external_0(void);

uint16_t *new_box_autoadd_u16_0(uint16_t value);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturnStruct(struct WireSyncReturnStruct val);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_run_engine);
    dummy_var ^= ((int64_t) (void*) wire_stop_engine);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_engine_options_external_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_u16_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturnStruct);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}