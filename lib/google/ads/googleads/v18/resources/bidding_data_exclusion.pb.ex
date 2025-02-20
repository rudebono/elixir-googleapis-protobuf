defmodule Google.Ads.Googleads.V18.Resources.BiddingDataExclusion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :data_exclusion_id, 2, type: :int64, json_name: "dataExclusionId", deprecated: false

  field :scope, 3,
    type: Google.Ads.Googleads.V18.Enums.SeasonalityEventScopeEnum.SeasonalityEventScope,
    enum: true

  field :status, 4,
    type: Google.Ads.Googleads.V18.Enums.SeasonalityEventStatusEnum.SeasonalityEventStatus,
    enum: true,
    deprecated: false

  field :start_date_time, 5, type: :string, json_name: "startDateTime", deprecated: false
  field :end_date_time, 6, type: :string, json_name: "endDateTime", deprecated: false
  field :name, 7, type: :string
  field :description, 8, type: :string

  field :devices, 9,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.DeviceEnum.Device,
    enum: true

  field :campaigns, 10, repeated: true, type: :string, deprecated: false

  field :advertising_channel_types, 11,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelTypes",
    enum: true
end
