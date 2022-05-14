defmodule Google.Ads.Googleads.V9.Errors.FeedItemErrorEnum.FeedItemError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_CONVERT_ATTRIBUTE_VALUE_FROM_STRING, 2
  field :CANNOT_OPERATE_ON_REMOVED_FEED_ITEM, 3
  field :DATE_TIME_MUST_BE_IN_ACCOUNT_TIME_ZONE, 4
  field :KEY_ATTRIBUTES_NOT_FOUND, 5
  field :INVALID_URL, 6
  field :MISSING_KEY_ATTRIBUTES, 7
  field :KEY_ATTRIBUTES_NOT_UNIQUE, 8
  field :CANNOT_MODIFY_KEY_ATTRIBUTE_VALUE, 9
  field :SIZE_TOO_LARGE_FOR_MULTI_VALUE_ATTRIBUTE, 10
end
defmodule Google.Ads.Googleads.V9.Errors.FeedItemErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
