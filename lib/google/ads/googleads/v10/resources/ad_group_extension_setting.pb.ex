defmodule Google.Ads.Googleads.V10.Resources.AdGroupExtensionSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :extension_type, 2,
    type: Google.Ads.Googleads.V10.Enums.ExtensionTypeEnum.ExtensionType,
    json_name: "extensionType",
    enum: true,
    deprecated: false

  field :ad_group, 6,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :extension_feed_items, 7,
    repeated: true,
    type: :string,
    json_name: "extensionFeedItems",
    deprecated: false

  field :device, 5,
    type: Google.Ads.Googleads.V10.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end