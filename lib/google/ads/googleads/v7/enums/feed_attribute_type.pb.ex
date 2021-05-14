defmodule Google.Ads.Googleads.V7.Enums.FeedAttributeTypeEnum.FeedAttributeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INT64
          | :DOUBLE
          | :STRING
          | :BOOLEAN
          | :URL
          | :DATE_TIME
          | :INT64_LIST
          | :DOUBLE_LIST
          | :STRING_LIST
          | :BOOLEAN_LIST
          | :URL_LIST
          | :DATE_TIME_LIST
          | :PRICE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INT64, 2

  field :DOUBLE, 3

  field :STRING, 4

  field :BOOLEAN, 5

  field :URL, 6

  field :DATE_TIME, 7

  field :INT64_LIST, 8

  field :DOUBLE_LIST, 9

  field :STRING_LIST, 10

  field :BOOLEAN_LIST, 11

  field :URL_LIST, 12

  field :DATE_TIME_LIST, 13

  field :PRICE, 14
end

defmodule Google.Ads.Googleads.V7.Enums.FeedAttributeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
