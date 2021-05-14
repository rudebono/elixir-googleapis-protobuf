defmodule Google.Ads.Googleads.V7.Enums.ConversionLagBucketEnum.ConversionLagBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :LESS_THAN_ONE_DAY
          | :ONE_TO_TWO_DAYS
          | :TWO_TO_THREE_DAYS
          | :THREE_TO_FOUR_DAYS
          | :FOUR_TO_FIVE_DAYS
          | :FIVE_TO_SIX_DAYS
          | :SIX_TO_SEVEN_DAYS
          | :SEVEN_TO_EIGHT_DAYS
          | :EIGHT_TO_NINE_DAYS
          | :NINE_TO_TEN_DAYS
          | :TEN_TO_ELEVEN_DAYS
          | :ELEVEN_TO_TWELVE_DAYS
          | :TWELVE_TO_THIRTEEN_DAYS
          | :THIRTEEN_TO_FOURTEEN_DAYS
          | :FOURTEEN_TO_TWENTY_ONE_DAYS
          | :TWENTY_ONE_TO_THIRTY_DAYS
          | :THIRTY_TO_FORTY_FIVE_DAYS
          | :FORTY_FIVE_TO_SIXTY_DAYS
          | :SIXTY_TO_NINETY_DAYS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :LESS_THAN_ONE_DAY, 2

  field :ONE_TO_TWO_DAYS, 3

  field :TWO_TO_THREE_DAYS, 4

  field :THREE_TO_FOUR_DAYS, 5

  field :FOUR_TO_FIVE_DAYS, 6

  field :FIVE_TO_SIX_DAYS, 7

  field :SIX_TO_SEVEN_DAYS, 8

  field :SEVEN_TO_EIGHT_DAYS, 9

  field :EIGHT_TO_NINE_DAYS, 10

  field :NINE_TO_TEN_DAYS, 11

  field :TEN_TO_ELEVEN_DAYS, 12

  field :ELEVEN_TO_TWELVE_DAYS, 13

  field :TWELVE_TO_THIRTEEN_DAYS, 14

  field :THIRTEEN_TO_FOURTEEN_DAYS, 15

  field :FOURTEEN_TO_TWENTY_ONE_DAYS, 16

  field :TWENTY_ONE_TO_THIRTY_DAYS, 17

  field :THIRTY_TO_FORTY_FIVE_DAYS, 18

  field :FORTY_FIVE_TO_SIXTY_DAYS, 19

  field :SIXTY_TO_NINETY_DAYS, 20
end

defmodule Google.Ads.Googleads.V7.Enums.ConversionLagBucketEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
