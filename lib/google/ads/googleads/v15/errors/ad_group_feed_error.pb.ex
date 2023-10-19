defmodule Google.Ads.Googleads.V15.Errors.AdGroupFeedErrorEnum.AdGroupFeedError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Ads.Googleads.V15.Errors.AdGroupFeedErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end