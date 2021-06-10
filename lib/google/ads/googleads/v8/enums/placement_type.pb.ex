defmodule Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :WEBSITE
          | :MOBILE_APP_CATEGORY
          | :MOBILE_APPLICATION
          | :YOUTUBE_VIDEO
          | :YOUTUBE_CHANNEL

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :WEBSITE, 2

  field :MOBILE_APP_CATEGORY, 3

  field :MOBILE_APPLICATION, 4

  field :YOUTUBE_VIDEO, 5

  field :YOUTUBE_CHANNEL, 6
end

defmodule Google.Ads.Googleads.V8.Enums.PlacementTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
