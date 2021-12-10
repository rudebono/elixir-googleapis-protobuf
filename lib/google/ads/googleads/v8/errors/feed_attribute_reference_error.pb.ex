defmodule Google.Ads.Googleads.V8.Errors.FeedAttributeReferenceErrorEnum.FeedAttributeReferenceError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_REFERENCE_REMOVED_FEED
          | :INVALID_FEED_NAME
          | :INVALID_FEED_ATTRIBUTE_NAME

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_REFERENCE_REMOVED_FEED, 2
  field :INVALID_FEED_NAME, 3
  field :INVALID_FEED_ATTRIBUTE_NAME, 4
end
defmodule Google.Ads.Googleads.V8.Errors.FeedAttributeReferenceErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
