defmodule Google.Cloud.Gkehub.Metering.V1beta.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :last_measurement_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "lastMeasurementTime"

  field :precise_last_measured_cluster_vcpu_capacity, 3,
    type: :float,
    json_name: "preciseLastMeasuredClusterVcpuCapacity"
end
