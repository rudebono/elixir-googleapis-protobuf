defmodule Google.Appengine.V1beta.Instance.Availability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :RESIDENT, 1
  field :DYNAMIC, 2
end

defmodule Google.Appengine.V1beta.Instance.Liveness.LivenessState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LIVENESS_STATE_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HEALTHY, 2
  field :UNHEALTHY, 3
  field :DRAINING, 4
  field :TIMEOUT, 5
end

defmodule Google.Appengine.V1beta.Instance.Liveness do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Appengine.V1beta.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :app_engine_release, 3, type: :string, json_name: "appEngineRelease", deprecated: false

  field :availability, 4,
    type: Google.Appengine.V1beta.Instance.Availability,
    enum: true,
    deprecated: false

  field :vm_name, 5, type: :string, json_name: "vmName", deprecated: false
  field :vm_zone_name, 6, type: :string, json_name: "vmZoneName", deprecated: false
  field :vm_id, 7, type: :string, json_name: "vmId", deprecated: false
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :requests, 9, type: :int32, deprecated: false
  field :errors, 10, type: :int32, deprecated: false
  field :qps, 11, type: :float, deprecated: false
  field :average_latency, 12, type: :int32, json_name: "averageLatency", deprecated: false
  field :memory_usage, 13, type: :int64, json_name: "memoryUsage", deprecated: false
  field :vm_status, 14, type: :string, json_name: "vmStatus", deprecated: false
  field :vm_debug_enabled, 15, type: :bool, json_name: "vmDebugEnabled", deprecated: false
  field :vm_ip, 16, type: :string, json_name: "vmIp", deprecated: false

  field :vm_liveness, 17,
    type: Google.Appengine.V1beta.Instance.Liveness.LivenessState,
    json_name: "vmLiveness",
    enum: true,
    deprecated: false
end
