defmodule Google.Ads.Googleads.V10.Errors.FeedItemSetLinkErrorEnum.FeedItemSetLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FEED_ID_MISMATCH
          | :NO_MUTATE_ALLOWED_FOR_DYNAMIC_SET

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FEED_ID_MISMATCH, 2
  field :NO_MUTATE_ALLOWED_FOR_DYNAMIC_SET, 3
end
defmodule Google.Ads.Googleads.V10.Errors.FeedItemSetLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
