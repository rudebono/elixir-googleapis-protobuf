defmodule Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_type: Google.Ads.Googleads.V4.Enums.ExtensionTypeEnum.ExtensionType.t(),
          ad_group: Google.Protobuf.StringValue.t() | nil,
          extension_feed_items: [Google.Protobuf.StringValue.t()],
          device:
            Google.Ads.Googleads.V4.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice.t()
        }

  defstruct [:resource_name, :extension_type, :ad_group, :extension_feed_items, :device]

  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V4.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :ad_group, 3, type: Google.Protobuf.StringValue
  field :extension_feed_items, 4, repeated: true, type: Google.Protobuf.StringValue

  field :device, 5,
    type: Google.Ads.Googleads.V4.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
