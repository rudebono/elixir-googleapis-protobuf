defmodule Google.Ads.Googleads.V4.Errors.AdGroupFeedErrorEnum.AdGroupFeedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE
          | :CANNOT_CREATE_FOR_REMOVED_FEED
          | :ADGROUP_FEED_ALREADY_EXISTS
          | :CANNOT_OPERATE_ON_REMOVED_ADGROUP_FEED
          | :INVALID_PLACEHOLDER_TYPE
          | :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE
          | :NO_EXISTING_LOCATION_CUSTOMER_FEED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 2

  field :CANNOT_CREATE_FOR_REMOVED_FEED, 3

  field :ADGROUP_FEED_ALREADY_EXISTS, 4

  field :CANNOT_OPERATE_ON_REMOVED_ADGROUP_FEED, 5

  field :INVALID_PLACEHOLDER_TYPE, 6

  field :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE, 7

  field :NO_EXISTING_LOCATION_CUSTOMER_FEED, 8
end

defmodule Google.Ads.Googleads.V4.Errors.AdGroupFeedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
