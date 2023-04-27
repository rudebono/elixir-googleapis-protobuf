defmodule Google.Devtools.Testing.V1.DeviceForm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEVICE_FORM_UNSPECIFIED, 0
  field :VIRTUAL, 1
  field :PHYSICAL, 2
  field :EMULATOR, 3
end

defmodule Google.Devtools.Testing.V1.DeviceFormFactor do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEVICE_FORM_FACTOR_UNSPECIFIED, 0
  field :PHONE, 1
  field :TABLET, 2
  field :WEARABLE, 3
end

defmodule Google.Devtools.Testing.V1.DeviceCapacity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEVICE_CAPACITY_UNSPECIFIED, 0
  field :DEVICE_CAPACITY_HIGH, 1
  field :DEVICE_CAPACITY_MEDIUM, 2
  field :DEVICE_CAPACITY_LOW, 3
  field :DEVICE_CAPACITY_NONE, 4
end

defmodule Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest.EnvironmentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENVIRONMENT_TYPE_UNSPECIFIED, 0
  field :ANDROID, 1
  field :IOS, 3
  field :NETWORK_CONFIGURATION, 4
  field :PROVIDED_SOFTWARE, 5
  field :DEVICE_IP_BLOCKS, 6
end

defmodule Google.Devtools.Testing.V1.DeviceIpBlock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :block, 1, type: :string
  field :form, 2, type: Google.Devtools.Testing.V1.DeviceForm, enum: true
  field :added_date, 3, type: Google.Type.Date, json_name: "addedDate"
end

defmodule Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment_type, 1,
    type: Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest.EnvironmentType,
    json_name: "environmentType",
    enum: true

  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Devtools.Testing.V1.TestEnvironmentCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Devtools.Testing.V1.DeviceIpBlockCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ip_blocks, 1,
    repeated: true,
    type: Google.Devtools.Testing.V1.DeviceIpBlock,
    json_name: "ipBlocks"
end

defmodule Google.Devtools.Testing.V1.AndroidDeviceCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Devtools.Testing.V1.AndroidModel
  field :versions, 2, repeated: true, type: Google.Devtools.Testing.V1.AndroidVersion

  field :runtime_configuration, 3,
    type: Google.Devtools.Testing.V1.AndroidRuntimeConfiguration,
    json_name: "runtimeConfiguration"
end

defmodule Google.Devtools.Testing.V1.AndroidRuntimeConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :locales, 1, repeated: true, type: Google.Devtools.Testing.V1.Locale
  field :orientations, 2, repeated: true, type: Google.Devtools.Testing.V1.Orientation
end

defmodule Google.Devtools.Testing.V1.AndroidModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :manufacturer, 3, type: :string
  field :brand, 9, type: :string
  field :codename, 10, type: :string
  field :form, 4, type: Google.Devtools.Testing.V1.DeviceForm, enum: true

  field :form_factor, 16,
    type: Google.Devtools.Testing.V1.DeviceFormFactor,
    json_name: "formFactor",
    enum: true

  field :per_version_info, 21,
    repeated: true,
    type: Google.Devtools.Testing.V1.PerAndroidVersionInfo,
    json_name: "perVersionInfo"

  field :screen_x, 5, type: :int32, json_name: "screenX"
  field :screen_y, 6, type: :int32, json_name: "screenY"
  field :screen_density, 12, type: :int32, json_name: "screenDensity"
  field :low_fps_video_recording, 17, type: :bool, json_name: "lowFpsVideoRecording"
  field :supported_version_ids, 7, repeated: true, type: :string, json_name: "supportedVersionIds"
  field :supported_abis, 11, repeated: true, type: :string, json_name: "supportedAbis"
  field :tags, 8, repeated: true, type: :string
  field :thumbnail_url, 19, type: :string, json_name: "thumbnailUrl"
end

defmodule Google.Devtools.Testing.V1.AndroidVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :version_string, 2, type: :string, json_name: "versionString"
  field :api_level, 3, type: :int32, json_name: "apiLevel"
  field :code_name, 4, type: :string, json_name: "codeName"
  field :release_date, 5, type: Google.Type.Date, json_name: "releaseDate"
  field :distribution, 6, type: Google.Devtools.Testing.V1.Distribution
  field :tags, 7, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.PerAndroidVersionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version_id, 1, type: :string, json_name: "versionId"

  field :device_capacity, 2,
    type: Google.Devtools.Testing.V1.DeviceCapacity,
    json_name: "deviceCapacity",
    enum: true
end

defmodule Google.Devtools.Testing.V1.Distribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :measurement_time, 1, type: Google.Protobuf.Timestamp, json_name: "measurementTime"
  field :market_share, 2, type: :double, json_name: "marketShare"
end

defmodule Google.Devtools.Testing.V1.IosDeviceCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Devtools.Testing.V1.IosModel
  field :versions, 2, repeated: true, type: Google.Devtools.Testing.V1.IosVersion

  field :xcode_versions, 4,
    repeated: true,
    type: Google.Devtools.Testing.V1.XcodeVersion,
    json_name: "xcodeVersions"

  field :runtime_configuration, 3,
    type: Google.Devtools.Testing.V1.IosRuntimeConfiguration,
    json_name: "runtimeConfiguration"
end

defmodule Google.Devtools.Testing.V1.IosRuntimeConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :locales, 1, repeated: true, type: Google.Devtools.Testing.V1.Locale
  field :orientations, 2, repeated: true, type: Google.Devtools.Testing.V1.Orientation
end

defmodule Google.Devtools.Testing.V1.IosModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    json_name: "formFactor",
    enum: true

  field :per_version_info, 14,
    repeated: true,
    type: Google.Devtools.Testing.V1.PerIosVersionInfo,
    json_name: "perVersionInfo"
end

defmodule Google.Devtools.Testing.V1.IosVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :major_version, 2, type: :int32, json_name: "majorVersion"
  field :minor_version, 4, type: :int32, json_name: "minorVersion"
  field :tags, 3, repeated: true, type: :string

  field :supported_xcode_version_ids, 5,
    repeated: true,
    type: :string,
    json_name: "supportedXcodeVersionIds"
end

defmodule Google.Devtools.Testing.V1.PerIosVersionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version_id, 1, type: :string, json_name: "versionId"

  field :device_capacity, 2,
    type: Google.Devtools.Testing.V1.DeviceCapacity,
    json_name: "deviceCapacity",
    enum: true
end

defmodule Google.Devtools.Testing.V1.Locale do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :region, 3, type: :string
  field :tags, 4, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.Orientation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :tags, 3, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.XcodeVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string
  field :tags, 2, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.NetworkConfigurationCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :configurations, 1, repeated: true, type: Google.Devtools.Testing.V1.NetworkConfiguration
end

defmodule Google.Devtools.Testing.V1.NetworkConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :up_rule, 2, type: Google.Devtools.Testing.V1.TrafficRule, json_name: "upRule"
  field :down_rule, 3, type: Google.Devtools.Testing.V1.TrafficRule, json_name: "downRule"
end

defmodule Google.Devtools.Testing.V1.TrafficRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :delay, 1, type: Google.Protobuf.Duration
  field :packet_loss_ratio, 2, type: :float, json_name: "packetLossRatio"
  field :packet_duplication_ratio, 3, type: :float, json_name: "packetDuplicationRatio"
  field :bandwidth, 4, type: :float
  field :burst, 5, type: :float
end

defmodule Google.Devtools.Testing.V1.ProvidedSoftwareCatalog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :orchestrator_version, 1,
    type: :string,
    json_name: "orchestratorVersion",
    deprecated: true

  field :androidx_orchestrator_version, 2, type: :string, json_name: "androidxOrchestratorVersion"
end

defmodule Google.Devtools.Testing.V1.TestEnvironmentDiscoveryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.testing.v1.TestEnvironmentDiscoveryService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetTestEnvironmentCatalog,
      Google.Devtools.Testing.V1.GetTestEnvironmentCatalogRequest,
      Google.Devtools.Testing.V1.TestEnvironmentCatalog
end

defmodule Google.Devtools.Testing.V1.TestEnvironmentDiscoveryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Testing.V1.TestEnvironmentDiscoveryService.Service
end