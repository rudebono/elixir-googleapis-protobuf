defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.ScaleTier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SCALE_TIER_UNSPECIFIED
          | :BASIC
          | :STANDARD_1
          | :PREMIUM_1
          | :BASIC_GPU
          | :BASIC_TPU
          | :CUSTOM

  field :SCALE_TIER_UNSPECIFIED, 0
  field :BASIC, 1
  field :STANDARD_1, 2
  field :PREMIUM_1, 3
  field :BASIC_GPU, 4
  field :BASIC_TPU, 5
  field :CUSTOM, 6
end
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED
          | :NVIDIA_TESLA_K80
          | :NVIDIA_TESLA_P100
          | :NVIDIA_TESLA_V100
          | :NVIDIA_TESLA_P4
          | :NVIDIA_TESLA_T4
          | :NVIDIA_TESLA_A100
          | :TPU_V2
          | :TPU_V3

  field :SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :NVIDIA_TESLA_K80, 1
  field :NVIDIA_TESLA_P100, 2
  field :NVIDIA_TESLA_V100, 3
  field :NVIDIA_TESLA_P4, 4
  field :NVIDIA_TESLA_T4, 5
  field :NVIDIA_TESLA_A100, 10
  field :TPU_V2, 6
  field :TPU_V3, 7
end
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.JobType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :JOB_TYPE_UNSPECIFIED | :VERTEX_AI | :DATAPROC

  field :JOB_TYPE_UNSPECIFIED, 0
  field :VERTEX_AI, 1
  field :DATAPROC, 2
end
defmodule Google.Cloud.Notebooks.V1.Execution.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :QUEUED
          | :PREPARING
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED
          | :EXPIRED
          | :INITIALIZING

  field :STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :PREPARING, 2
  field :RUNNING, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :CANCELLING, 6
  field :CANCELLED, 7
  field :EXPIRED, 9
  field :INITIALIZING, 10
end
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorType.t(),
          core_count: integer
        }

  defstruct type: :SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED,
            core_count: 0

  field :type, 1,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorType,
    enum: true

  field :core_count, 2, type: :int64, json_name: "coreCount"
end
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.DataprocParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t()
        }

  defstruct cluster: ""

  field :cluster, 1, type: :string
end
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters.EnvEntry do
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
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          env: %{String.t() => String.t()}
        }

  defstruct network: "",
            env: %{}

  field :network, 1, type: :string

  field :env, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters.EnvEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.LabelsEntry do
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
defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_parameters:
            {:dataproc_parameters,
             Google.Cloud.Notebooks.V1.ExecutionTemplate.DataprocParameters.t() | nil}
            | {:vertex_ai_parameters,
               Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters.t() | nil},
          scale_tier: Google.Cloud.Notebooks.V1.ExecutionTemplate.ScaleTier.t(),
          master_type: String.t(),
          accelerator_config:
            Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorConfig.t() | nil,
          labels: %{String.t() => String.t()},
          input_notebook_file: String.t(),
          container_image_uri: String.t(),
          output_notebook_folder: String.t(),
          params_yaml_file: String.t(),
          parameters: String.t(),
          service_account: String.t(),
          job_type: Google.Cloud.Notebooks.V1.ExecutionTemplate.JobType.t(),
          kernel_spec: String.t(),
          tensorboard: String.t()
        }

  defstruct job_parameters: nil,
            scale_tier: :SCALE_TIER_UNSPECIFIED,
            master_type: "",
            accelerator_config: nil,
            labels: %{},
            input_notebook_file: "",
            container_image_uri: "",
            output_notebook_folder: "",
            params_yaml_file: "",
            parameters: "",
            service_account: "",
            job_type: :JOB_TYPE_UNSPECIFIED,
            kernel_spec: "",
            tensorboard: ""

  oneof :job_parameters, 0

  field :scale_tier, 1,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.ScaleTier,
    json_name: "scaleTier",
    enum: true,
    deprecated: true

  field :master_type, 2, type: :string, json_name: "masterType"

  field :accelerator_config, 3,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorConfig,
    json_name: "acceleratorConfig"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.LabelsEntry,
    map: true

  field :input_notebook_file, 5, type: :string, json_name: "inputNotebookFile"
  field :container_image_uri, 6, type: :string, json_name: "containerImageUri"
  field :output_notebook_folder, 7, type: :string, json_name: "outputNotebookFolder"
  field :params_yaml_file, 8, type: :string, json_name: "paramsYamlFile"
  field :parameters, 9, type: :string
  field :service_account, 10, type: :string, json_name: "serviceAccount"

  field :job_type, 11,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.JobType,
    json_name: "jobType",
    enum: true

  field :dataproc_parameters, 12,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.DataprocParameters,
    json_name: "dataprocParameters",
    oneof: 0

  field :vertex_ai_parameters, 13,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters,
    json_name: "vertexAiParameters",
    oneof: 0

  field :kernel_spec, 14, type: :string, json_name: "kernelSpec"
  field :tensorboard, 15, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.Execution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution_template: Google.Cloud.Notebooks.V1.ExecutionTemplate.t() | nil,
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Notebooks.V1.Execution.State.t(),
          output_notebook_file: String.t(),
          job_uri: String.t()
        }

  defstruct execution_template: nil,
            name: "",
            display_name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            output_notebook_file: "",
            job_uri: ""

  field :execution_template, 1,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate,
    json_name: "executionTemplate"

  field :name, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 7, type: Google.Cloud.Notebooks.V1.Execution.State, enum: true, deprecated: false
  field :output_notebook_file, 8, type: :string, json_name: "outputNotebookFile"
  field :job_uri, 9, type: :string, json_name: "jobUri", deprecated: false
end
