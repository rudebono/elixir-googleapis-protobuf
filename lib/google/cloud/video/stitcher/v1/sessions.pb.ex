defmodule Google.Cloud.Video.Stitcher.V1.LiveSession.StitchingPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STITCHING_POLICY_UNSPECIFIED | :COMPLETE_AD | :COMPLETE_POD | :CUT_CURRENT

  field :STITCHING_POLICY_UNSPECIFIED, 0
  field :COMPLETE_AD, 1
  field :COMPLETE_POD, 2
  field :CUT_CURRENT, 3
end
defmodule Google.Cloud.Video.Stitcher.V1.ManifestOptions.OrderPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ORDER_POLICY_UNSPECIFIED | :ASCENDING | :DESCENDING

  field :ORDER_POLICY_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end
defmodule Google.Cloud.Video.Stitcher.V1.VodSession.AdTagMacroMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.VodSession do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          interstitials: Google.Cloud.Video.Stitcher.V1.Interstitials.t() | nil,
          play_uri: String.t(),
          source_uri: String.t(),
          ad_tag_uri: String.t(),
          ad_tag_macro_map: %{String.t() => String.t()},
          client_ad_tracking: boolean,
          manifest_options: Google.Cloud.Video.Stitcher.V1.ManifestOptions.t() | nil
        }

  defstruct name: "",
            interstitials: nil,
            play_uri: "",
            source_uri: "",
            ad_tag_uri: "",
            ad_tag_macro_map: %{},
            client_ad_tracking: false,
            manifest_options: nil

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

  field :client_ad_tracking, 8, type: :bool, json_name: "clientAdTracking"

  field :manifest_options, 9,
    type: Google.Cloud.Video.Stitcher.V1.ManifestOptions,
    json_name: "manifestOptions"
end
defmodule Google.Cloud.Video.Stitcher.V1.Interstitials do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_breaks: [Google.Cloud.Video.Stitcher.V1.VodSessionAdBreak.t()],
          session_content: Google.Cloud.Video.Stitcher.V1.VodSessionContent.t() | nil
        }

  defstruct ad_breaks: [],
            session_content: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration: Google.Protobuf.Duration.t() | nil,
          companion_ads: Google.Cloud.Video.Stitcher.V1.CompanionAds.t() | nil,
          activity_events: [Google.Cloud.Video.Stitcher.V1.Event.t()]
        }

  defstruct duration: nil,
            companion_ads: nil,
            activity_events: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct duration: nil

  field :duration, 1, type: Google.Protobuf.Duration
end
defmodule Google.Cloud.Video.Stitcher.V1.VodSessionAdBreak do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_events: [Google.Cloud.Video.Stitcher.V1.ProgressEvent.t()],
          ads: [Google.Cloud.Video.Stitcher.V1.VodSessionAd.t()],
          end_time_offset: Google.Protobuf.Duration.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct progress_events: [],
            ads: [],
            end_time_offset: nil,
            start_time_offset: nil

  field :progress_events, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.ProgressEvent,
    json_name: "progressEvents"

  field :ads, 2, repeated: true, type: Google.Cloud.Video.Stitcher.V1.VodSessionAd
  field :end_time_offset, 3, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :start_time_offset, 4, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end
defmodule Google.Cloud.Video.Stitcher.V1.LiveSession.AdTagMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Video.Stitcher.V1.AdTag.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Video.Stitcher.V1.AdTag
end
defmodule Google.Cloud.Video.Stitcher.V1.LiveSession.AdTagMacrosEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.LiveSession do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          play_uri: String.t(),
          source_uri: String.t(),
          default_ad_tag_id: String.t(),
          ad_tag_map: %{String.t() => Google.Cloud.Video.Stitcher.V1.AdTag.t() | nil},
          ad_tag_macros: %{String.t() => String.t()},
          client_ad_tracking: boolean,
          default_slate_id: String.t(),
          stitching_policy: Google.Cloud.Video.Stitcher.V1.LiveSession.StitchingPolicy.t(),
          manifest_options: Google.Cloud.Video.Stitcher.V1.ManifestOptions.t() | nil
        }

  defstruct name: "",
            play_uri: "",
            source_uri: "",
            default_ad_tag_id: "",
            ad_tag_map: %{},
            ad_tag_macros: %{},
            client_ad_tracking: false,
            default_slate_id: "",
            stitching_policy: :STITCHING_POLICY_UNSPECIFIED,
            manifest_options: nil

  field :name, 1, type: :string, deprecated: false
  field :play_uri, 2, type: :string, json_name: "playUri", deprecated: false
  field :source_uri, 3, type: :string, json_name: "sourceUri"
  field :default_ad_tag_id, 4, type: :string, json_name: "defaultAdTagId"

  field :ad_tag_map, 5,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession.AdTagMapEntry,
    json_name: "adTagMap",
    map: true

  field :ad_tag_macros, 6,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession.AdTagMacrosEntry,
    json_name: "adTagMacros",
    map: true

  field :client_ad_tracking, 7, type: :bool, json_name: "clientAdTracking"
  field :default_slate_id, 8, type: :string, json_name: "defaultSlateId"

  field :stitching_policy, 9,
    type: Google.Cloud.Video.Stitcher.V1.LiveSession.StitchingPolicy,
    json_name: "stitchingPolicy",
    enum: true

  field :manifest_options, 10,
    type: Google.Cloud.Video.Stitcher.V1.ManifestOptions,
    json_name: "manifestOptions"
end
defmodule Google.Cloud.Video.Stitcher.V1.AdTag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.ManifestOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_renditions: [Google.Cloud.Video.Stitcher.V1.RenditionFilter.t()],
          bitrate_order: Google.Cloud.Video.Stitcher.V1.ManifestOptions.OrderPolicy.t()
        }

  defstruct include_renditions: [],
            bitrate_order: :ORDER_POLICY_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bitrate_bps: integer,
          codecs: String.t()
        }

  defstruct bitrate_bps: 0,
            codecs: ""

  field :bitrate_bps, 1, type: :int32, json_name: "bitrateBps"
  field :codecs, 2, type: :string
end
