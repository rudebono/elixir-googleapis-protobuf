defmodule Google.Ads.Searchads360.V0.Common.Segments do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ad_network_type, 3,
    type: Google.Ads.Searchads360.V0.Enums.AdNetworkTypeEnum.AdNetworkType,
    json_name: "adNetworkType",
    enum: true

  field :conversion_action, 146,
    proto3_optional: true,
    type: :string,
    json_name: "conversionAction",
    deprecated: false

  field :conversion_action_category, 53,
    type: Google.Ads.Searchads360.V0.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    json_name: "conversionActionCategory",
    enum: true

  field :conversion_action_name, 114,
    proto3_optional: true,
    type: :string,
    json_name: "conversionActionName"

  field :date, 79, proto3_optional: true, type: :string

  field :day_of_week, 5,
    type: Google.Ads.Searchads360.V0.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true

  field :device, 1, type: Google.Ads.Searchads360.V0.Enums.DeviceEnum.Device, enum: true
  field :keyword, 61, type: Google.Ads.Searchads360.V0.Common.Keyword
  field :month, 90, proto3_optional: true, type: :string
  field :quarter, 128, proto3_optional: true, type: :string
  field :week, 130, proto3_optional: true, type: :string
  field :year, 131, proto3_optional: true, type: :int32

  field :asset_interaction_target, 139,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Common.AssetInteractionTarget,
    json_name: "assetInteractionTarget"
end

defmodule Google.Ads.Searchads360.V0.Common.Keyword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ad_group_criterion, 3,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion"

  field :info, 2, type: Google.Ads.Searchads360.V0.Common.KeywordInfo
end

defmodule Google.Ads.Searchads360.V0.Common.AssetInteractionTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, type: :string
  field :interaction_on_this_asset, 2, type: :bool, json_name: "interactionOnThisAsset"
end