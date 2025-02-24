defmodule Google.Cloud.Video.Stitcher.V1.VodConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Video.Stitcher.V1.VodConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_uri, 2, type: :string, json_name: "sourceUri", deprecated: false
  field :ad_tag_uri, 3, type: :string, json_name: "adTagUri", deprecated: false

  field :gam_vod_config, 4,
    type: Google.Cloud.Video.Stitcher.V1.GamVodConfig,
    json_name: "gamVodConfig",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Video.Stitcher.V1.VodConfig.State,
    enum: true,
    deprecated: false

  field :source_fetch_options, 8,
    type: Google.Cloud.Video.Stitcher.V1.FetchOptions,
    json_name: "sourceFetchOptions"
end

defmodule Google.Cloud.Video.Stitcher.V1.GamVodConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network_code, 1, type: :string, json_name: "networkCode", deprecated: false
end
