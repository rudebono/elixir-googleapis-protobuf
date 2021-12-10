defmodule Google.Ads.Googleads.V9.Resources.BiddingDataExclusion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          data_exclusion_id: integer,
          scope:
            Google.Ads.Googleads.V9.Enums.SeasonalityEventScopeEnum.SeasonalityEventScope.t(),
          status:
            Google.Ads.Googleads.V9.Enums.SeasonalityEventStatusEnum.SeasonalityEventStatus.t(),
          start_date_time: String.t(),
          end_date_time: String.t(),
          name: String.t(),
          description: String.t(),
          devices: [Google.Ads.Googleads.V9.Enums.DeviceEnum.Device.t()],
          campaigns: [String.t()],
          advertising_channel_types: [
            Google.Ads.Googleads.V9.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType.t()
          ]
        }

  defstruct resource_name: "",
            data_exclusion_id: 0,
            scope: :UNSPECIFIED,
            status: :UNSPECIFIED,
            start_date_time: "",
            end_date_time: "",
            name: "",
            description: "",
            devices: [],
            campaigns: [],
            advertising_channel_types: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :data_exclusion_id, 2, type: :int64, json_name: "dataExclusionId", deprecated: false

  field :scope, 3,
    type: Google.Ads.Googleads.V9.Enums.SeasonalityEventScopeEnum.SeasonalityEventScope,
    enum: true

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.SeasonalityEventStatusEnum.SeasonalityEventStatus,
    enum: true,
    deprecated: false

  field :start_date_time, 5, type: :string, json_name: "startDateTime", deprecated: false
  field :end_date_time, 6, type: :string, json_name: "endDateTime", deprecated: false
  field :name, 7, type: :string
  field :description, 8, type: :string

  field :devices, 9,
    repeated: true,
    type: Google.Ads.Googleads.V9.Enums.DeviceEnum.Device,
    enum: true

  field :campaigns, 10, repeated: true, type: :string, deprecated: false

  field :advertising_channel_types, 11,
    repeated: true,
    type: Google.Ads.Googleads.V9.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelTypes",
    enum: true
end
