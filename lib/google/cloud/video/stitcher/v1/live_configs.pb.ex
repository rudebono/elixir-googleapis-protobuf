defmodule Google.Cloud.Video.Stitcher.V1.AdTracking do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :AD_TRACKING_UNSPECIFIED, 0
  field :CLIENT, 1
  field :SERVER, 2
end

defmodule Google.Cloud.Video.Stitcher.V1.LiveConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Video.Stitcher.V1.LiveConfig.StitchingPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STITCHING_POLICY_UNSPECIFIED, 0
  field :CUT_CURRENT, 1
  field :COMPLETE_AD, 2
end

defmodule Google.Cloud.Video.Stitcher.V1.LiveConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_uri, 2, type: :string, json_name: "sourceUri", deprecated: false
  field :ad_tag_uri, 3, type: :string, json_name: "adTagUri"

  field :gam_live_config, 4,
    type: Google.Cloud.Video.Stitcher.V1.GamLiveConfig,
    json_name: "gamLiveConfig"

  field :state, 5,
    type: Google.Cloud.Video.Stitcher.V1.LiveConfig.State,
    enum: true,
    deprecated: false

  field :ad_tracking, 6,
    type: Google.Cloud.Video.Stitcher.V1.AdTracking,
    json_name: "adTracking",
    enum: true,
    deprecated: false

  field :default_slate, 7, type: :string, json_name: "defaultSlate", deprecated: false

  field :stitching_policy, 8,
    type: Google.Cloud.Video.Stitcher.V1.LiveConfig.StitchingPolicy,
    json_name: "stitchingPolicy",
    enum: true

  field :prefetch_config, 10,
    type: Google.Cloud.Video.Stitcher.V1.PrefetchConfig,
    json_name: "prefetchConfig"

  field :source_fetch_options, 16,
    type: Google.Cloud.Video.Stitcher.V1.FetchOptions,
    json_name: "sourceFetchOptions"
end

defmodule Google.Cloud.Video.Stitcher.V1.PrefetchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false

  field :initial_ad_request_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "initialAdRequestDuration"
end

defmodule Google.Cloud.Video.Stitcher.V1.GamLiveConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :network_code, 1, type: :string, json_name: "networkCode", deprecated: false
  field :asset_key, 2, type: :string, json_name: "assetKey", deprecated: false
  field :custom_asset_key, 3, type: :string, json_name: "customAssetKey", deprecated: false
end