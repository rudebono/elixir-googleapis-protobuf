defmodule Google.Devtools.Testing.V1.DeviceForm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DEVICE_FORM_UNSPECIFIED | :VIRTUAL | :PHYSICAL | :EMULATOR

  field :DEVICE_FORM_UNSPECIFIED, 0
  field :VIRTUAL, 1
  field :PHYSICAL, 2
  field :EMULATOR, 3
end

defmodule Google.Devtools.Testing.V1.DeviceFormFactor do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DEVICE_FORM_FACTOR_UNSPECIFIED | :PHONE | :TABLET | :WEARABLE

  field :DEVICE_FORM_FACTOR_UNSPECIFIED, 0
  field :PHONE, 1
  field :TABLET, 2
  field :WEARABLE, 3
end

defmodule Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest.EnvironmentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENVIRONMENT_TYPE_UNSPECIFIED
          | :ANDROID
          | :IOS
          | :NETWORK_CONFIGURATION
          | :PROVIDED_SOFTWARE
          | :DEVICE_IP_BLOCKS

  field :ENVIRONMENT_TYPE_UNSPECIFIED, 0
  field :ANDROID, 1
  field :IOS, 3
  field :NETWORK_CONFIGURATION, 4
  field :PROVIDED_SOFTWARE, 5
  field :DEVICE_IP_BLOCKS, 6
end

defmodule Google.Devtools.Testing.V1.DeviceIpBlock do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          block: String.t(),
          form: Google.Devtools.Testing.V1.DeviceForm.t(),
          added_date: Google.Type.Date.t() | nil
        }

  defstruct [:block, :form, :added_date]

  field :block, 1, type: :string
  field :form, 2, type: Google.Devtools.Testing.V1.DeviceForm, enum: true
  field :added_date, 3, type: Google.Type.Date, json_name: "addedDate"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment_type:
            Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest.EnvironmentType.t(),
          project_id: String.t()
        }

  defstruct [:environment_type, :project_id]

  field :environment_type, 1,
    type: Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest.EnvironmentType,
    enum: true,
    json_name: "environmentType"

  field :project_id, 2, type: :string, json_name: "projectId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.TestEnvironmentCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment_catalog:
            {:android_device_catalog, Google.Devtools.Testing.V1.AndroidDeviceCatalog.t() | nil}
            | {:ios_device_catalog, Google.Devtools.Testing.V1.IosDeviceCatalog.t() | nil}
            | {:network_configuration_catalog,
               Google.Devtools.Testing.V1.NetworkConfigurationCatalog.t() | nil}
            | {:software_catalog, Google.Devtools.Testing.V1.ProvidedSoftwareCatalog.t() | nil}
            | {:device_ip_block_catalog,
               Google.Devtools.Testing.V1.DeviceIpBlockCatalog.t() | nil}
        }

  defstruct [:environment_catalog]

  oneof :environment_catalog, 0

  field :android_device_catalog, 1,
    type: Google.Devtools.Testing.V1.AndroidDeviceCatalog,
    json_name: "androidDeviceCatalog",
    oneof: 0

  field :ios_device_catalog, 3,
    type: Google.Devtools.Testing.V1.IosDeviceCatalog,
    json_name: "iosDeviceCatalog",
    oneof: 0

  field :network_configuration_catalog, 4,
    type: Google.Devtools.Testing.V1.NetworkConfigurationCatalog,
    json_name: "networkConfigurationCatalog",
    oneof: 0

  field :software_catalog, 5,
    type: Google.Devtools.Testing.V1.ProvidedSoftwareCatalog,
    json_name: "softwareCatalog",
    oneof: 0

  field :device_ip_block_catalog, 6,
    type: Google.Devtools.Testing.V1.DeviceIpBlockCatalog,
    json_name: "deviceIpBlockCatalog",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.DeviceIpBlockCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_blocks: [Google.Devtools.Testing.V1.DeviceIpBlock.t()]
        }

  defstruct [:ip_blocks]

  field :ip_blocks, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.DeviceIpBlock,
    json_name: "ipBlocks"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.AndroidDeviceCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Devtools.Testing.V1.AndroidModel.t()],
          versions: [Google.Devtools.Testing.V1.AndroidVersion.t()],
          runtime_configuration: Google.Devtools.Testing.V1.AndroidRuntimeConfiguration.t() | nil
        }

  defstruct [:models, :versions, :runtime_configuration]

  field :models, 1, repeated: true, type: Google.Devtools.Testing.V1.AndroidModel
  field :versions, 2, repeated: true, type: Google.Devtools.Testing.V1.AndroidVersion

  field :runtime_configuration, 3,
    type: Google.Devtools.Testing.V1.AndroidRuntimeConfiguration,
    json_name: "runtimeConfiguration"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.AndroidRuntimeConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locales: [Google.Devtools.Testing.V1.Locale.t()],
          orientations: [Google.Devtools.Testing.V1.Orientation.t()]
        }

  defstruct [:locales, :orientations]

  field :locales, 1, repeated: true, type: Google.Devtools.Testing.V1.Locale
  field :orientations, 2, repeated: true, type: Google.Devtools.Testing.V1.Orientation

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.AndroidModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          manufacturer: String.t(),
          brand: String.t(),
          codename: String.t(),
          form: Google.Devtools.Testing.V1.DeviceForm.t(),
          form_factor: Google.Devtools.Testing.V1.DeviceFormFactor.t(),
          screen_x: integer,
          screen_y: integer,
          screen_density: integer,
          low_fps_video_recording: boolean,
          supported_version_ids: [String.t()],
          supported_abis: [String.t()],
          tags: [String.t()],
          thumbnail_url: String.t()
        }

  defstruct [
    :id,
    :name,
    :manufacturer,
    :brand,
    :codename,
    :form,
    :form_factor,
    :screen_x,
    :screen_y,
    :screen_density,
    :low_fps_video_recording,
    :supported_version_ids,
    :supported_abis,
    :tags,
    :thumbnail_url
  ]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :manufacturer, 3, type: :string
  field :brand, 9, type: :string
  field :codename, 10, type: :string
  field :form, 4, type: Google.Devtools.Testing.V1.DeviceForm, enum: true

  field :form_factor, 16,
    type: Google.Devtools.Testing.V1.DeviceFormFactor,
    enum: true,
    json_name: "formFactor"

  field :screen_x, 5, type: :int32, json_name: "screenX"
  field :screen_y, 6, type: :int32, json_name: "screenY"
  field :screen_density, 12, type: :int32, json_name: "screenDensity"
  field :low_fps_video_recording, 17, type: :bool, json_name: "lowFpsVideoRecording"
  field :supported_version_ids, 7, repeated: true, type: :string, json_name: "supportedVersionIds"
  field :supported_abis, 11, repeated: true, type: :string, json_name: "supportedAbis"
  field :tags, 8, repeated: true, type: :string
  field :thumbnail_url, 19, type: :string, json_name: "thumbnailUrl"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.AndroidVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          version_string: String.t(),
          api_level: integer,
          code_name: String.t(),
          release_date: Google.Type.Date.t() | nil,
          distribution: Google.Devtools.Testing.V1.Distribution.t() | nil,
          tags: [String.t()]
        }

  defstruct [:id, :version_string, :api_level, :code_name, :release_date, :distribution, :tags]

  field :id, 1, type: :string
  field :version_string, 2, type: :string, json_name: "versionString"
  field :api_level, 3, type: :int32, json_name: "apiLevel"
  field :code_name, 4, type: :string, json_name: "codeName"
  field :release_date, 5, type: Google.Type.Date, json_name: "releaseDate"
  field :distribution, 6, type: Google.Devtools.Testing.V1.Distribution
  field :tags, 7, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.Distribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          measurement_time: Google.Protobuf.Timestamp.t() | nil,
          market_share: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:measurement_time, :market_share]

  field :measurement_time, 1, type: Google.Protobuf.Timestamp, json_name: "measurementTime"
  field :market_share, 2, type: :double, json_name: "marketShare"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.IosDeviceCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Devtools.Testing.V1.IosModel.t()],
          versions: [Google.Devtools.Testing.V1.IosVersion.t()],
          xcode_versions: [Google.Devtools.Testing.V1.XcodeVersion.t()],
          runtime_configuration: Google.Devtools.Testing.V1.IosRuntimeConfiguration.t() | nil
        }

  defstruct [:models, :versions, :xcode_versions, :runtime_configuration]

  field :models, 1, repeated: true, type: Google.Devtools.Testing.V1.IosModel
  field :versions, 2, repeated: true, type: Google.Devtools.Testing.V1.IosVersion

  field :xcode_versions, 4,
    repeated: true,
    type: Google.Devtools.Testing.V1.XcodeVersion,
    json_name: "xcodeVersions"

  field :runtime_configuration, 3,
    type: Google.Devtools.Testing.V1.IosRuntimeConfiguration,
    json_name: "runtimeConfiguration"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.IosRuntimeConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locales: [Google.Devtools.Testing.V1.Locale.t()],
          orientations: [Google.Devtools.Testing.V1.Orientation.t()]
        }

  defstruct [:locales, :orientations]

  field :locales, 1, repeated: true, type: Google.Devtools.Testing.V1.Locale
  field :orientations, 2, repeated: true, type: Google.Devtools.Testing.V1.Orientation

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.IosModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          supported_version_ids: [String.t()],
          tags: [String.t()],
          device_capabilities: [String.t()],
          screen_x: integer,
          screen_y: integer,
          screen_density: integer,
          form_factor: Google.Devtools.Testing.V1.DeviceFormFactor.t()
        }

  defstruct [
    :id,
    :name,
    :supported_version_ids,
    :tags,
    :device_capabilities,
    :screen_x,
    :screen_y,
    :screen_density,
    :form_factor
  ]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :supported_version_ids, 3, repeated: true, type: :string, json_name: "supportedVersionIds"
  field :tags, 4, repeated: true, type: :string
  field :device_capabilities, 5, repeated: true, type: :string, json_name: "deviceCapabilities"
  field :screen_x, 7, type: :int32, json_name: "screenX"
  field :screen_y, 8, type: :int32, json_name: "screenY"
  field :screen_density, 9, type: :int32, json_name: "screenDensity"

  field :form_factor, 6,
    type: Google.Devtools.Testing.V1.DeviceFormFactor,
    enum: true,
    json_name: "formFactor"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.IosVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          major_version: integer,
          minor_version: integer,
          tags: [String.t()],
          supported_xcode_version_ids: [String.t()]
        }

  defstruct [:id, :major_version, :minor_version, :tags, :supported_xcode_version_ids]

  field :id, 1, type: :string
  field :major_version, 2, type: :int32, json_name: "majorVersion"
  field :minor_version, 4, type: :int32, json_name: "minorVersion"
  field :tags, 3, repeated: true, type: :string

  field :supported_xcode_version_ids, 5,
    repeated: true,
    type: :string,
    json_name: "supportedXcodeVersionIds"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.Locale do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          region: String.t(),
          tags: [String.t()]
        }

  defstruct [:id, :name, :region, :tags]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :region, 3, type: :string
  field :tags, 4, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.Orientation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          tags: [String.t()]
        }

  defstruct [:id, :name, :tags]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :tags, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.XcodeVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          tags: [String.t()]
        }

  defstruct [:version, :tags]

  field :version, 1, type: :string
  field :tags, 2, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.NetworkConfigurationCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          configurations: [Google.Devtools.Testing.V1.NetworkConfiguration.t()]
        }

  defstruct [:configurations]

  field :configurations, 1, repeated: true, type: Google.Devtools.Testing.V1.NetworkConfiguration

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.NetworkConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          up_rule: Google.Devtools.Testing.V1.TrafficRule.t() | nil,
          down_rule: Google.Devtools.Testing.V1.TrafficRule.t() | nil
        }

  defstruct [:id, :up_rule, :down_rule]

  field :id, 1, type: :string
  field :up_rule, 2, type: Google.Devtools.Testing.V1.TrafficRule, json_name: "upRule"
  field :down_rule, 3, type: Google.Devtools.Testing.V1.TrafficRule, json_name: "downRule"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.TrafficRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delay: Google.Protobuf.Duration.t() | nil,
          packet_loss_ratio: float | :infinity | :negative_infinity | :nan,
          packet_duplication_ratio: float | :infinity | :negative_infinity | :nan,
          bandwidth: float | :infinity | :negative_infinity | :nan,
          burst: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:delay, :packet_loss_ratio, :packet_duplication_ratio, :bandwidth, :burst]

  field :delay, 1, type: Google.Protobuf.Duration
  field :packet_loss_ratio, 2, type: :float, json_name: "packetLossRatio"
  field :packet_duplication_ratio, 3, type: :float, json_name: "packetDuplicationRatio"
  field :bandwidth, 4, type: :float
  field :burst, 5, type: :float

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.ProvidedSoftwareCatalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          orchestrator_version: String.t(),
          androidx_orchestrator_version: String.t()
        }

  defstruct [:orchestrator_version, :androidx_orchestrator_version]

  field :orchestrator_version, 1, type: :string, json_name: "orchestratorVersion"
  field :androidx_orchestrator_version, 2, type: :string, json_name: "androidxOrchestratorVersion"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Testing.V1.TestEnvironmentDiscoveryService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.testing.v1.TestEnvironmentDiscoveryService"

  rpc :GetTestEnvironmentCatalog,
      Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest,
      Google.Devtools.Testing.V1.TestEnvironmentCatalog
end

defmodule Google.Devtools.Testing.V1.TestEnvironmentDiscoveryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Testing.V1.TestEnvironmentDiscoveryService.Service
end
