defmodule Google.Cloud.Securitycenter.V2.DataRetentionDeletionEvent.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :EVENT_TYPE_MAX_TTL_EXCEEDED, 1
end

defmodule Google.Cloud.Securitycenter.V2.DataRetentionDeletionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_detection_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventDetectionTime"
  field :data_object_count, 3, type: :int64, json_name: "dataObjectCount"

  field :max_retention_allowed, 4,
    type: Google.Protobuf.Duration,
    json_name: "maxRetentionAllowed"

  field :event_type, 5,
    type: Google.Cloud.Securitycenter.V2.DataRetentionDeletionEvent.EventType,
    json_name: "eventType",
    enum: true
end
