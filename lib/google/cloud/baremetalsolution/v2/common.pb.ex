defmodule Google.Cloud.Baremetalsolution.V2.VolumePerformanceTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VOLUME_PERFORMANCE_TIER_UNSPECIFIED, 0
  field :VOLUME_PERFORMANCE_TIER_SHARED, 1
  field :VOLUME_PERFORMANCE_TIER_ASSIGNED, 2
  field :VOLUME_PERFORMANCE_TIER_HT, 3
end

defmodule Google.Cloud.Baremetalsolution.V2.WorkloadProfile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :WORKLOAD_PROFILE_UNSPECIFIED, 0
  field :WORKLOAD_PROFILE_GENERIC, 1
  field :WORKLOAD_PROFILE_HANA, 2
end