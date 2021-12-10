defmodule Google.Ads.Googleads.V7.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_type: Google.Ads.Googleads.V7.Enums.ExtensionTypeEnum.ExtensionType.t(),
          extension_feed_items: [String.t()],
          device:
            Google.Ads.Googleads.V7.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice.t()
        }

  defstruct resource_name: "",
            extension_type: :UNSPECIFIED,
            extension_feed_items: [],
            device: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :extension_type, 2,
    type: Google.Ads.Googleads.V7.Enums.ExtensionTypeEnum.ExtensionType,
    json_name: "extensionType",
    enum: true,
    deprecated: false

  field :extension_feed_items, 5,
    repeated: true,
    type: :string,
    json_name: "extensionFeedItems",
    deprecated: false

  field :device, 4,
    type: Google.Ads.Googleads.V7.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
