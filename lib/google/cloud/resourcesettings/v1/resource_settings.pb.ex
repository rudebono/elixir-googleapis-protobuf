defmodule Google.Cloud.Resourcesettings.V1.SettingView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SETTING_VIEW_UNSPECIFIED
          | :SETTING_VIEW_BASIC
          | :SETTING_VIEW_EFFECTIVE_VALUE
          | :SETTING_VIEW_LOCAL_VALUE

  field :SETTING_VIEW_UNSPECIFIED, 0

  field :SETTING_VIEW_BASIC, 1

  field :SETTING_VIEW_EFFECTIVE_VALUE, 2

  field :SETTING_VIEW_LOCAL_VALUE, 3
end

defmodule Google.Cloud.Resourcesettings.V1.SettingMetadata.DataType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_TYPE_UNSPECIFIED | :BOOLEAN | :STRING | :STRING_SET | :ENUM_VALUE

  field :DATA_TYPE_UNSPECIFIED, 0

  field :BOOLEAN, 1

  field :STRING, 2

  field :STRING_SET, 3

  field :ENUM_VALUE, 4
end

defmodule Google.Cloud.Resourcesettings.V1.Setting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metadata: Google.Cloud.Resourcesettings.V1.SettingMetadata.t() | nil,
          local_value: Google.Cloud.Resourcesettings.V1.Value.t() | nil,
          effective_value: Google.Cloud.Resourcesettings.V1.Value.t() | nil,
          etag: String.t()
        }

  defstruct [:name, :metadata, :local_value, :effective_value, :etag]

  field :name, 1, type: :string
  field :metadata, 7, type: Google.Cloud.Resourcesettings.V1.SettingMetadata
  field :local_value, 8, type: Google.Cloud.Resourcesettings.V1.Value
  field :effective_value, 9, type: Google.Cloud.Resourcesettings.V1.Value
  field :etag, 10, type: :string
end

defmodule Google.Cloud.Resourcesettings.V1.SettingMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          read_only: boolean,
          data_type: Google.Cloud.Resourcesettings.V1.SettingMetadata.DataType.t(),
          default_value: Google.Cloud.Resourcesettings.V1.Value.t() | nil
        }

  defstruct [:display_name, :description, :read_only, :data_type, :default_value]

  field :display_name, 1, type: :string
  field :description, 2, type: :string
  field :read_only, 3, type: :bool
  field :data_type, 4, type: Google.Cloud.Resourcesettings.V1.SettingMetadata.DataType, enum: true
  field :default_value, 5, type: Google.Cloud.Resourcesettings.V1.Value
end

defmodule Google.Cloud.Resourcesettings.V1.Value.StringSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Resourcesettings.V1.Value.EnumValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct [:value]

  field :value, 1, type: :string
end

defmodule Google.Cloud.Resourcesettings.V1.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :boolean_value, 1, type: :bool, oneof: 0
  field :string_value, 2, type: :string, oneof: 0
  field :string_set_value, 3, type: Google.Cloud.Resourcesettings.V1.Value.StringSet, oneof: 0
  field :enum_value, 4, type: Google.Cloud.Resourcesettings.V1.Value.EnumValue, oneof: 0
end

defmodule Google.Cloud.Resourcesettings.V1.ListSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Resourcesettings.V1.SettingView.t()
        }

  defstruct [:parent, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :view, 4, type: Google.Cloud.Resourcesettings.V1.SettingView, enum: true
end

defmodule Google.Cloud.Resourcesettings.V1.ListSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings: [Google.Cloud.Resourcesettings.V1.Setting.t()],
          next_page_token: String.t()
        }

  defstruct [:settings, :next_page_token]

  field :settings, 1, repeated: true, type: Google.Cloud.Resourcesettings.V1.Setting
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcesettings.V1.GetSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Resourcesettings.V1.SettingView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Resourcesettings.V1.SettingView, enum: true
end

defmodule Google.Cloud.Resourcesettings.V1.UpdateSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          setting: Google.Cloud.Resourcesettings.V1.Setting.t() | nil
        }

  defstruct [:setting]

  field :setting, 1, type: Google.Cloud.Resourcesettings.V1.Setting
end

defmodule Google.Cloud.Resourcesettings.V1.ResourceSettingsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.resourcesettings.v1.ResourceSettingsService"

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
