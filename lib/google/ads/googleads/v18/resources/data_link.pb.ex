defmodule Google.Ads.Googleads.V18.Resources.DataLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data_link_entity, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :product_link_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "productLinkId",
    deprecated: false

  field :data_link_id, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "dataLinkId",
    deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V18.Enums.DataLinkTypeEnum.DataLinkType,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V18.Enums.DataLinkStatusEnum.DataLinkStatus,
    enum: true,
    deprecated: false

  field :youtube_video, 6,
    type: Google.Ads.Googleads.V18.Resources.YoutubeVideoIdentifier,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.YoutubeVideoIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "channelId",
    deprecated: false

  field :video_id, 2,
    proto3_optional: true,
    type: :string,
    json_name: "videoId",
    deprecated: false
end
