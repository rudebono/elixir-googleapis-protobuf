defmodule Google.Cloud.Networkservices.V1.WasmPluginView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WASM_PLUGIN_VIEW_UNSPECIFIED, 0
  field :WASM_PLUGIN_VIEW_BASIC, 1
  field :WASM_PLUGIN_VIEW_FULL, 2
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.LogConfig.LogLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOG_LEVEL_UNSPECIFIED, 0
  field :TRACE, 1
  field :DEBUG, 2
  field :INFO, 3
  field :WARN, 4
  field :ERROR, 5
  field :CRITICAL, 6
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.VersionDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.VersionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :plugin_config_source, 0

  field :plugin_config_data, 9, type: :bytes, json_name: "pluginConfigData", oneof: 0
  field :plugin_config_uri, 10, type: :string, json_name: "pluginConfigUri", oneof: 0

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 3, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPlugin.VersionDetails.LabelsEntry,
    map: true,
    deprecated: false

  field :image_uri, 5, type: :string, json_name: "imageUri", deprecated: false
  field :image_digest, 6, type: :string, json_name: "imageDigest", deprecated: false

  field :plugin_config_digest, 11,
    type: :string,
    json_name: "pluginConfigDigest",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.LogConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable, 1, type: :bool, deprecated: false
  field :sample_rate, 2, type: :float, json_name: "sampleRate", deprecated: false

  field :min_log_level, 3,
    type: Google.Cloud.Networkservices.V1.WasmPlugin.LogConfig.LogLevel,
    json_name: "minLogLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.UsedBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin.VersionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Networkservices.V1.WasmPlugin.VersionDetails
end

defmodule Google.Cloud.Networkservices.V1.WasmPlugin do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPlugin.LabelsEntry,
    map: true,
    deprecated: false

  field :main_version_id, 6, type: :string, json_name: "mainVersionId", deprecated: false

  field :log_config, 9,
    type: Google.Cloud.Networkservices.V1.WasmPlugin.LogConfig,
    json_name: "logConfig",
    deprecated: false

  field :versions, 10,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPlugin.VersionsEntry,
    map: true,
    deprecated: false

  field :used_by, 11,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPlugin.UsedBy,
    json_name: "usedBy",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.WasmPluginVersion.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.WasmPluginVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :plugin_config_source, 0

  field :plugin_config_data, 12, type: :bytes, json_name: "pluginConfigData", oneof: 0
  field :plugin_config_uri, 13, type: :string, json_name: "pluginConfigUri", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPluginVersion.LabelsEntry,
    map: true,
    deprecated: false

  field :image_uri, 8, type: :string, json_name: "imageUri", deprecated: false
  field :image_digest, 9, type: :string, json_name: "imageDigest", deprecated: false

  field :plugin_config_digest, 14,
    type: :string,
    json_name: "pluginConfigDigest",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListWasmPluginsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListWasmPluginsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :wasm_plugins, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPlugin,
    json_name: "wasmPlugins"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetWasmPluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Networkservices.V1.WasmPluginView, enum: true
end

defmodule Google.Cloud.Networkservices.V1.CreateWasmPluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :wasm_plugin_id, 2, type: :string, json_name: "wasmPluginId", deprecated: false

  field :wasm_plugin, 3,
    type: Google.Cloud.Networkservices.V1.WasmPlugin,
    json_name: "wasmPlugin",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateWasmPluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :wasm_plugin, 2,
    type: Google.Cloud.Networkservices.V1.WasmPlugin,
    json_name: "wasmPlugin",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteWasmPluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListWasmPluginVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListWasmPluginVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :wasm_plugin_versions, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.WasmPluginVersion,
    json_name: "wasmPluginVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetWasmPluginVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateWasmPluginVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :wasm_plugin_version_id, 2,
    type: :string,
    json_name: "wasmPluginVersionId",
    deprecated: false

  field :wasm_plugin_version, 3,
    type: Google.Cloud.Networkservices.V1.WasmPluginVersion,
    json_name: "wasmPluginVersion",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteWasmPluginVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
