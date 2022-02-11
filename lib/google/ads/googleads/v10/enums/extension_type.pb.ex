defmodule Google.Ads.Googleads.V10.Enums.ExtensionTypeEnum.ExtensionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NONE
          | :APP
          | :CALL
          | :CALLOUT
          | :MESSAGE
          | :PRICE
          | :PROMOTION
          | :SITELINK
          | :STRUCTURED_SNIPPET
          | :LOCATION
          | :AFFILIATE_LOCATION
          | :HOTEL_CALLOUT
          | :IMAGE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NONE, 2
  field :APP, 3
  field :CALL, 4
  field :CALLOUT, 5
  field :MESSAGE, 6
  field :PRICE, 7
  field :PROMOTION, 8
  field :SITELINK, 10
  field :STRUCTURED_SNIPPET, 11
  field :LOCATION, 12
  field :AFFILIATE_LOCATION, 13
  field :HOTEL_CALLOUT, 15
  field :IMAGE, 16
end
defmodule Google.Ads.Googleads.V10.Enums.ExtensionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
