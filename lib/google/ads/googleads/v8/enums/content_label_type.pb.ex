defmodule Google.Ads.Googleads.V8.Enums.ContentLabelTypeEnum.ContentLabelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SEXUALLY_SUGGESTIVE
          | :BELOW_THE_FOLD
          | :PARKED_DOMAIN
          | :JUVENILE
          | :PROFANITY
          | :TRAGEDY
          | :VIDEO
          | :VIDEO_RATING_DV_G
          | :VIDEO_RATING_DV_PG
          | :VIDEO_RATING_DV_T
          | :VIDEO_RATING_DV_MA
          | :VIDEO_NOT_YET_RATED
          | :EMBEDDED_VIDEO
          | :LIVE_STREAMING_VIDEO
          | :SOCIAL_ISSUES

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SEXUALLY_SUGGESTIVE, 2
  field :BELOW_THE_FOLD, 3
  field :PARKED_DOMAIN, 4
  field :JUVENILE, 6
  field :PROFANITY, 7
  field :TRAGEDY, 8
  field :VIDEO, 9
  field :VIDEO_RATING_DV_G, 10
  field :VIDEO_RATING_DV_PG, 11
  field :VIDEO_RATING_DV_T, 12
  field :VIDEO_RATING_DV_MA, 13
  field :VIDEO_NOT_YET_RATED, 14
  field :EMBEDDED_VIDEO, 15
  field :LIVE_STREAMING_VIDEO, 16
  field :SOCIAL_ISSUES, 17
end

defmodule Google.Ads.Googleads.V8.Enums.ContentLabelTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
