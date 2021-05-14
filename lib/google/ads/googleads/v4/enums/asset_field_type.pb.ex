defmodule Google.Ads.Googleads.V4.Enums.AssetFieldTypeEnum.AssetFieldType do
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

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :HEADLINE, 2

  field :DESCRIPTION, 3

  field :MANDATORY_AD_TEXT, 4

  field :MARKETING_IMAGE, 5

  field :MEDIA_BUNDLE, 6

  field :YOUTUBE_VIDEO, 7
end

defmodule Google.Ads.Googleads.V4.Enums.AssetFieldTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
