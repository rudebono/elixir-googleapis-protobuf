defmodule Google.Appengine.V1beta.Instance.Availability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :RESIDENT | :DYNAMIC

  field :UNSPECIFIED, 0
  field :RESIDENT, 1
  field :DYNAMIC, 2
end

defmodule Google.Appengine.V1beta.Instance.Liveness.LivenessState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LIVENESS_STATE_UNSPECIFIED
          | :UNKNOWN
          | :HEALTHY
          | :UNHEALTHY
          | :DRAINING
          | :TIMEOUT

  field :LIVENESS_STATE_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HEALTHY, 2
  field :UNHEALTHY, 3
  field :DRAINING, 4
  field :TIMEOUT, 5
end

defmodule Google.Appengine.V1beta.Instance.Liveness do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1beta.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          app_engine_release: String.t(),
          availability: Google.Appengine.V1beta.Instance.Availability.t(),
          vm_name: String.t(),
          vm_zone_name: String.t(),
          vm_id: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          requests: integer,
          errors: integer,
          qps: float | :infinity | :negative_infinity | :nan,
          average_latency: integer,
          memory_usage: integer,
          vm_status: String.t(),
          vm_debug_enabled: boolean,
          vm_ip: String.t(),
          vm_liveness: Google.Appengine.V1beta.Instance.Liveness.LivenessState.t()
        }

  defstruct [
    :name,
    :id,
    :app_engine_release,
    :availability,
    :vm_name,
    :vm_zone_name,
    :vm_id,
    :start_time,
    :requests,
    :errors,
    :qps,
    :average_latency,
    :memory_usage,
    :vm_status,
    :vm_debug_enabled,
    :vm_ip,
    :vm_liveness
  ]

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :app_engine_release, 3, type: :string, json_name: "appEngineRelease"
  field :availability, 4, type: Google.Appengine.V1beta.Instance.Availability, enum: true
  field :vm_name, 5, type: :string, json_name: "vmName"
  field :vm_zone_name, 6, type: :string, json_name: "vmZoneName"
  field :vm_id, 7, type: :string, json_name: "vmId"
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :requests, 9, type: :int32
  field :errors, 10, type: :int32
  field :qps, 11, type: :float
  field :average_latency, 12, type: :int32, json_name: "averageLatency"
  field :memory_usage, 13, type: :int64, json_name: "memoryUsage"
  field :vm_status, 14, type: :string, json_name: "vmStatus"
  field :vm_debug_enabled, 15, type: :bool, json_name: "vmDebugEnabled"
  field :vm_ip, 16, type: :string, json_name: "vmIp"

  field :vm_liveness, 17,
    type: Google.Appengine.V1beta.Instance.Liveness.LivenessState,
    enum: true,
    json_name: "vmLiveness"

  def transform_module(), do: nil
end
