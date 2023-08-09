defmodule Google.Cloud.Baremetalsolution.V2.VolumePerformanceTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VOLUME_PERFORMANCE_TIER_UNSPECIFIED, 0
  field :VOLUME_PERFORMANCE_TIER_SHARED, 1
  field :VOLUME_PERFORMANCE_TIER_ASSIGNED, 2
  field :VOLUME_PERFORMANCE_TIER_HT, 3
end

defmodule Google.Cloud.Baremetalsolution.V2.WorkloadProfile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :WORKLOAD_PROFILE_UNSPECIFIED, 0
  field :WORKLOAD_PROFILE_GENERIC, 1
  field :WORKLOAD_PROFILE_HANA, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end