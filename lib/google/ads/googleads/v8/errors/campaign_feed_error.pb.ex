defmodule Google.Ads.Googleads.V8.Errors.CampaignFeedErrorEnum.CampaignFeedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE
          | :CANNOT_CREATE_FOR_REMOVED_FEED
          | :CANNOT_CREATE_ALREADY_EXISTING_CAMPAIGN_FEED
          | :CANNOT_MODIFY_REMOVED_CAMPAIGN_FEED
          | :INVALID_PLACEHOLDER_TYPE
          | :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE
          | :NO_EXISTING_LOCATION_CUSTOMER_FEED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 2

  field :CANNOT_CREATE_FOR_REMOVED_FEED, 4

  field :CANNOT_CREATE_ALREADY_EXISTING_CAMPAIGN_FEED, 5

  field :CANNOT_MODIFY_REMOVED_CAMPAIGN_FEED, 6

  field :INVALID_PLACEHOLDER_TYPE, 7

  field :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE, 8

  field :NO_EXISTING_LOCATION_CUSTOMER_FEED, 9
end

defmodule Google.Ads.Googleads.V8.Errors.CampaignFeedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
