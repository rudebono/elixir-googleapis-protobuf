defmodule Google.Ads.Googleads.V13.Errors.SmartCampaignErrorEnum.SmartCampaignError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_BUSINESS_LOCATION_ID, 2
  field :INVALID_CAMPAIGN, 3
  field :BUSINESS_NAME_OR_BUSINESS_LOCATION_ID_MISSING, 4
  field :REQUIRED_SUGGESTION_FIELD_MISSING, 5
  field :GEO_TARGETS_REQUIRED, 6
  field :CANNOT_DETERMINE_SUGGESTION_LOCALE, 7
  field :FINAL_URL_NOT_CRAWLABLE, 8
end

defmodule Google.Ads.Googleads.V13.Errors.SmartCampaignErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end