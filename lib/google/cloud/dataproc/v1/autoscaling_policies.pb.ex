defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :algorithm, 0

  field :id, 1, type: :string
  field :name, 2, type: :string, deprecated: false

  field :basic_algorithm, 3,
    type: Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm,
    json_name: "basicAlgorithm",
    oneof: 0,
    deprecated: false

  field :worker_config, 4,
    type: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig,
    json_name: "workerConfig",
    deprecated: false

  field :secondary_worker_config, 5,
    type: Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig,
    json_name: "secondaryWorkerConfig",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.AutoscalingPolicy.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.BasicAutoscalingAlgorithm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :yarn_config, 1,
    type: Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig,
    json_name: "yarnConfig",
    oneof: 0,
    deprecated: false

  field :cooldown_period, 2,
    type: Google.Protobuf.Duration,
    json_name: "cooldownPeriod",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.BasicYarnAutoscalingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :graceful_decommission_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "gracefulDecommissionTimeout",
    deprecated: false

  field :scale_up_factor, 1, type: :double, json_name: "scaleUpFactor", deprecated: false
  field :scale_down_factor, 2, type: :double, json_name: "scaleDownFactor", deprecated: false

  field :scale_up_min_worker_fraction, 3,
    type: :double,
    json_name: "scaleUpMinWorkerFraction",
    deprecated: false

  field :scale_down_min_worker_fraction, 4,
    type: :double,
    json_name: "scaleDownMinWorkerFraction",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.InstanceGroupAutoscalingPolicyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_instances, 1, type: :int32, json_name: "minInstances", deprecated: false
  field :max_instances, 2, type: :int32, json_name: "maxInstances", deprecated: false
  field :weight, 3, type: :int32, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.CreateAutoscalingPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GetAutoscalingPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.UpdateAutoscalingPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy, 1, type: Google.Cloud.Dataproc.V1.AutoscalingPolicy, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.DeleteAutoscalingPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policies, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.AutoscalingPolicy,
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataproc.v1.AutoscalingPolicyService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.CreateAutoscalingPolicyRequest,
      Google.Cloud.Dataproc.V1.AutoscalingPolicy

  rpc :UpdateAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.UpdateAutoscalingPolicyRequest,
      Google.Cloud.Dataproc.V1.AutoscalingPolicy

  rpc :GetAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.GetAutoscalingPolicyRequest,
      Google.Cloud.Dataproc.V1.AutoscalingPolicy

  rpc :ListAutoscalingPolicies,
      Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesRequest,
      Google.Cloud.Dataproc.V1.ListAutoscalingPoliciesResponse

  rpc :DeleteAutoscalingPolicy,
      Google.Cloud.Dataproc.V1.DeleteAutoscalingPolicyRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataproc.V1.AutoscalingPolicyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.AutoscalingPolicyService.Service
end
