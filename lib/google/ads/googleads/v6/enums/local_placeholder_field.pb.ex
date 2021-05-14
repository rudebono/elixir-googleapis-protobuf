defmodule Google.Ads.Googleads.V6.Enums.LocalPlaceholderFieldEnum.LocalPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DEAL_ID
          | :DEAL_NAME
          | :SUBTITLE
          | :DESCRIPTION
          | :PRICE
          | :FORMATTED_PRICE
          | :SALE_PRICE
          | :FORMATTED_SALE_PRICE
          | :IMAGE_URL
          | :ADDRESS
          | :CATEGORY
          | :CONTEXTUAL_KEYWORDS
          | :FINAL_URLS
          | :FINAL_MOBILE_URLS
          | :TRACKING_URL
          | :ANDROID_APP_LINK
          | :SIMILAR_DEAL_IDS
          | :IOS_APP_LINK
          | :IOS_APP_STORE_ID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DEAL_ID, 2

  field :DEAL_NAME, 3

  field :SUBTITLE, 4

  field :DESCRIPTION, 5

  field :PRICE, 6

  field :FORMATTED_PRICE, 7

  field :SALE_PRICE, 8

  field :FORMATTED_SALE_PRICE, 9

  field :IMAGE_URL, 10

  field :ADDRESS, 11

  field :CATEGORY, 12

  field :CONTEXTUAL_KEYWORDS, 13

  field :FINAL_URLS, 14

  field :FINAL_MOBILE_URLS, 15

  field :TRACKING_URL, 16

  field :ANDROID_APP_LINK, 17

  field :SIMILAR_DEAL_IDS, 18

  field :IOS_APP_LINK, 19

  field :IOS_APP_STORE_ID, 20
end

defmodule Google.Ads.Googleads.V6.Enums.LocalPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
