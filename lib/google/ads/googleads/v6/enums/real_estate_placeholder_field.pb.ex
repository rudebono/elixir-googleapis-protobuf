defmodule Google.Ads.Googleads.V6.Enums.RealEstatePlaceholderFieldEnum.RealEstatePlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :LISTING_ID
          | :LISTING_NAME
          | :CITY_NAME
          | :DESCRIPTION
          | :ADDRESS
          | :PRICE
          | :FORMATTED_PRICE
          | :IMAGE_URL
          | :PROPERTY_TYPE
          | :LISTING_TYPE
          | :CONTEXTUAL_KEYWORDS
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :ANDROID_APP_LINK
          | :SIMILAR_LISTING_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :LISTING_ID, 2

  field :LISTING_NAME, 3

  field :CITY_NAME, 4

  field :DESCRIPTION, 5

  field :ADDRESS, 6

  field :PRICE, 7

  field :FORMATTED_PRICE, 8

  field :IMAGE_URL, 9

  field :PROPERTY_TYPE, 10

  field :LISTING_TYPE, 11

  field :CONTEXTUAL_KEYWORDS, 12

  field :FINAL_URLS, 13

  field :FINAL_MOBILE_URLS, 14

  field :TRACKING_URL, 15

  field :ANDROID_APP_LINK, 16

  field :SIMILAR_LISTING_IDS, 17

  field :IOS_APP_LINK, 18

  field :IOS_APP_STORE_ID, 19
end

defmodule Google.Ads.Googleads.V6.Enums.RealEstatePlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
