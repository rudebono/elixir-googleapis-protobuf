defmodule Google.Cloud.Video.Stitcher.V1.CompanionAds.DisplayRequirement do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DISPLAY_REQUIREMENT_UNSPECIFIED | :ALL | :ANY | :NONE

  field :DISPLAY_REQUIREMENT_UNSPECIFIED, 0
  field :ALL, 1
  field :ANY, 2
  field :NONE, 3
end
defmodule Google.Cloud.Video.Stitcher.V1.CompanionAds do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_requirement: Google.Cloud.Video.Stitcher.V1.CompanionAds.DisplayRequirement.t(),
          companions: [Google.Cloud.Video.Stitcher.V1.Companion.t()]
        }

  defstruct display_requirement: :DISPLAY_REQUIREMENT_UNSPECIFIED,
            companions: []

  field :display_requirement, 1,
    type: Google.Cloud.Video.Stitcher.V1.CompanionAds.DisplayRequirement,
    json_name: "displayRequirement",
    enum: true

  field :companions, 2, repeated: true, type: Google.Cloud.Video.Stitcher.V1.Companion
end
defmodule Google.Cloud.Video.Stitcher.V1.Companion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_resource:
            {:iframe_ad_resource, Google.Cloud.Video.Stitcher.V1.IframeAdResource.t() | nil}
            | {:static_ad_resource, Google.Cloud.Video.Stitcher.V1.StaticAdResource.t() | nil}
            | {:html_ad_resource, Google.Cloud.Video.Stitcher.V1.HtmlAdResource.t() | nil},
          api_framework: String.t(),
          height_px: integer,
          width_px: integer,
          asset_height_px: integer,
          expanded_height_px: integer,
          asset_width_px: integer,
          expanded_width_px: integer,
          ad_slot_id: String.t(),
          events: [Google.Cloud.Video.Stitcher.V1.Event.t()]
        }

  defstruct ad_resource: nil,
            api_framework: "",
            height_px: 0,
            width_px: 0,
            asset_height_px: 0,
            expanded_height_px: 0,
            asset_width_px: 0,
            expanded_width_px: 0,
            ad_slot_id: "",
            events: []

  oneof :ad_resource, 0

  field :iframe_ad_resource, 10,
    type: Google.Cloud.Video.Stitcher.V1.IframeAdResource,
    json_name: "iframeAdResource",
    oneof: 0

  field :static_ad_resource, 11,
    type: Google.Cloud.Video.Stitcher.V1.StaticAdResource,
    json_name: "staticAdResource",
    oneof: 0

  field :html_ad_resource, 12,
    type: Google.Cloud.Video.Stitcher.V1.HtmlAdResource,
    json_name: "htmlAdResource",
    oneof: 0

  field :api_framework, 1, type: :string, json_name: "apiFramework"
  field :height_px, 2, type: :int32, json_name: "heightPx"
  field :width_px, 3, type: :int32, json_name: "widthPx"
  field :asset_height_px, 4, type: :int32, json_name: "assetHeightPx"
  field :expanded_height_px, 5, type: :int32, json_name: "expandedHeightPx"
  field :asset_width_px, 6, type: :int32, json_name: "assetWidthPx"
  field :expanded_width_px, 7, type: :int32, json_name: "expandedWidthPx"
  field :ad_slot_id, 8, type: :string, json_name: "adSlotId"
  field :events, 9, repeated: true, type: Google.Cloud.Video.Stitcher.V1.Event
end
defmodule Google.Cloud.Video.Stitcher.V1.HtmlAdResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          html_source: String.t()
        }

  defstruct html_source: ""

  field :html_source, 1, type: :string, json_name: "htmlSource"
end
defmodule Google.Cloud.Video.Stitcher.V1.IframeAdResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.StaticAdResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          creative_type: String.t()
        }

  defstruct uri: "",
            creative_type: ""

  field :uri, 1, type: :string
  field :creative_type, 2, type: :string, json_name: "creativeType"
end
