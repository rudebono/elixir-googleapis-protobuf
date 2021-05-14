defmodule Google.Ads.Googleads.V5.Enums.ExternalConversionSourceEnum.ExternalConversionSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :WEBPAGE
          | :ANALYTICS
          | :UPLOAD
          | :AD_CALL_METRICS
          | :WEBSITE_CALL_METRICS
          | :STORE_VISITS
          | :ANDROID_IN_APP
          | :IOS_IN_APP
          | :IOS_FIRST_OPEN
          | :APP_UNSPECIFIED
          | :ANDROID_FIRST_OPEN
          | :UPLOAD_CALLS
          | :FIREBASE
          | :CLICK_TO_CALL
          | :SALESFORCE
          | :STORE_SALES_CRM
          | :STORE_SALES_PAYMENT_NETWORK
          | :GOOGLE_PLAY
          | :THIRD_PARTY_APP_ANALYTICS
          | :GOOGLE_ATTRIBUTION
          | :STORE_SALES_DIRECT_UPLOAD
          | :STORE_SALES

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :WEBPAGE, 2

  field :ANALYTICS, 3

  field :UPLOAD, 4

  field :AD_CALL_METRICS, 5

  field :WEBSITE_CALL_METRICS, 6

  field :STORE_VISITS, 7

  field :ANDROID_IN_APP, 8

  field :IOS_IN_APP, 9

  field :IOS_FIRST_OPEN, 10

  field :APP_UNSPECIFIED, 11

  field :ANDROID_FIRST_OPEN, 12

  field :UPLOAD_CALLS, 13

  field :FIREBASE, 14

  field :CLICK_TO_CALL, 15

  field :SALESFORCE, 16

  field :STORE_SALES_CRM, 17

  field :STORE_SALES_PAYMENT_NETWORK, 18

  field :GOOGLE_PLAY, 19

  field :THIRD_PARTY_APP_ANALYTICS, 20

  field :GOOGLE_ATTRIBUTION, 21

  field :STORE_SALES_DIRECT_UPLOAD, 23

  field :STORE_SALES, 24
end

defmodule Google.Ads.Googleads.V5.Enums.ExternalConversionSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
