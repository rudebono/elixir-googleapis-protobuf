defmodule Google.Cloud.Video.Stitcher.V1.VodStitchDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ad_stitch_details: [Google.Cloud.Video.Stitcher.V1.AdStitchDetail.t()]
        }

  defstruct name: "",
            ad_stitch_details: []

  field :name, 1, type: :string

  field :ad_stitch_details, 3,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.AdStitchDetail,
    json_name: "adStitchDetails"
end
defmodule Google.Cloud.Video.Stitcher.V1.AdStitchDetail.MediaEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Video.Stitcher.V1.AdStitchDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_break_id: String.t(),
          ad_id: String.t(),
          ad_time_offset: Google.Protobuf.Duration.t() | nil,
          skip_reason: String.t(),
          media: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct ad_break_id: "",
            ad_id: "",
            ad_time_offset: nil,
            skip_reason: "",
            media: %{}

  field :ad_break_id, 1, type: :string, json_name: "adBreakId", deprecated: false
  field :ad_id, 2, type: :string, json_name: "adId", deprecated: false

  field :ad_time_offset, 3,
    type: Google.Protobuf.Duration,
    json_name: "adTimeOffset",
    deprecated: false

  field :skip_reason, 4, type: :string, json_name: "skipReason", deprecated: false

  field :media, 5,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.AdStitchDetail.MediaEntry,
    map: true,
    deprecated: false
end
