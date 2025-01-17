defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :CANCEL_PENDING, 4
  field :CANCELLING, 5
  field :CANCELLED, 6
  field :FAILED, 7
  field :SKIPPED, 8
  field :NOT_TRIGGERED, 9
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.InputArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :kind, 0

  field :artifact_id, 1, type: :string, json_name: "artifactId", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.Value
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParameterValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.InputArtifactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.InputArtifact
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParametersEntry,
    map: true,
    deprecated: true

  field :gcs_output_directory, 2,
    type: :string,
    json_name: "gcsOutputDirectory",
    deprecated: false

  field :parameter_values, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParameterValuesEntry,
    json_name: "parameterValues",
    map: true

  field :failure_policy, 4,
    type: Google.Cloud.Aiplatform.V1.PipelineFailurePolicy,
    json_name: "failurePolicy",
    enum: true

  field :input_artifacts, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.InputArtifactsEntry,
    json_name: "inputArtifacts",
    map: true
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :pipeline_spec, 7, type: Google.Protobuf.Struct, json_name: "pipelineSpec"
  field :state, 8, type: Google.Cloud.Aiplatform.V1.PipelineState, enum: true, deprecated: false

  field :job_detail, 9,
    type: Google.Cloud.Aiplatform.V1.PipelineJobDetail,
    json_name: "jobDetail",
    deprecated: false

  field :error, 10, type: Google.Rpc.Status, deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.LabelsEntry,
    map: true

  field :runtime_config, 12,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig,
    json_name: "runtimeConfig"

  field :encryption_spec, 16,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :service_account, 17, type: :string, json_name: "serviceAccount"
  field :network, 18, type: :string, deprecated: false
  field :reserved_ip_ranges, 25, repeated: true, type: :string, json_name: "reservedIpRanges"
  field :template_uri, 19, type: :string, json_name: "templateUri"

  field :template_metadata, 20,
    type: Google.Cloud.Aiplatform.V1.PipelineTemplateMetadata,
    json_name: "templateMetadata",
    deprecated: false

  field :schedule_name, 22, type: :string, json_name: "scheduleName", deprecated: false

  field :preflight_validations, 26,
    type: :bool,
    json_name: "preflightValidations",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTemplateMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJobDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pipeline_context, 1,
    type: Google.Cloud.Aiplatform.V1.Context,
    json_name: "pipelineContext",
    deprecated: false

  field :pipeline_run_context, 2,
    type: Google.Cloud.Aiplatform.V1.Context,
    json_name: "pipelineRunContext",
    deprecated: false

  field :task_details, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail,
    json_name: "taskDetails",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.PipelineTaskStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 2,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State,
    enum: true,
    deprecated: false

  field :error, 3, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :artifacts, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Artifact,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.InputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.OutputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :task_id, 1, type: :int64, json_name: "taskId", deprecated: false
  field :parent_task_id, 12, type: :int64, json_name: "parentTaskId", deprecated: false
  field :task_name, 2, type: :string, json_name: "taskName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :executor_detail, 6,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail,
    json_name: "executorDetail",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State,
    enum: true,
    deprecated: false

  field :execution, 8, type: Google.Cloud.Aiplatform.V1.Execution, deprecated: false
  field :error, 9, type: Google.Rpc.Status, deprecated: false

  field :pipeline_task_status, 13,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.PipelineTaskStatus,
    json_name: "pipelineTaskStatus",
    deprecated: false

  field :inputs, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.InputsEntry,
    map: true,
    deprecated: false

  field :outputs, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.OutputsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :main_job, 1, type: :string, json_name: "mainJob", deprecated: false

  field :pre_caching_check_job, 2,
    type: :string,
    json_name: "preCachingCheckJob",
    deprecated: false

  field :failed_main_jobs, 3,
    repeated: true,
    type: :string,
    json_name: "failedMainJobs",
    deprecated: false

  field :failed_pre_caching_check_jobs, 4,
    repeated: true,
    type: :string,
    json_name: "failedPreCachingCheckJobs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :job, 1, type: :string, deprecated: false
  field :failed_jobs, 3, repeated: true, type: :string, json_name: "failedJobs", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :details, 0

  field :container_detail, 1,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail,
    json_name: "containerDetail",
    oneof: 0,
    deprecated: false

  field :custom_job_detail, 2,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail,
    json_name: "customJobDetail",
    oneof: 0,
    deprecated: false
end
