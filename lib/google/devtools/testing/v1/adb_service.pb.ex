defmodule Google.Devtools.Testing.V1.StatusUpdate.DeviceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEVICE_STATE_UNSPECIFIED, 0
  field :DEVICE, 1
  field :RECOVERY, 2
  field :RESCUE, 3
  field :SIDELOAD, 4
  field :MISSING, 10
  field :OFFLINE, 11
  field :UNAUTHORIZED, 12
  field :AUTHORIZING, 13
  field :CONNECTING, 14
end

defmodule Google.Devtools.Testing.V1.DeviceMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :contents, 0

  field :status_update, 1,
    type: Google.Devtools.Testing.V1.StatusUpdate,
    json_name: "statusUpdate",
    oneof: 0

  field :stream_status, 2,
    type: Google.Devtools.Testing.V1.StreamStatus,
    json_name: "streamStatus",
    oneof: 0

  field :stream_data, 3,
    type: Google.Devtools.Testing.V1.StreamData,
    json_name: "streamData",
    oneof: 0
end

defmodule Google.Devtools.Testing.V1.AdbMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :contents, 0

  field :open, 1, type: Google.Devtools.Testing.V1.Open, oneof: 0

  field :stream_data, 2,
    type: Google.Devtools.Testing.V1.StreamData,
    json_name: "streamData",
    oneof: 0
end

defmodule Google.Devtools.Testing.V1.StatusUpdate.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.StatusUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Devtools.Testing.V1.StatusUpdate.DeviceState, enum: true

  field :properties, 2,
    repeated: true,
    type: Google.Devtools.Testing.V1.StatusUpdate.PropertiesEntry,
    map: true

  field :features, 3, type: :string
end

defmodule Google.Devtools.Testing.V1.StreamStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :status, 0

  field :stream_id, 1, type: :int32, json_name: "streamId"
  field :okay, 2, type: Google.Devtools.Testing.V1.Okay, oneof: 0
  field :fail, 3, type: Google.Devtools.Testing.V1.Fail, oneof: 0
end

defmodule Google.Devtools.Testing.V1.Open do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stream_id, 1, type: :int32, json_name: "streamId"
  field :service, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.StreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :contents, 0

  field :stream_id, 1, type: :int32, json_name: "streamId"
  field :data, 2, type: :bytes, oneof: 0
  field :close, 3, type: Google.Devtools.Testing.V1.Close, oneof: 0
end

defmodule Google.Devtools.Testing.V1.Okay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Devtools.Testing.V1.Fail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string
end

defmodule Google.Devtools.Testing.V1.Close do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
