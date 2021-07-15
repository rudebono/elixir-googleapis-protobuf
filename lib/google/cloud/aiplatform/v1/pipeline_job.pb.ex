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
end

defmodule Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: %{String.t() => Google.Cloud.Aiplatform.V1.Value.t() | nil},
          gcs_output_directory: String.t()
        }

  defstruct [:parameters, :gcs_output_directory]

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig.ParametersEntry,
    map: true

  field :gcs_output_directory, 2, type: :string
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
  field :display_name, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :start_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
  field :pipeline_spec, 7, type: Google.Protobuf.Struct
  field :state, 8, type: Google.Cloud.Aiplatform.V1.PipelineState, enum: true
  field :job_detail, 9, type: Google.Cloud.Aiplatform.V1.PipelineJobDetail
  field :error, 10, type: Google.Rpc.Status

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineJob.LabelsEntry,
    map: true

  field :runtime_config, 12, type: Google.Cloud.Aiplatform.V1.PipelineJob.RuntimeConfig
  field :encryption_spec, 16, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
  field :service_account, 17, type: :string
  field :network, 18, type: :string
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

  field :pipeline_context, 1, type: Google.Cloud.Aiplatform.V1.Context
  field :pipeline_run_context, 2, type: Google.Cloud.Aiplatform.V1.Context
  field :task_details, 3, repeated: true, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskDetail.ArtifactList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifacts: [Google.Cloud.Aiplatform.V1.Artifact.t()]
        }

  defstruct [:artifacts]

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Artifact
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
    :inputs,
    :outputs
  ]

  field :task_id, 1, type: :int64
  field :parent_task_id, 12, type: :int64
  field :task_name, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :start_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
  field :executor_detail, 6, type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail
  field :state, 7, type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.State, enum: true
  field :execution, 8, type: Google.Cloud.Aiplatform.V1.Execution
  field :error, 9, type: Google.Rpc.Status

  field :inputs, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.InputsEntry,
    map: true

  field :outputs, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskDetail.OutputsEntry,
    map: true
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_job: String.t(),
          pre_caching_check_job: String.t()
        }

  defstruct [:main_job, :pre_caching_check_job]

  field :main_job, 1, type: :string
  field :pre_caching_check_job, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          job: String.t()
        }

  defstruct [:job]

  field :job, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any}
        }

  defstruct [:details]

  oneof :details, 0

  field :container_detail, 1,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.ContainerDetail,
    oneof: 0

  field :custom_job_detail, 2,
    type: Google.Cloud.Aiplatform.V1.PipelineTaskExecutorDetail.CustomJobDetail,
    deprecated: true,
    oneof: 0
end
