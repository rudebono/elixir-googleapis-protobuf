defmodule Google.Ads.Googleads.V20.Errors.CampaignFeedErrorEnum.CampaignFeedError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 2
  field :CANNOT_CREATE_FOR_REMOVED_FEED, 4
  field :CANNOT_CREATE_ALREADY_EXISTING_CAMPAIGN_FEED, 5
  field :CANNOT_MODIFY_REMOVED_CAMPAIGN_FEED, 6
  field :INVALID_PLACEHOLDER_TYPE, 7
  field :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE, 8
  field :NO_EXISTING_LOCATION_CUSTOMER_FEED, 9
  field :LEGACY_FEED_TYPE_READ_ONLY, 10
end

defmodule Google.Ads.Googleads.V20.Errors.CampaignFeedErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
