defmodule Google.Cloud.Gkehub.Metering.V1beta.MembershipState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          last_measurement_time: Google.Protobuf.Timestamp.t() | nil,
          precise_last_measured_cluster_vcpu_capacity:
            float | :infinity | :negative_infinity | :nan
        }

  defstruct [:last_measurement_time, :precise_last_measured_cluster_vcpu_capacity]

  field :last_measurement_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "lastMeasurementTime"

  field :precise_last_measured_cluster_vcpu_capacity, 3,
    type: :float,
    json_name: "preciseLastMeasuredClusterVcpuCapacity"

  def transform_module(), do: nil
end
