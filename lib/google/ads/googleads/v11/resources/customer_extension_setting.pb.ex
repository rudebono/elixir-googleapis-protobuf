defmodule Google.Ads.Googleads.V11.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :extension_type, 2,
    type: Google.Ads.Googleads.V11.Enums.ExtensionTypeEnum.ExtensionType,
    json_name: "extensionType",
    enum: true,
    deprecated: false

  field :extension_feed_items, 5,
    repeated: true,
    type: :string,
    json_name: "extensionFeedItems",
    deprecated: false

  field :device, 4,
    type: Google.Ads.Googleads.V11.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
