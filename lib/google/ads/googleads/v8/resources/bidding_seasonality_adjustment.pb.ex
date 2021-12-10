defmodule Google.Ads.Googleads.V8.Resources.BiddingSeasonalityAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          seasonality_adjustment_id: integer,
          scope:
            Google.Ads.Googleads.V8.Enums.SeasonalityEventScopeEnum.SeasonalityEventScope.t(),
          status:
            Google.Ads.Googleads.V8.Enums.SeasonalityEventStatusEnum.SeasonalityEventStatus.t(),
          start_date_time: String.t(),
          end_date_time: String.t(),
          name: String.t(),
          description: String.t(),
          devices: [Google.Ads.Googleads.V8.Enums.DeviceEnum.Device.t()],
          conversion_rate_modifier: float | :infinity | :negative_infinity | :nan,
          campaigns: [String.t()],
          advertising_channel_types: [
            Google.Ads.Googleads.V8.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType.t()
          ]
        }

  defstruct resource_name: "",
            seasonality_adjustment_id: 0,
            scope: :UNSPECIFIED,
            status: :UNSPECIFIED,
            start_date_time: "",
            end_date_time: "",
            name: "",
            description: "",
            devices: [],
            conversion_rate_modifier: 0.0,
            campaigns: [],
            advertising_channel_types: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :seasonality_adjustment_id, 2,
    type: :int64,
    json_name: "seasonalityAdjustmentId",
    deprecated: false

  field :scope, 3,
    type: Google.Ads.Googleads.V8.Enums.SeasonalityEventScopeEnum.SeasonalityEventScope,
    enum: true

  field :status, 4,
    type: Google.Ads.Googleads.V8.Enums.SeasonalityEventStatusEnum.SeasonalityEventStatus,
    enum: true,
    deprecated: false

  field :start_date_time, 5, type: :string, json_name: "startDateTime", deprecated: false
  field :end_date_time, 6, type: :string, json_name: "endDateTime", deprecated: false
  field :name, 7, type: :string
  field :description, 8, type: :string

  field :devices, 9,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device,
    enum: true

  field :conversion_rate_modifier, 10, type: :double, json_name: "conversionRateModifier"
  field :campaigns, 11, repeated: true, type: :string, deprecated: false

  field :advertising_channel_types, 12,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelTypes",
    enum: true
end
