defmodule Google.Cloud.Video.Stitcher.V1.ManifestOptions.OrderPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ORDER_POLICY_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Cloud.Video.Stitcher.V1.VodSession.GamSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_code, 1, type: :string, json_name: "networkCode", deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.VodSession.AdTagMacroMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.VodSession do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :interstitials, 2, type: Google.Cloud.Video.Stitcher.V1.Interstitials, deprecated: false
  field :play_uri, 4, type: :string, json_name: "playUri", deprecated: false
  field :source_uri, 5, type: :string, json_name: "sourceUri", deprecated: false
  field :ad_tag_uri, 6, type: :string, json_name: "adTagUri", deprecated: false

  field :ad_tag_macro_map, 7,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodSession.AdTagMacroMapEntry,
    json_name: "adTagMacroMap",
    map: true

  field :manifest_options, 9,
    type: Google.Cloud.Video.Stitcher.V1.ManifestOptions,
    json_name: "manifestOptions"

  field :asset_id, 10, type: :string, json_name: "assetId", deprecated: false

  field :ad_tracking, 11,
    type: Google.Cloud.Video.Stitcher.V1.AdTracking,
    json_name: "adTracking",
    enum: true,
    deprecated: false

  field :gam_settings, 13,
    type: Google.Cloud.Video.Stitcher.V1.VodSession.GamSettings,
    json_name: "gamSettings"
end

defmodule Google.Cloud.Video.Stitcher.V1.Interstitials do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad_breaks, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.VodSessionAdBreak,
    json_name: "adBreaks"

  field :session_content, 2,
    type: Google.Cloud.Video.Stitcher.V1.VodSessionContent,
    json_name: "sessionContent"
end

defmodule Google.Cloud.Video.Stitcher.V1.VodSessionAd do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration

  field :companion_ads, 2,
    type: Google.Cloud.Video.Stitcher.V1.CompanionAds,
    json_name: "companionAds"

  field :activity_events, 3,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.Event,
    json_name: "activityEvents"
end

defmodule Google.Cloud.Video.Stitcher.V1.VodSessionContent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Video.Stitcher.V1.VodSessionAdBreak do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :progress_events, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.ProgressEvent,
    json_name: "progressEvents"

  field :ads, 2, repeated: true, type: Google.Cloud.Video.Stitcher.V1.VodSessionAd
  field :end_time_offset, 3, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :start_time_offset, 4, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end

defmodule Google.Cloud.Video.Stitcher.V1.LiveSession.GamSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.LiveSession.AdTagMacrosEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.LiveSession do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :play_uri, 2, type: :string, json_name: "playUri", deprecated: false

  field :ad_tag_macros, 6,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession.AdTagMacrosEntry,
    json_name: "adTagMacros",
    map: true

  field :manifest_options, 10,
    type: Google.Cloud.Video.Stitcher.V1.ManifestOptions,
    json_name: "manifestOptions"

  field :gam_settings, 15,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession.GamSettings,
    json_name: "gamSettings"

  field :live_config, 16, type: :string, json_name: "liveConfig", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.ManifestOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :include_renditions, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.RenditionFilter,
    json_name: "includeRenditions"

  field :bitrate_order, 2,
    type: Google.Cloud.Video.Stitcher.V1.ManifestOptions.OrderPolicy,
    json_name: "bitrateOrder",
    enum: true
end

defmodule Google.Cloud.Video.Stitcher.V1.RenditionFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bitrate_bps, 1, type: :int32, json_name: "bitrateBps"
  field :codecs, 2, type: :string
end