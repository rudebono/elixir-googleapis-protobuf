defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.State do
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
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.Value
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig.ParameterValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: %{String.t() => Google.Cloud.Aiplatform.V1beta1.Value.t() | nil},
          gcs_output_directory: String.t(),
          parameter_values: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct parameters: %{},
            gcs_output_directory: "",
            parameter_values: %{}

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig.ParametersEntry,
    map: true,
    deprecated: true

  field :gcs_output_directory, 2,
    type: :string,
    json_name: "gcsOutputDirectory",
    deprecated: false

  field :parameter_values, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig.ParameterValuesEntry,
    json_name: "parameterValues",
    map: true
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineJob do
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
          state: Google.Cloud.Aiplatform.V1beta1.PipelineState.t(),
          job_detail: Google.Cloud.Aiplatform.V1beta1.PipelineJobDetail.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          labels: %{String.t() => String.t()},
          runtime_config: Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil,
          service_account: String.t(),
          network: String.t()
        }

  defstruct name: "",
            display_name: "",
            create_time: nil,
            start_time: nil,
            end_time: nil,
            update_time: nil,
            pipeline_spec: nil,
            state: :PIPELINE_STATE_UNSPECIFIED,
            job_detail: nil,
            error: nil,
            labels: %{},
            runtime_config: nil,
            encryption_spec: nil,
            service_account: "",
            network: ""

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

  field :pipeline_spec, 7,
    type: Google.Protobuf.Struct,
    json_name: "pipelineSpec",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineState,
    enum: true,
    deprecated: false

  field :job_detail, 9,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJobDetail,
    json_name: "jobDetail",
    deprecated: false

  field :error, 10, type: Google.Rpc.Status, deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJob.LabelsEntry,
    map: true

  field :runtime_config, 12,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineJob.RuntimeConfig,
    json_name: "runtimeConfig"

  field :encryption_spec, 16,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :service_account, 17, type: :string, json_name: "serviceAccount"
  field :network, 18, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineJobDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline_context: Google.Cloud.Aiplatform.V1beta1.Context.t() | nil,
          pipeline_run_context: Google.Cloud.Aiplatform.V1beta1.Context.t() | nil,
          task_details: [Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.t()]
        }

  defstruct pipeline_context: nil,
            pipeline_run_context: nil,
            task_details: []

  field :pipeline_context, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Context,
    json_name: "pipelineContext",
    deprecated: false

  field :pipeline_run_context, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Context,
    json_name: "pipelineRunContext",
    deprecated: false

  field :task_details, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail,
    json_name: "taskDetails",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.PipelineTaskStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.State.t(),
          error: Google.Rpc.Status.t() | nil
        }

  defstruct update_time: nil,
            state: :STATE_UNSPECIFIED,
            error: nil

  field :update_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.State,
    enum: true,
    deprecated: false

  field :error, 3, type: Google.Rpc.Status, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifacts: [Google.Cloud.Aiplatform.V1beta1.Artifact.t()]
        }

  defstruct artifacts: []

  field :artifacts, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Artifact,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.InputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.OutputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_id: integer,
          parent_task_id: integer,
          task_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          executor_detail: Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.State.t(),
          execution: Google.Cloud.Aiplatform.V1beta1.Execution.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          pipeline_task_status: [
            Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.PipelineTaskStatus.t()
          ],
          inputs: %{
            String.t() =>
              Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList.t() | nil
          },
          outputs: %{
            String.t() =>
              Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.ArtifactList.t() | nil
          }
        }

  defstruct task_id: 0,
            parent_task_id: 0,
            task_name: "",
            create_time: nil,
            start_time: nil,
            end_time: nil,
            executor_detail: nil,
            state: :STATE_UNSPECIFIED,
            execution: nil,
            error: nil,
            pipeline_task_status: [],
            inputs: %{},
            outputs: %{}

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
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail,
    json_name: "executorDetail",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.State,
    enum: true,
    deprecated: false

  field :execution, 8, type: Google.Cloud.Aiplatform.V1beta1.Execution, deprecated: false
  field :error, 9, type: Google.Rpc.Status, deprecated: false

  field :pipeline_task_status, 13,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.PipelineTaskStatus,
    json_name: "pipelineTaskStatus",
    deprecated: false

  field :inputs, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.InputsEntry,
    map: true,
    deprecated: false

  field :outputs, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskDetail.OutputsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.ContainerDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_job: String.t(),
          pre_caching_check_job: String.t()
        }

  defstruct main_job: "",
            pre_caching_check_job: ""

  field :main_job, 1, type: :string, json_name: "mainJob", deprecated: false

  field :pre_caching_check_job, 2,
    type: :string,
    json_name: "preCachingCheckJob",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.CustomJobDetail do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          job: String.t()
        }

  defstruct job: ""

  field :job, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:container_detail,
             Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.ContainerDetail.t() | nil}
            | {:custom_job_detail,
               Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.CustomJobDetail.t()
               | nil}
        }

  defstruct details: nil

  oneof :details, 0

  field :container_detail, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.ContainerDetail,
    json_name: "containerDetail",
    oneof: 0,
    deprecated: false

  field :custom_job_detail, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineTaskExecutorDetail.CustomJobDetail,
    json_name: "customJobDetail",
    oneof: 0,
    deprecated: true
end
