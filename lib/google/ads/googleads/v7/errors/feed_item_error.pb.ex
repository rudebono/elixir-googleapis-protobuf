defmodule Google.Ads.Googleads.V7.Errors.FeedItemErrorEnum.FeedItemError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_CONVERT_ATTRIBUTE_VALUE_FROM_STRING
          | :CANNOT_OPERATE_ON_REMOVED_FEED_ITEM
          | :DATE_TIME_MUST_BE_IN_ACCOUNT_TIME_ZONE
          | :KEY_ATTRIBUTES_NOT_FOUND
          | :INVALID_URL
          | :MISSING_KEY_ATTRIBUTES
          | :KEY_ATTRIBUTES_NOT_UNIQUE
          | :CANNOT_MODIFY_KEY_ATTRIBUTE_VALUE
          | :SIZE_TOO_LARGE_FOR_MULTI_VALUE_ATTRIBUTE

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

defmodule Google.Ads.Googleads.V7.Errors.FeedItemErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
