defmodule Maps.Fleetengine.V1.RequestHeader.SdkType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SDK_TYPE_UNSPECIFIED | :CONSUMER | :DRIVER | :JAVASCRIPT

  field :SDK_TYPE_UNSPECIFIED, 0
  field :CONSUMER, 1
  field :DRIVER, 2
  field :JAVASCRIPT, 3
end
defmodule Maps.Fleetengine.V1.RequestHeader.Platform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PLATFORM_UNSPECIFIED | :ANDROID | :IOS | :WEB

  field :PLATFORM_UNSPECIFIED, 0
  field :ANDROID, 1
  field :IOS, 2
  field :WEB, 3
end
defmodule Maps.Fleetengine.V1.RequestHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          region_code: String.t(),
          sdk_version: String.t(),
          os_version: String.t(),
          device_model: String.t(),
          sdk_type: Maps.Fleetengine.V1.RequestHeader.SdkType.t(),
          maps_sdk_version: String.t(),
          nav_sdk_version: String.t(),
          platform: Maps.Fleetengine.V1.RequestHeader.Platform.t(),
          manufacturer: String.t(),
          android_api_level: integer
        }

  defstruct language_code: "",
            region_code: "",
            sdk_version: "",
            os_version: "",
            device_model: "",
            sdk_type: :SDK_TYPE_UNSPECIFIED,
            maps_sdk_version: "",
            nav_sdk_version: "",
            platform: :PLATFORM_UNSPECIFIED,
            manufacturer: "",
            android_api_level: 0

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false
  field :sdk_version, 3, type: :string, json_name: "sdkVersion"
  field :os_version, 4, type: :string, json_name: "osVersion"
  field :device_model, 5, type: :string, json_name: "deviceModel"

  field :sdk_type, 6,
    type: Maps.Fleetengine.V1.RequestHeader.SdkType,
    json_name: "sdkType",
    enum: true

  field :maps_sdk_version, 7, type: :string, json_name: "mapsSdkVersion"
  field :nav_sdk_version, 8, type: :string, json_name: "navSdkVersion"
  field :platform, 9, type: Maps.Fleetengine.V1.RequestHeader.Platform, enum: true
  field :manufacturer, 10, type: :string
  field :android_api_level, 11, type: :int32, json_name: "androidApiLevel"
end
