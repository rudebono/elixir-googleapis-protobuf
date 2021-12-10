defmodule Google.Ads.Googleads.V7.Enums.AssetFieldTypeEnum.AssetFieldType do
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
end
defmodule Google.Ads.Googleads.V7.Enums.AssetFieldTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
