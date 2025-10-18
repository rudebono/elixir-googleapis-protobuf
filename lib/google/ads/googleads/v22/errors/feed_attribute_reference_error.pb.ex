defmodule Google.Ads.Googleads.V22.Errors.FeedAttributeReferenceErrorEnum.FeedAttributeReferenceError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_REFERENCE_REMOVED_FEED, 2
  field :INVALID_FEED_NAME, 3
  field :INVALID_FEED_ATTRIBUTE_NAME, 4
end

defmodule Google.Ads.Googleads.V22.Errors.FeedAttributeReferenceErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
