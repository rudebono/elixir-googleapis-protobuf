defmodule Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :HEADLINE
          | :DESCRIPTION
          | :MANDATORY_AD_TEXT
          | :MARKETING_IMAGE
          | :MEDIA_BUNDLE
          | :YOUTUBE_VIDEO
          | :BOOK_ON_GOOGLE
          | :LEAD_FORM
          | :PROMOTION
          | :CALLOUT
          | :STRUCTURED_SNIPPET
          | :SITELINK
          | :MOBILE_APP
          | :HOTEL_CALLOUT
          | :CALL
          | :PRICE
          | :LONG_HEADLINE
          | :BUSINESS_NAME
          | :SQUARE_MARKETING_IMAGE
          | :PORTRAIT_MARKETING_IMAGE
          | :LOGO
          | :LANDSCAPE_LOGO
          | :VIDEO
          | :CALL_TO_ACTION_SELECTION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HEADLINE, 2
  field :DESCRIPTION, 3
  field :MANDATORY_AD_TEXT, 4
  field :MARKETING_IMAGE, 5
  field :MEDIA_BUNDLE, 6
  field :YOUTUBE_VIDEO, 7
  field :BOOK_ON_GOOGLE, 8
  field :LEAD_FORM, 9
  field :PROMOTION, 10
  field :CALLOUT, 11
  field :STRUCTURED_SNIPPET, 12
  field :SITELINK, 13
  field :MOBILE_APP, 14
  field :HOTEL_CALLOUT, 15
  field :CALL, 16
  field :PRICE, 24
  field :LONG_HEADLINE, 17
  field :BUSINESS_NAME, 18
  field :SQUARE_MARKETING_IMAGE, 19
  field :PORTRAIT_MARKETING_IMAGE, 20
  field :LOGO, 21
  field :LANDSCAPE_LOGO, 22
  field :VIDEO, 23
  field :CALL_TO_ACTION_SELECTION, 25
end
defmodule Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
