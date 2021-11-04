defmodule Google.Ads.Googleads.V8.Errors.CustomerFeedErrorEnum.CustomerFeedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE
          | :CANNOT_CREATE_FOR_REMOVED_FEED
          | :CANNOT_CREATE_ALREADY_EXISTING_CUSTOMER_FEED
          | :CANNOT_MODIFY_REMOVED_CUSTOMER_FEED
          | :INVALID_PLACEHOLDER_TYPE
          | :MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE
          | :PLACEHOLDER_TYPE_NOT_ALLOWED_ON_CUSTOMER_FEED

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

defmodule Google.Ads.Googleads.V8.Errors.CustomerFeedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
