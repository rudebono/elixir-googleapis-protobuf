defmodule Google.Ads.Googleads.V6.Enums.CustomPlaceholderFieldEnum.CustomPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ID
          | :ID2
          | :ITEM_TITLE
          | :ITEM_SUBTITLE
          | :ITEM_DESCRIPTION
          | :ITEM_ADDRESS
          | :PRICE
          | :FORMATTED_PRICE
          | :SALE_PRICE
          | :FORMATTED_SALE_PRICE
          | :IMAGE_URL
          | :ITEM_CATEGORY
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :CONTEXTUAL_KEYWORDS
          | :ANDROID_APP_LINK
          | :SIMILAR_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ID, 2

  field :ID2, 3

  field :ITEM_TITLE, 4

  field :ITEM_SUBTITLE, 5

  field :ITEM_DESCRIPTION, 6

  field :ITEM_ADDRESS, 7

  field :PRICE, 8

  field :FORMATTED_PRICE, 9

  field :SALE_PRICE, 10

  field :FORMATTED_SALE_PRICE, 11

  field :IMAGE_URL, 12

  field :ITEM_CATEGORY, 13

  field :FINAL_URLS, 14

  field :FINAL_MOBILE_URLS, 15

  field :TRACKING_URL, 16

  field :CONTEXTUAL_KEYWORDS, 17

  field :ANDROID_APP_LINK, 18

  field :SIMILAR_IDS, 19

  field :IOS_APP_LINK, 20

  field :IOS_APP_STORE_ID, 21
end

defmodule Google.Ads.Googleads.V6.Enums.CustomPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
