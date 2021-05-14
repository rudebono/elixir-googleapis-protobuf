defmodule Google.Ads.Googleads.V6.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_type: Google.Ads.Googleads.V6.Enums.ExtensionTypeEnum.ExtensionType.t(),
          extension_feed_items: [String.t()],
          device:
            Google.Ads.Googleads.V6.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice.t()
        }

  defstruct [:resource_name, :extension_type, :extension_feed_items, :device]

  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V6.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :extension_feed_items, 5, repeated: true, type: :string

  field :device, 4,
    type: Google.Ads.Googleads.V6.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
