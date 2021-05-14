defmodule Google.Ads.Googleads.V6.Enums.PlaceholderTypeEnum.PlaceholderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SITELINK
          | :CALL
          | :APP
          | :LOCATION
          | :AFFILIATE_LOCATION
          | :CALLOUT
          | :STRUCTURED_SNIPPET
          | :MESSAGE
          | :PRICE
          | :PROMOTION
          | :AD_CUSTOMIZER
          | :DYNAMIC_EDUCATION
          | :DYNAMIC_FLIGHT
          | :DYNAMIC_CUSTOM
          | :DYNAMIC_HOTEL
          | :DYNAMIC_REAL_ESTATE
          | :DYNAMIC_TRAVEL
          | :DYNAMIC_LOCAL
          | :DYNAMIC_JOB
          | :IMAGE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :SITELINK, 2

  field :CALL, 3

  field :APP, 4

  field :LOCATION, 5

  field :AFFILIATE_LOCATION, 6

  field :CALLOUT, 7

  field :STRUCTURED_SNIPPET, 8

  field :MESSAGE, 9

  field :PRICE, 10

  field :PROMOTION, 11

  field :AD_CUSTOMIZER, 12

  field :DYNAMIC_EDUCATION, 13

  field :DYNAMIC_FLIGHT, 14

  field :DYNAMIC_CUSTOM, 15

  field :DYNAMIC_HOTEL, 16

  field :DYNAMIC_REAL_ESTATE, 17

  field :DYNAMIC_TRAVEL, 18

  field :DYNAMIC_LOCAL, 19

  field :DYNAMIC_JOB, 20

  field :IMAGE, 21
end

defmodule Google.Ads.Googleads.V6.Enums.PlaceholderTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
