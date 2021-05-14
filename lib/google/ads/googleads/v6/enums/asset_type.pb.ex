defmodule Google.Ads.Googleads.V6.Enums.AssetTypeEnum.AssetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :YOUTUBE_VIDEO
          | :MEDIA_BUNDLE
          | :IMAGE
          | :TEXT
          | :LEAD_FORM
          | :BOOK_ON_GOOGLE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :YOUTUBE_VIDEO, 2

  field :MEDIA_BUNDLE, 3

  field :IMAGE, 4

  field :TEXT, 5

  field :LEAD_FORM, 6

  field :BOOK_ON_GOOGLE, 7
end

defmodule Google.Ads.Googleads.V6.Enums.AssetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
