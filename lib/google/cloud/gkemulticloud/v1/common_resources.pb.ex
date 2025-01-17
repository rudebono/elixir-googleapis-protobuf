defmodule Google.Cloud.Gkemulticloud.V1.NodeTaint.Effect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EFFECT_UNSPECIFIED, 0
  field :NO_SCHEDULE, 1
  field :PREFER_NO_SCHEDULE, 2
  field :NO_EXECUTE, 3
end

defmodule Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig.Component do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COMPONENT_UNSPECIFIED, 0
  field :SYSTEM_COMPONENTS, 1
  field :WORKLOADS, 2
end

defmodule Google.Cloud.Gkemulticloud.V1.BinaryAuthorization.EvaluationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVALUATION_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :PROJECT_SINGLETON_POLICY_ENFORCE, 2
end

defmodule Google.Cloud.Gkemulticloud.V1.SecurityPostureConfig.VulnerabilityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VULNERABILITY_MODE_UNSPECIFIED, 0
  field :VULNERABILITY_DISABLED, 1
  field :VULNERABILITY_ENTERPRISE, 2
end

defmodule Google.Cloud.Gkemulticloud.V1.Jwk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kty, 1, type: :string
  field :alg, 2, type: :string
  field :use, 3, type: :string
  field :kid, 4, type: :string
  field :n, 5, type: :string
  field :e, 6, type: :string
  field :x, 7, type: :string
  field :y, 8, type: :string
  field :crv, 9, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :issuer_uri, 1, type: :string, json_name: "issuerUri"
  field :workload_pool, 2, type: :string, json_name: "workloadPool"
  field :identity_provider, 3, type: :string, json_name: "identityProvider"
end

defmodule Google.Cloud.Gkemulticloud.V1.MaxPodsConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :max_pods_per_node, 1, type: :int64, json_name: "maxPodsPerNode", deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :status_detail, 4, type: :string, json_name: "statusDetail", deprecated: false
  field :error_detail, 5, type: :string, json_name: "errorDetail", deprecated: false
  field :verb, 7, type: :string, deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.NodeTaint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false

  field :effect, 3,
    type: Google.Cloud.Gkemulticloud.V1.NodeTaint.Effect,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.NodeKubeletConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :insecure_kubelet_readonly_port_enabled, 1,
    type: :bool,
    json_name: "insecureKubeletReadonlyPortEnabled",
    deprecated: false

  field :cpu_manager_policy, 2,
    proto3_optional: true,
    type: :string,
    json_name: "cpuManagerPolicy",
    deprecated: false

  field :cpu_cfs_quota, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "cpuCfsQuota",
    deprecated: false

  field :cpu_cfs_quota_period, 4,
    proto3_optional: true,
    type: :string,
    json_name: "cpuCfsQuotaPeriod",
    deprecated: false

  field :pod_pids_limit, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "podPidsLimit",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.Fleet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :membership, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.LoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :component_config, 1,
    type: Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig,
    json_name: "componentConfig"
end

defmodule Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_components, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.LoggingComponentConfig.Component,
    json_name: "enableComponents",
    enum: true
end

defmodule Google.Cloud.Gkemulticloud.V1.MonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :managed_prometheus_config, 2,
    type: Google.Cloud.Gkemulticloud.V1.ManagedPrometheusConfig,
    json_name: "managedPrometheusConfig"

  field :cloud_monitoring_config, 4,
    type: Google.Cloud.Gkemulticloud.V1.CloudMonitoringConfig,
    json_name: "cloudMonitoringConfig"
end

defmodule Google.Cloud.Gkemulticloud.V1.ManagedPrometheusConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Gkemulticloud.V1.CloudMonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enabled, 1, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Gkemulticloud.V1.BinaryAuthorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :evaluation_mode, 1,
    type: Google.Cloud.Gkemulticloud.V1.BinaryAuthorization.EvaluationMode,
    json_name: "evaluationMode",
    enum: true
end

defmodule Google.Cloud.Gkemulticloud.V1.SecurityPostureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :vulnerability_mode, 1,
    type: Google.Cloud.Gkemulticloud.V1.SecurityPostureConfig.VulnerabilityMode,
    json_name: "vulnerabilityMode",
    enum: true
end
