defmodule Google.Ads.Admanager.V1.AdBreak do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ad_break_id, 2,
    proto3_optional: true,
    type: :string,
    json_name: "adBreakId",
    deprecated: false

  field :asset_key, 3,
    proto3_optional: true,
    type: :string,
    json_name: "assetKey",
    deprecated: false

  field :custom_asset_key, 4,
    proto3_optional: true,
    type: :string,
    json_name: "customAssetKey",
    deprecated: false

  field :expected_start_time, 5,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "expectedStartTime",
    deprecated: false

  field :duration, 6, proto3_optional: true, type: Google.Protobuf.Duration, deprecated: false

  field :break_state, 7,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.AdBreakStateEnum.AdBreakState,
    json_name: "breakState",
    enum: true,
    deprecated: false

  field :break_sequence, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "breakSequence",
    deprecated: false

  field :pod_template_name, 9,
    proto3_optional: true,
    type: :string,
    json_name: "podTemplateName",
    deprecated: false

  field :custom_params, 10,
    proto3_optional: true,
    type: :string,
    json_name: "customParams",
    deprecated: false

  field :scte_35_cue_out, 11,
    proto3_optional: true,
    type: :string,
    json_name: "scte35CueOut",
    deprecated: false
end
