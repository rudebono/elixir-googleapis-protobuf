defmodule Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.SdkType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SDK_TYPE_UNSPECIFIED, 0
  field :CONSUMER, 1
  field :DRIVER, 2
  field :JAVASCRIPT, 3
end

defmodule Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.Platform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PLATFORM_UNSPECIFIED, 0
  field :ANDROID, 1
  field :IOS, 2
  field :WEB, 3
end

defmodule Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false
  field :sdk_version, 3, type: :string, json_name: "sdkVersion"
  field :os_version, 4, type: :string, json_name: "osVersion"
  field :device_model, 5, type: :string, json_name: "deviceModel"

  field :sdk_type, 6,
    type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.SdkType,
    json_name: "sdkType",
    enum: true

  field :maps_sdk_version, 7, type: :string, json_name: "mapsSdkVersion"
  field :nav_sdk_version, 8, type: :string, json_name: "navSdkVersion"

  field :platform, 9,
    type: Maps.Fleetengine.Delivery.V1.DeliveryRequestHeader.Platform,
    enum: true

  field :manufacturer, 10, type: :string
  field :android_api_level, 11, type: :int32, json_name: "androidApiLevel"
  field :trace_id, 12, type: :string, json_name: "traceId"
end