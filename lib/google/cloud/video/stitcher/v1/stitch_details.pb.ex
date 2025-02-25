defmodule Google.Cloud.Video.Stitcher.V1.VodStitchDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :ad_stitch_details, 3,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.AdStitchDetail,
    json_name: "adStitchDetails"
end

defmodule Google.Cloud.Video.Stitcher.V1.AdStitchDetail.MediaEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Video.Stitcher.V1.AdStitchDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
