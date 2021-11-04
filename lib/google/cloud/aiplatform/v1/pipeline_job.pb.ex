defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :RUNNING
          | :SUCCEEDED
          | :CANCEL_PENDING
          | :CANCELLING
          | :CANCELLED
          | :FAILED
          | :SKIPPED
          | :NOT_TRIGGERED

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

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParameterValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: %{String.t() => Google.Cloud.Aiplatform.V1.Value.t() | nil},
          gcs_output_directory: String.t(),
          parameter_values: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct [:parameters, :gcs_output_directory, :parameter_values]

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParametersEntry,
    deprecated: true,
    map: true

  field :gcs_output_directory, 2, type: :string, json_name: "gcsOutputDirectory"

  field :parameter_values, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParameterValuesEntry,
    json_name: "parameterValues",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          pipeline_spec: Google.Protobuf.Struct.t() | nil,
          state: Google.Cloud.Aiplatform.V1.PipelineState.t(),
          job_detail: Google.Cloud.Aiplatform.V1.PipelineJobDetail.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          labels: %{String.t() => String.t()},
          runtime_config: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil,
          service_account: String.t(),
          network: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :create_time,
    :start_time,
    :end_time,
    :update_time,
    :pipeline_spec,
    :state,
    :job_detail,
    :error,
    :labels,
    :runtime_config,
    :encryption_spec,
    :service_account,
    :network
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :pipeline_spec, 7, type: Google.Protobuf.Struct, json_name: "pipelineSpec"
  field :state, 8, type: Google.Cloud.Aiplatform.V1.PipelineState, enum: true
  field :job_detail, 9, type: Google.Cloud.Aiplatform.V1.PipelineJobDetail, json_name: "jobDetail"
  field :error, 10, type: Google.Rpc.Status

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
  field :network, 18, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJobDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline_context: Google.Cloud.Aiplatform.V1.Context.t() | nil,
          pipeline_run_context: Google.Cloud.Aiplatform.V1.Context.t() | nil,
          task_details: [Google.Cloud.Aiplatform.V1.PipelineTaskDetail.t()]
        }

  defstruct [:pipeline_context, :pipeline_run_context, :task_details]

  field :pipeline_context, 1,
    type: Google.Cloud.Aiplatform.V1.Context,
    json_name: "pipelineContext"

  field :pipeline_run_context, 2,
    type: Google.Cloud.Aiplatform.V1.Context,
    json_name: "pipelineRunContext"

  field :task_details, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail,
    json_name: "taskDetails"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.PipelineTaskStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State.t(),
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:update_time, :state, :error]

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :state, 2, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State, enum: true
  field :error, 3, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifacts: [Google.Cloud.Aiplatform.V1.Artifact.t()]
        }

  defstruct [:artifacts]

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Artifact

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.InputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.OutputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_id: integer,
          parent_task_id: integer,
          task_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          executor_detail: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.t() | nil,
          state: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State.t(),
          execution: Google.Cloud.Aiplatform.V1.Execution.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          pipeline_task_status: [
            Google.Cloud.Aiplatform.V1.PipelineTaskDetail.PipelineTaskStatus.t()
          ],
          inputs: %{
            String.t() => Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList.t() | nil
          },
          outputs: %{
            String.t() => Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList.t() | nil
          }
        }

  defstruct [
    :task_id,
    :parent_task_id,
    :task_name,
    :create_time,
    :start_time,
    :end_time,
    :executor_detail,
    :state,
    :execution,
    :error,
    :pipeline_task_status,
    :inputs,
    :outputs
  ]

  field :task_id, 1, type: :int64, json_name: "taskId"
  field :parent_task_id, 12, type: :int64, json_name: "parentTaskId"
  field :task_name, 2, type: :string, json_name: "taskName"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :executor_detail, 6,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail,
    json_name: "executorDetail"

  field :state, 7, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State, enum: true
  field :execution, 8, type: Google.Cloud.Aiplatform.V1.Execution
  field :error, 9, type: Google.Rpc.Status

  field :pipeline_task_status, 13,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.PipelineTaskStatus,
    json_name: "pipelineTaskStatus"

  field :inputs, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.InputsEntry,
    map: true

  field :outputs, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.OutputsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_job: String.t(),
          pre_caching_check_job: String.t()
        }

  defstruct [:main_job, :pre_caching_check_job]

  field :main_job, 1, type: :string, json_name: "mainJob"
  field :pre_caching_check_job, 2, type: :string, json_name: "preCachingCheckJob"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          job: String.t()
        }

  defstruct [:job]

  field :job, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:container_detail,
             Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail.t() | nil}
            | {:custom_job_detail,
               Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail.t() | nil}
        }

  defstruct [:details]

  oneof :details, 0

  field :container_detail, 1,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail,
    json_name: "containerDetail",
    oneof: 0

  field :custom_job_detail, 2,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail,
    deprecated: true,
    json_name: "customJobDetail",
    oneof: 0

  def transform_module(), do: nil
end
