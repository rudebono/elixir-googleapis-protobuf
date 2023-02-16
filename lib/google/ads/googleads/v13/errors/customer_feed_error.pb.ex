defmodule Google.Ads.Googleads.V13.Errors.CustomerFeedErrorEnum.CustomerFeedError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 2
  field :CANNOT_CREATE_FOR_REMOVED_FEED, 3
  field :CANNOT_CREATE_ALREADY_EXISTING_CUSTOMER_FEED, 4
  field :CANNOT_MODIFY_REMOVED_CUSTOMER_FEED, 5
  field :INVALID_PLACEHOLDER_TYPE, 6
  field :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE, 7
  field :PLACEHOLDER_TYPE_NOT_ALLOWED_ON_CUSTOMER_FEED, 8
end

defmodule Google.Ads.Googleads.V13.Errors.CustomerFeedErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end