defmodule Google.Ads.Googleads.V5.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_type: Google.Ads.Googleads.V5.Enums.ExtensionTypeEnum.ExtensionType.t(),
          extension_feed_items: [Google.Protobuf.StringValue.t()],
          device:
            Google.Ads.Googleads.V5.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice.t()
        }

  defstruct [:resource_name, :extension_type, :extension_feed_items, :device]

  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V5.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :extension_feed_items, 3, repeated: true, type: Google.Protobuf.StringValue

  field :device, 4,
    type: Google.Ads.Googleads.V5.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
