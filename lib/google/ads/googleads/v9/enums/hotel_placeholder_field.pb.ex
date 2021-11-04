defmodule Google.Ads.Googleads.V9.Enums.HotelPlaceholderFieldEnum.HotelPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PROPERTY_ID
          | :PROPERTY_NAME
          | :DESTINATION_NAME
          | :DESCRIPTION
          | :ADDRESS
          | :PRICE
          | :FORMATTED_PRICE
          | :SALE_PRICE
          | :FORMATTED_SALE_PRICE
          | :IMAGE_URL
          | :CATEGORY
          | :STAR_RATING
          | :CONTEXTUAL_KEYWORDS
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :ANDROID_APP_LINK
          | :SIMILAR_PROPERTY_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PROPERTY_ID, 2
  field :PROPERTY_NAME, 3
  field :DESTINATION_NAME, 4
  field :DESCRIPTION, 5
  field :ADDRESS, 6
  field :PRICE, 7
  field :FORMATTED_PRICE, 8
  field :SALE_PRICE, 9
  field :FORMATTED_SALE_PRICE, 10
  field :IMAGE_URL, 11
  field :CATEGORY, 12
  field :STAR_RATING, 13
  field :CONTEXTUAL_KEYWORDS, 14
  field :FINAL_URLS, 15
  field :FINAL_MOBILE_URLS, 16
  field :TRACKING_URL, 17
  field :ANDROID_APP_LINK, 18
  field :SIMILAR_PROPERTY_IDS, 19
  field :IOS_APP_LINK, 20
  field :IOS_APP_STORE_ID, 21
end

defmodule Google.Ads.Googleads.V9.Enums.HotelPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
