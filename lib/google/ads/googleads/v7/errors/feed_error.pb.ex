defmodule Google.Ads.Googleads.V7.Errors.FeedErrorEnum.FeedError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ATTRIBUTE_NAMES_NOT_UNIQUE, 2
  field :ATTRIBUTES_DO_NOT_MATCH_EXISTING_ATTRIBUTES, 3
  field :CANNOT_SPECIFY_USER_ORIGIN_FOR_SYSTEM_FEED, 4
  field :CANNOT_SPECIFY_GOOGLE_ORIGIN_FOR_NON_SYSTEM_FEED, 5
  field :CANNOT_SPECIFY_FEED_ATTRIBUTES_FOR_SYSTEM_FEED, 6
  field :CANNOT_UPDATE_FEED_ATTRIBUTES_WITH_ORIGIN_GOOGLE, 7
  field :FEED_REMOVED, 8
  field :INVALID_ORIGIN_VALUE, 9
  field :FEED_ORIGIN_IS_NOT_USER, 10
  field :INVALID_AUTH_TOKEN_FOR_EMAIL, 11
  field :INVALID_EMAIL, 12
  field :DUPLICATE_FEED_NAME, 13
  field :INVALID_FEED_NAME, 14
  field :MISSING_OAUTH_INFO, 15
  field :NEW_ATTRIBUTE_CANNOT_BE_PART_OF_UNIQUE_KEY, 16
  field :TOO_MANY_ATTRIBUTES, 17
  field :INVALID_BUSINESS_ACCOUNT, 18
  field :BUSINESS_ACCOUNT_CANNOT_ACCESS_LOCATION_ACCOUNT, 19
  field :INVALID_AFFILIATE_CHAIN_ID, 20
  field :DUPLICATE_SYSTEM_FEED, 21
  field :GMB_ACCESS_ERROR, 22
  field :CANNOT_HAVE_LOCATION_AND_AFFILIATE_LOCATION_FEEDS, 23
end
defmodule Google.Ads.Googleads.V7.Errors.FeedErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
