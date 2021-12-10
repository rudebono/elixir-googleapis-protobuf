defmodule Google.Ads.Googleads.V7.Enums.FlightPlaceholderFieldEnum.FlightPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DESTINATION_ID
          | :ORIGIN_ID
          | :FLIGHT_DESCRIPTION
          | :ORIGIN_NAME
          | :DESTINATION_NAME
          | :FLIGHT_PRICE
          | :FORMATTED_PRICE
          | :FLIGHT_SALE_PRICE
          | :FORMATTED_SALE_PRICE
          | :IMAGE_URL
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :ANDROID_APP_LINK
          | :SIMILAR_DESTINATION_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DESTINATION_ID, 2
  field :ORIGIN_ID, 3
  field :FLIGHT_DESCRIPTION, 4
  field :ORIGIN_NAME, 5
  field :DESTINATION_NAME, 6
  field :FLIGHT_PRICE, 7
  field :FORMATTED_PRICE, 8
  field :FLIGHT_SALE_PRICE, 9
  field :FORMATTED_SALE_PRICE, 10
  field :IMAGE_URL, 11
  field :FINAL_URLS, 12
  field :FINAL_MOBILE_URLS, 13
  field :TRACKING_URL, 14
  field :ANDROID_APP_LINK, 15
  field :SIMILAR_DESTINATION_IDS, 16
  field :IOS_APP_LINK, 17
  field :IOS_APP_STORE_ID, 18
end
defmodule Google.Ads.Googleads.V7.Enums.FlightPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
