defmodule Google.Ads.Googleads.V5.Enums.ReachPlanNetworkEnum.ReachPlanNetwork do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :YOUTUBE
          | :GOOGLE_VIDEO_PARTNERS
          | :YOUTUBE_AND_GOOGLE_VIDEO_PARTNERS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :YOUTUBE, 2

  field :GOOGLE_VIDEO_PARTNERS, 3

  field :YOUTUBE_AND_GOOGLE_VIDEO_PARTNERS, 4
end

defmodule Google.Ads.Googleads.V5.Enums.ReachPlanNetworkEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
