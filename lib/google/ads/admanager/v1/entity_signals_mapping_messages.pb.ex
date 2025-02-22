defmodule Google.Ads.Admanager.V1.EntitySignalsMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :entity, 0

  field :audience_segment_id, 3, type: :int64, json_name: "audienceSegmentId", oneof: 0
  field :content_bundle_id, 4, type: :int64, json_name: "contentBundleId", oneof: 0
  field :custom_targeting_value_id, 5, type: :int64, json_name: "customTargetingValueId", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :entity_signals_mapping_id, 2,
    type: :int64,
    json_name: "entitySignalsMappingId",
    deprecated: false

  field :taxonomy_category_ids, 6,
    repeated: true,
    type: :int64,
    json_name: "taxonomyCategoryIds",
    deprecated: false
end
