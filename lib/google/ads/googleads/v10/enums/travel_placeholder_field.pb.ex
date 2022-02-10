defmodule Google.Ads.Googleads.V10.Enums.TravelPlaceholderFieldEnum.TravelPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DESTINATION_ID
          | :ORIGIN_ID
          | :TITLE
          | :DESTINATION_NAME
          | :ORIGIN_NAME
          | :PRICE
          | :FORMATTED_PRICE
          | :SALE_PRICE
          | :FORMATTED_SALE_PRICE
          | :IMAGE_URL
          | :CATEGORY
          | :CONTEXTUAL_KEYWORDS
          | :DESTINATION_ADDRESS
          | :FINAL_URL
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
  field :TITLE, 4
  field :DESTINATION_NAME, 5
  field :ORIGIN_NAME, 6
  field :PRICE, 7
  field :FORMATTED_PRICE, 8
  field :SALE_PRICE, 9
  field :FORMATTED_SALE_PRICE, 10
  field :IMAGE_URL, 11
  field :CATEGORY, 12
  field :CONTEXTUAL_KEYWORDS, 13
  field :DESTINATION_ADDRESS, 14
  field :FINAL_URL, 15
  field :FINAL_MOBILE_URLS, 16
  field :TRACKING_URL, 17
  field :ANDROID_APP_LINK, 18
  field :SIMILAR_DESTINATION_IDS, 19
  field :IOS_APP_LINK, 20
  field :IOS_APP_STORE_ID, 21
end
defmodule Google.Ads.Googleads.V10.Enums.TravelPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
