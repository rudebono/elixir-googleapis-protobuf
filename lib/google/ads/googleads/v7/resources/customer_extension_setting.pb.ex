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

  defstruct [:resource_name, :extension_type, :extension_feed_items, :device]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :extension_type, 2,
    type: Google.Ads.Googleads.V7.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true,
    json_name: "extensionType"

  field :extension_feed_items, 5, repeated: true, type: :string, json_name: "extensionFeedItems"

  field :device, 4,
    type: Google.Ads.Googleads.V7.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true

  def transform_module(), do: nil
end
