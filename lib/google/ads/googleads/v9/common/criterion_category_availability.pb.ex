defmodule Google.Ads.Googleads.V9.Common.CriterionCategoryAvailability do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: Google.Ads.Googleads.V9.Common.CriterionCategoryChannelAvailability

  field :locale, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.CriterionCategoryLocaleAvailability
end

defmodule Google.Ads.Googleads.V9.Common.CriterionCategoryChannelAvailability do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V9.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode,
    json_name: "availabilityMode",
    enum: true

  field :advertising_channel_type, 2,
    type: Google.Ads.Googleads.V9.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true

  field :advertising_channel_sub_type, 3,
    repeated: true,
    type: Google.Ads.Googleads.V9.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    json_name: "advertisingChannelSubType",
    enum: true

  field :include_default_channel_sub_type, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "includeDefaultChannelSubType"
end

defmodule Google.Ads.Googleads.V9.Common.CriterionCategoryLocaleAvailability do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V9.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode,
    json_name: "availabilityMode",
    enum: true

  field :country_code, 4, proto3_optional: true, type: :string, json_name: "countryCode"
  field :language_code, 5, proto3_optional: true, type: :string, json_name: "languageCode"
end