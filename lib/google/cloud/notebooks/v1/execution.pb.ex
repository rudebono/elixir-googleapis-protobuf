defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.ScaleTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :JOB_TYPE_UNSPECIFIED, 0
  field :VERTEX_AI, 1
  field :DATAPROC, 2
end

defmodule Google.Cloud.Notebooks.V1.Execution.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.SchedulerAcceleratorType,
    enum: true

  field :core_count, 2, type: :int64, json_name: "coreCount"
end

defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.DataprocParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters.EnvEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network, 1, type: :string

  field :env, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate.VertexAIParameters.EnvEntry,
    map: true
end

defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.ExecutionTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
