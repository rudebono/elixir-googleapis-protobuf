defmodule Google.Cloud.Hypercomputecluster.V1alpha.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_ACTIVE, 1
  field :STATE_COMPLETED, 2
  field :STATE_FAILED, 3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun.Orchestrator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ORCHESTRATOR_UNSPECIFIED, 0
  field :GCE, 1
  field :GKE, 2
  field :SLURM, 3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun.RunPhase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RUN_PHASE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :COMPLETED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :run_set, 3, type: :string, json_name: "runSet", deprecated: false
  field :etag, 4, type: :string, deprecated: false
  field :configs, 5, type: Google.Cloud.Hypercomputecluster.V1alpha.Configs, deprecated: false

  field :tools, 6,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Tool,
    deprecated: false

  field :metrics, 7, type: Google.Cloud.Hypercomputecluster.V1alpha.Metrics, deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 9,
    type: Google.Cloud.Hypercomputecluster.V1alpha.State,
    enum: true,
    deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :artifacts, 12,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Artifacts,
    deprecated: false

  field :orchestrator, 13,
    type: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun.Orchestrator,
    enum: true,
    deprecated: false

  field :workload_details, 14,
    type: Google.Cloud.Hypercomputecluster.V1alpha.WorkloadDetails,
    json_name: "workloadDetails",
    deprecated: false

  field :run_phase, 15,
    type: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun.RunPhase,
    json_name: "runPhase",
    enum: true,
    deprecated: false

  field :error_details, 16, type: :string, json_name: "errorDetails", deprecated: false
  field :end_time, 17, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.CreateMachineLearningRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :machine_learning_run, 2,
    type: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun,
    json_name: "machineLearningRun",
    deprecated: false

  field :machine_learning_run_id, 3,
    type: :string,
    json_name: "machineLearningRunId",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.UpdateMachineLearningRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_learning_run, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun,
    json_name: "machineLearningRun",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.DeleteMachineLearningRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GetMachineLearningRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ListMachineLearningRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ListMachineLearningRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_learning_runs, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun,
    json_name: "machineLearningRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ListProfileSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ListProfileSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :profile_sessions, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.ProfileSession,
    json_name: "profileSessions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GetProfileSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.ProfileSession do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :gcs_path, 2, type: :string, json_name: "gcsPath", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :dashboard_url, 4, type: :string, json_name: "dashboardUrl", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Configs.UserConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Configs.SoftwareConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Configs.HardwareConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Configs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_configs, 1,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Configs.UserConfigsEntry,
    json_name: "userConfigs",
    map: true,
    deprecated: false

  field :software_configs, 2,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Configs.SoftwareConfigsEntry,
    json_name: "softwareConfigs",
    map: true,
    deprecated: false

  field :hardware_configs, 3,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Configs.HardwareConfigsEntry,
    json_name: "hardwareConfigs",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :avg_step, 1, type: Google.Protobuf.Duration, json_name: "avgStep", deprecated: false
  field :avg_mfu, 2, type: :float, json_name: "avgMfu", deprecated: false
  field :avg_throughput, 3, type: :float, json_name: "avgThroughput", deprecated: false

  field :avg_latency, 4,
    type: Google.Protobuf.Duration,
    json_name: "avgLatency",
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Artifacts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_path, 1, type: :string, json_name: "gcsPath", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :tool, 0

  field :xprof, 1,
    type: Google.Cloud.Hypercomputecluster.V1alpha.Xprof,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.WorkloadDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :metadata, 0

  field :gke, 1, type: Google.Cloud.Hypercomputecluster.V1alpha.GKEWorkloadDetails, oneof: 0
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GKEWorkloadDetails.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.GKEWorkloadDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :kind, 2, type: :string, deprecated: false
  field :cluster, 3, type: :string, deprecated: false
  field :namespace, 4, type: :string, deprecated: false
  field :parent_workload, 5, type: :string, json_name: "parentWorkload", deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Hypercomputecluster.V1alpha.GKEWorkloadDetails.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.Xprof do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId", deprecated: false
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRuns.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.hypercomputecluster.v1alpha.MachineLearningRuns",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateMachineLearningRun,
      Google.Cloud.Hypercomputecluster.V1alpha.CreateMachineLearningRunRequest,
      Google.Longrunning.Operation

  rpc :UpdateMachineLearningRun,
      Google.Cloud.Hypercomputecluster.V1alpha.UpdateMachineLearningRunRequest,
      Google.Longrunning.Operation

  rpc :DeleteMachineLearningRun,
      Google.Cloud.Hypercomputecluster.V1alpha.DeleteMachineLearningRunRequest,
      Google.Longrunning.Operation

  rpc :GetMachineLearningRun,
      Google.Cloud.Hypercomputecluster.V1alpha.GetMachineLearningRunRequest,
      Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRun

  rpc :ListMachineLearningRuns,
      Google.Cloud.Hypercomputecluster.V1alpha.ListMachineLearningRunsRequest,
      Google.Cloud.Hypercomputecluster.V1alpha.ListMachineLearningRunsResponse

  rpc :GetProfileSession,
      Google.Cloud.Hypercomputecluster.V1alpha.GetProfileSessionRequest,
      Google.Cloud.Hypercomputecluster.V1alpha.ProfileSession

  rpc :ListProfileSessions,
      Google.Cloud.Hypercomputecluster.V1alpha.ListProfileSessionsRequest,
      Google.Cloud.Hypercomputecluster.V1alpha.ListProfileSessionsResponse
end

defmodule Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRuns.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Hypercomputecluster.V1alpha.MachineLearningRuns.Service
end
