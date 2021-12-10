defmodule Google.Ads.Googleads.V7.Errors.YoutubeVideoRegistrationErrorEnum.YoutubeVideoRegistrationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :VIDEO_NOT_FOUND
          | :VIDEO_NOT_ACCESSIBLE
          | :VIDEO_NOT_ELIGIBLE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :VIDEO_NOT_FOUND, 2
  field :VIDEO_NOT_ACCESSIBLE, 3
  field :VIDEO_NOT_ELIGIBLE, 4
end
defmodule Google.Ads.Googleads.V7.Errors.YoutubeVideoRegistrationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
