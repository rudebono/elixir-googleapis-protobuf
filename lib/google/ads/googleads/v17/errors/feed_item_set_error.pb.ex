defmodule Google.Ads.Googleads.V17.Errors.FeedItemSetErrorEnum.FeedItemSetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FEED_ITEM_SET_REMOVED, 2
  field :CANNOT_CLEAR_DYNAMIC_FILTER, 3
  field :CANNOT_CREATE_DYNAMIC_FILTER, 4
  field :INVALID_FEED_TYPE, 5
  field :DUPLICATE_NAME, 6
  field :WRONG_DYNAMIC_FILTER_FOR_FEED_TYPE, 7
  field :DYNAMIC_FILTER_INVALID_CHAIN_IDS, 8
end

defmodule Google.Ads.Googleads.V17.Errors.FeedItemSetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end