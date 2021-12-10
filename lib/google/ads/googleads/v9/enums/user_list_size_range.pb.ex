defmodule Google.Ads.Googleads.V9.Enums.UserListSizeRangeEnum.UserListSizeRange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :LESS_THAN_FIVE_HUNDRED
          | :LESS_THAN_ONE_THOUSAND
          | :ONE_THOUSAND_TO_TEN_THOUSAND
          | :TEN_THOUSAND_TO_FIFTY_THOUSAND
          | :FIFTY_THOUSAND_TO_ONE_HUNDRED_THOUSAND
          | :ONE_HUNDRED_THOUSAND_TO_THREE_HUNDRED_THOUSAND
          | :THREE_HUNDRED_THOUSAND_TO_FIVE_HUNDRED_THOUSAND
          | :FIVE_HUNDRED_THOUSAND_TO_ONE_MILLION
          | :ONE_MILLION_TO_TWO_MILLION
          | :TWO_MILLION_TO_THREE_MILLION
          | :THREE_MILLION_TO_FIVE_MILLION
          | :FIVE_MILLION_TO_TEN_MILLION
          | :TEN_MILLION_TO_TWENTY_MILLION
          | :TWENTY_MILLION_TO_THIRTY_MILLION
          | :THIRTY_MILLION_TO_FIFTY_MILLION
          | :OVER_FIFTY_MILLION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LESS_THAN_FIVE_HUNDRED, 2
  field :LESS_THAN_ONE_THOUSAND, 3
  field :ONE_THOUSAND_TO_TEN_THOUSAND, 4
  field :TEN_THOUSAND_TO_FIFTY_THOUSAND, 5
  field :FIFTY_THOUSAND_TO_ONE_HUNDRED_THOUSAND, 6
  field :ONE_HUNDRED_THOUSAND_TO_THREE_HUNDRED_THOUSAND, 7
  field :THREE_HUNDRED_THOUSAND_TO_FIVE_HUNDRED_THOUSAND, 8
  field :FIVE_HUNDRED_THOUSAND_TO_ONE_MILLION, 9
  field :ONE_MILLION_TO_TWO_MILLION, 10
  field :TWO_MILLION_TO_THREE_MILLION, 11
  field :THREE_MILLION_TO_FIVE_MILLION, 12
  field :FIVE_MILLION_TO_TEN_MILLION, 13
  field :TEN_MILLION_TO_TWENTY_MILLION, 14
  field :TWENTY_MILLION_TO_THIRTY_MILLION, 15
  field :THIRTY_MILLION_TO_FIFTY_MILLION, 16
  field :OVER_FIFTY_MILLION, 17
end
defmodule Google.Ads.Googleads.V9.Enums.UserListSizeRangeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
