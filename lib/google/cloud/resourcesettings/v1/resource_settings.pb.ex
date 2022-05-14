defmodule Google.Cloud.Resourcesettings.V1.SettingView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SETTING_VIEW_UNSPECIFIED, 0
  field :SETTING_VIEW_BASIC, 1
  field :SETTING_VIEW_EFFECTIVE_VALUE, 2
  field :SETTING_VIEW_LOCAL_VALUE, 3
end
defmodule Google.Cloud.Resourcesettings.V1.SettingMetadata.DataType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :BOOLEAN, 1
  field :STRING, 2
  field :STRING_SET, 3
  field :ENUM_VALUE, 4
end
defmodule Google.Cloud.Resourcesettings.V1.Setting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :metadata, 7, type: Google.Cloud.Resourcesettings.V1.SettingMetadata, deprecated: false
  field :local_value, 8, type: Google.Cloud.Resourcesettings.V1.Value, json_name: "localValue"

  field :effective_value, 9,
    type: Google.Cloud.Resourcesettings.V1.Value,
    json_name: "effectiveValue",
    deprecated: false

  field :etag, 10, type: :string
end
defmodule Google.Cloud.Resourcesettings.V1.SettingMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string
  field :read_only, 3, type: :bool, json_name: "readOnly"

  field :data_type, 4,
    type: Google.Cloud.Resourcesettings.V1.SettingMetadata.DataType,
    json_name: "dataType",
    enum: true

  field :default_value, 5, type: Google.Cloud.Resourcesettings.V1.Value, json_name: "defaultValue"
end
defmodule Google.Cloud.Resourcesettings.V1.Value.StringSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end
defmodule Google.Cloud.Resourcesettings.V1.Value.EnumValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :value, 1, type: :string
end
defmodule Google.Cloud.Resourcesettings.V1.Value do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :value, 0

  field :boolean_value, 1, type: :bool, json_name: "booleanValue", oneof: 0
  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0

  field :string_set_value, 3,
    type: Google.Cloud.Resourcesettings.V1.Value.StringSet,
    json_name: "stringSetValue",
    oneof: 0

  field :enum_value, 4,
    type: Google.Cloud.Resourcesettings.V1.Value.EnumValue,
    json_name: "enumValue",
    oneof: 0
end
defmodule Google.Cloud.Resourcesettings.V1.ListSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Resourcesettings.V1.SettingView, enum: true
end
defmodule Google.Cloud.Resourcesettings.V1.ListSettingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :settings, 1, repeated: true, type: Google.Cloud.Resourcesettings.V1.Setting
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcesettings.V1.GetSettingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Resourcesettings.V1.SettingView, enum: true
end
defmodule Google.Cloud.Resourcesettings.V1.UpdateSettingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :setting, 1, type: Google.Cloud.Resourcesettings.V1.Setting, deprecated: false
end
defmodule Google.Cloud.Resourcesettings.V1.ResourceSettingsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.resourcesettings.v1.ResourceSettingsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListSettings,
      Google.Cloud.Resourcesettings.V1.ListSettingsRequest,
      Google.Cloud.Resourcesettings.V1.ListSettingsResponse

  rpc :GetSetting,
      Google.Cloud.Resourcesettings.V1.GetSettingRequest,
      Google.Cloud.Resourcesettings.V1.Setting

  rpc :UpdateSetting,
      Google.Cloud.Resourcesettings.V1.UpdateSettingRequest,
      Google.Cloud.Resourcesettings.V1.Setting
end

defmodule Google.Cloud.Resourcesettings.V1.ResourceSettingsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Resourcesettings.V1.ResourceSettingsService.Service
end
