defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.LoadBalancingAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOAD_BALANCING_ALGORITHM_UNSPECIFIED, 0
  field :SPRAY_TO_WORLD, 3
  field :SPRAY_TO_REGION, 4
  field :WATERFALL_BY_REGION, 5
  field :WATERFALL_BY_ZONE, 6
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.IsolationGranularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ISOLATION_GRANULARITY_UNSPECIFIED, 0
  field :REGION, 1
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.IsolationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ISOLATION_MODE_UNSPECIFIED, 0
  field :NEAREST, 1
  field :STRICT, 2
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.AutoCapacityDrain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.FailoverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failover_health_threshold, 1,
    type: :int32,
    json_name: "failoverHealthThreshold",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.IsolationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :isolation_granularity, 1,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.IsolationGranularity,
    json_name: "isolationGranularity",
    enum: true,
    deprecated: false

  field :isolation_mode, 2,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.IsolationMode,
    json_name: "isolationMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.ServiceLbPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :load_balancing_algorithm, 6,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.LoadBalancingAlgorithm,
    json_name: "loadBalancingAlgorithm",
    enum: true,
    deprecated: false

  field :auto_capacity_drain, 8,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.AutoCapacityDrain,
    json_name: "autoCapacityDrain",
    deprecated: false

  field :failover_config, 10,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.FailoverConfig,
    json_name: "failoverConfig",
    deprecated: false

  field :isolation_config, 11,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy.IsolationConfig,
    json_name: "isolationConfig",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListServiceLbPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListServiceLbPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_lb_policies, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy,
    json_name: "serviceLbPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetServiceLbPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateServiceLbPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_lb_policy_id, 2, type: :string, json_name: "serviceLbPolicyId", deprecated: false

  field :service_lb_policy, 3,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy,
    json_name: "serviceLbPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateServiceLbPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service_lb_policy, 2,
    type: Google.Cloud.Networkservices.V1.ServiceLbPolicy,
    json_name: "serviceLbPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteServiceLbPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
