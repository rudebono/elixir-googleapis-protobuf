defmodule Google.Cloud.Run.V2.CreateWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :worker_pool, 2,
    type: Google.Cloud.Run.V2.WorkerPool,
    json_name: "workerPool",
    deprecated: false

  field :worker_pool_id, 3, type: :string, json_name: "workerPoolId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Run.V2.UpdateWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :worker_pool, 1,
    type: Google.Cloud.Run.V2.WorkerPool,
    json_name: "workerPool",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :force_new_revision, 5, type: :bool, json_name: "forceNewRevision", deprecated: false
end

defmodule Google.Cloud.Run.V2.ListWorkerPoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Run.V2.ListWorkerPoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :worker_pools, 1,
    repeated: true,
    type: Google.Cloud.Run.V2.WorkerPool,
    json_name: "workerPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Run.V2.GetWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.DeleteWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Run.V2.WorkerPool.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.WorkerPool.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.WorkerPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :uid, 3, type: :string, deprecated: false
  field :generation, 4, type: :int64, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.WorkerPool.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Run.V2.WorkerPool.AnnotationsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :creator, 11, type: :string, deprecated: false
  field :last_modifier, 12, type: :string, json_name: "lastModifier", deprecated: false
  field :client, 13, type: :string
  field :client_version, 14, type: :string, json_name: "clientVersion"

  field :launch_stage, 16,
    type: Google.Api.LaunchStage,
    json_name: "launchStage",
    enum: true,
    deprecated: false

  field :binary_authorization, 17,
    type: Google.Cloud.Run.V2.BinaryAuthorization,
    json_name: "binaryAuthorization",
    deprecated: false

  field :template, 18, type: Google.Cloud.Run.V2.WorkerPoolRevisionTemplate, deprecated: false

  field :instance_splits, 26,
    repeated: true,
    type: Google.Cloud.Run.V2.InstanceSplit,
    json_name: "instanceSplits",
    deprecated: false

  field :scaling, 20, type: Google.Cloud.Run.V2.WorkerPoolScaling, deprecated: false
  field :observed_generation, 30, type: :int64, json_name: "observedGeneration", deprecated: false

  field :terminal_condition, 31,
    type: Google.Cloud.Run.V2.Condition,
    json_name: "terminalCondition",
    deprecated: false

  field :conditions, 32, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false

  field :latest_ready_revision, 33,
    type: :string,
    json_name: "latestReadyRevision",
    deprecated: false

  field :latest_created_revision, 34,
    type: :string,
    json_name: "latestCreatedRevision",
    deprecated: false

  field :instance_split_statuses, 27,
    repeated: true,
    type: Google.Cloud.Run.V2.InstanceSplitStatus,
    json_name: "instanceSplitStatuses",
    deprecated: false

  field :custom_audiences, 37, repeated: true, type: :string, json_name: "customAudiences"
  field :satisfies_pzs, 38, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :reconciling, 98, type: :bool, deprecated: false
  field :etag, 99, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.WorkerPools.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.WorkerPools", protoc_gen_elixir_version: "0.15.0"

  rpc :CreateWorkerPool, Google.Cloud.Run.V2.CreateWorkerPoolRequest, Google.Longrunning.Operation

  rpc :GetWorkerPool, Google.Cloud.Run.V2.GetWorkerPoolRequest, Google.Cloud.Run.V2.WorkerPool

  rpc :ListWorkerPools,
      Google.Cloud.Run.V2.ListWorkerPoolsRequest,
      Google.Cloud.Run.V2.ListWorkerPoolsResponse

  rpc :UpdateWorkerPool, Google.Cloud.Run.V2.UpdateWorkerPoolRequest, Google.Longrunning.Operation

  rpc :DeleteWorkerPool, Google.Cloud.Run.V2.DeleteWorkerPoolRequest, Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Run.V2.WorkerPools.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.WorkerPools.Service
end
