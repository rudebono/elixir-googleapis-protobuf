defmodule Google.Ads.Googleads.V6.Enums.AdDestinationTypeEnum.AdDestinationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NOT_APPLICABLE
          | :WEBSITE
          | :APP_DEEP_LINK
          | :APP_STORE
          | :PHONE_CALL
          | :MAP_DIRECTIONS
          | :LOCATION_LISTING
          | :MESSAGE
          | :LEAD_FORM
          | :YOUTUBE
          | :UNMODELED_FOR_CONVERSIONS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NOT_APPLICABLE, 2

  field :WEBSITE, 3

  field :APP_DEEP_LINK, 4

  field :APP_STORE, 5

  field :PHONE_CALL, 6

  field :MAP_DIRECTIONS, 7

  field :LOCATION_LISTING, 8

  field :MESSAGE, 9

  field :LEAD_FORM, 10

  field :YOUTUBE, 11

  field :UNMODELED_FOR_CONVERSIONS, 12
end

defmodule Google.Ads.Googleads.V6.Enums.AdDestinationTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
