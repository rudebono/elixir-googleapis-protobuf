defmodule Google.Ads.Googleads.V4.Enums.ConversionActionTypeEnum.ConversionActionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AD_CALL
          | :CLICK_TO_CALL
          | :GOOGLE_PLAY_DOWNLOAD
          | :GOOGLE_PLAY_IN_APP_PURCHASE
          | :UPLOAD_CALLS
          | :UPLOAD_CLICKS
          | :WEBPAGE
          | :WEBSITE_CALL
          | :STORE_SALES_DIRECT_UPLOAD
          | :STORE_SALES
          | :FIREBASE_ANDROID_FIRST_OPEN
          | :FIREBASE_ANDROID_IN_APP_PURCHASE
          | :FIREBASE_ANDROID_CUSTOM
          | :FIREBASE_IOS_FIRST_OPEN
          | :FIREBASE_IOS_IN_APP_PURCHASE
          | :FIREBASE_IOS_CUSTOM
          | :THIRD_PARTY_APP_ANALYTICS_ANDROID_FIRST_OPEN
          | :THIRD_PARTY_APP_ANALYTICS_ANDROID_IN_APP_PURCHASE
          | :THIRD_PARTY_APP_ANALYTICS_ANDROID_CUSTOM
          | :THIRD_PARTY_APP_ANALYTICS_IOS_FIRST_OPEN
          | :THIRD_PARTY_APP_ANALYTICS_IOS_IN_APP_PURCHASE
          | :THIRD_PARTY_APP_ANALYTICS_IOS_CUSTOM

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AD_CALL, 2

  field :CLICK_TO_CALL, 3

  field :GOOGLE_PLAY_DOWNLOAD, 4

  field :GOOGLE_PLAY_IN_APP_PURCHASE, 5

  field :UPLOAD_CALLS, 6

  field :UPLOAD_CLICKS, 7

  field :WEBPAGE, 8

  field :WEBSITE_CALL, 9

  field :STORE_SALES_DIRECT_UPLOAD, 10

  field :STORE_SALES, 11

  field :FIREBASE_ANDROID_FIRST_OPEN, 12

  field :FIREBASE_ANDROID_IN_APP_PURCHASE, 13

  field :FIREBASE_ANDROID_CUSTOM, 14

  field :FIREBASE_IOS_FIRST_OPEN, 15

  field :FIREBASE_IOS_IN_APP_PURCHASE, 16

  field :FIREBASE_IOS_CUSTOM, 17

  field :THIRD_PARTY_APP_ANALYTICS_ANDROID_FIRST_OPEN, 18

  field :THIRD_PARTY_APP_ANALYTICS_ANDROID_IN_APP_PURCHASE, 19

  field :THIRD_PARTY_APP_ANALYTICS_ANDROID_CUSTOM, 20

  field :THIRD_PARTY_APP_ANALYTICS_IOS_FIRST_OPEN, 21

  field :THIRD_PARTY_APP_ANALYTICS_IOS_IN_APP_PURCHASE, 22

  field :THIRD_PARTY_APP_ANALYTICS_IOS_CUSTOM, 23
end

defmodule Google.Ads.Googleads.V4.Enums.ConversionActionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
