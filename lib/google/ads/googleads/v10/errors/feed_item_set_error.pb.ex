defmodule Google.Ads.Googleads.V10.Errors.FeedItemSetErrorEnum.FeedItemSetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FEED_ITEM_SET_REMOVED
          | :CANNOT_CLEAR_DYNAMIC_FILTER
          | :CANNOT_CREATE_DYNAMIC_FILTER
          | :INVALID_FEED_TYPE
          | :DUPLICATE_NAME
          | :WRONG_DYNAMIC_FILTER_FOR_FEED_TYPE
          | :DYNAMIC_FILTER_INVALID_CHAIN_IDS

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
defmodule Google.Ads.Googleads.V10.Errors.FeedItemSetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
