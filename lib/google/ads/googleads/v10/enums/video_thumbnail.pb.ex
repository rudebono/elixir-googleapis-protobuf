defmodule Google.Ads.Googleads.V10.Enums.VideoThumbnailEnum.VideoThumbnail do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DEFAULT_THUMBNAIL
          | :THUMBNAIL_1
          | :THUMBNAIL_2
          | :THUMBNAIL_3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DEFAULT_THUMBNAIL, 2
  field :THUMBNAIL_1, 3
  field :THUMBNAIL_2, 4
  field :THUMBNAIL_3, 5
end
defmodule Google.Ads.Googleads.V10.Enums.VideoThumbnailEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
