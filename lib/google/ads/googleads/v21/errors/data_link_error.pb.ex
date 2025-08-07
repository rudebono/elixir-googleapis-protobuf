defmodule Google.Ads.Googleads.V21.Errors.DataLinkErrorEnum.DataLinkError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :YOUTUBE_CHANNEL_ID_INVALID, 2
  field :YOUTUBE_VIDEO_ID_INVALID, 3
  field :YOUTUBE_VIDEO_FROM_DIFFERENT_CHANNEL, 4
  field :PERMISSION_DENIED, 5
  field :INVALID_STATUS, 6
  field :INVALID_UPDATE_STATUS, 7
  field :INVALID_RESOURCE_NAME, 8
end

defmodule Google.Ads.Googleads.V21.Errors.DataLinkErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
