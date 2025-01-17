defmodule Google.Devtools.Testing.V1.DeviceSession.SessionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SESSION_STATE_UNSPECIFIED, 0
  field :REQUESTED, 1
  field :PENDING, 2
  field :ACTIVE, 3
  field :EXPIRED, 4
  field :FINISHED, 5
  field :UNAVAILABLE, 6
  field :ERROR, 7
end

defmodule Google.Devtools.Testing.V1.CreateDeviceSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :device_session, 2,
    type: Google.Devtools.Testing.V1.DeviceSession,
    json_name: "deviceSession",
    deprecated: false
end

defmodule Google.Devtools.Testing.V1.ListDeviceSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 4, type: :string, deprecated: false
  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Devtools.Testing.V1.ListDeviceSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :device_sessions, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.DeviceSession,
    json_name: "deviceSessions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Testing.V1.GetDeviceSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Testing.V1.CancelDeviceSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Testing.V1.UpdateDeviceSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :device_session, 1,
    type: Google.Devtools.Testing.V1.DeviceSession,
    json_name: "deviceSession",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Devtools.Testing.V1.DeviceSession.SessionStateEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :session_state, 1,
    type: Google.Devtools.Testing.V1.DeviceSession.SessionState,
    json_name: "sessionState",
    enum: true,
    deprecated: false

  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
  field :state_message, 3, type: :string, json_name: "stateMessage", deprecated: false
end

defmodule Google.Devtools.Testing.V1.DeviceSession do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :expiration, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :state, 3,
    type: Google.Devtools.Testing.V1.DeviceSession.SessionState,
    enum: true,
    deprecated: false

  field :state_histories, 14,
    repeated: true,
    type: Google.Devtools.Testing.V1.DeviceSession.SessionStateEvent,
    json_name: "stateHistories",
    deprecated: false

  field :ttl, 13, type: Google.Protobuf.Duration, oneof: 0, deprecated: false

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    oneof: 0,
    deprecated: false

  field :inactivity_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "inactivityTimeout",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :active_start_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "activeStartTime",
    deprecated: false

  field :android_device, 15,
    type: Google.Devtools.Testing.V1.AndroidDevice,
    json_name: "androidDevice",
    deprecated: false
end

defmodule Google.Devtools.Testing.V1.DirectAccessService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.testing.v1.DirectAccessService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateDeviceSession,
      Google.Devtools.Testing.V1.CreateDeviceSessionRequest,
      Google.Devtools.Testing.V1.DeviceSession

  rpc :ListDeviceSessions,
      Google.Devtools.Testing.V1.ListDeviceSessionsRequest,
      Google.Devtools.Testing.V1.ListDeviceSessionsResponse

  rpc :GetDeviceSession,
      Google.Devtools.Testing.V1.GetDeviceSessionRequest,
      Google.Devtools.Testing.V1.DeviceSession

  rpc :CancelDeviceSession,
      Google.Devtools.Testing.V1.CancelDeviceSessionRequest,
      Google.Protobuf.Empty

  rpc :UpdateDeviceSession,
      Google.Devtools.Testing.V1.UpdateDeviceSessionRequest,
      Google.Devtools.Testing.V1.DeviceSession

  rpc :AdbConnect,
      stream(Google.Devtools.Testing.V1.AdbMessage),
      stream(Google.Devtools.Testing.V1.DeviceMessage)
end

defmodule Google.Devtools.Testing.V1.DirectAccessService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Testing.V1.DirectAccessService.Service
end
