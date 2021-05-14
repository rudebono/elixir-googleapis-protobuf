defmodule Google.Genomics.V1alpha2.PipelineResources.Disk.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :PERSISTENT_HDD | :PERSISTENT_SSD | :LOCAL_SSD

  field :TYPE_UNSPECIFIED, 0

  field :PERSISTENT_HDD, 1

  field :PERSISTENT_SSD, 2

  field :LOCAL_SSD, 3
end

defmodule Google.Genomics.V1alpha2.ComputeEngine do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_name: String.t(),
          zone: String.t(),
          machine_type: String.t(),
          disk_names: [String.t()]
        }

  defstruct [:instance_name, :zone, :machine_type, :disk_names]

  field :instance_name, 1, type: :string
  field :zone, 2, type: :string
  field :machine_type, 3, type: :string
  field :disk_names, 4, repeated: true, type: :string
end

defmodule Google.Genomics.V1alpha2.RuntimeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          compute_engine: Google.Genomics.V1alpha2.ComputeEngine.t() | nil
        }

  defstruct [:compute_engine]

  field :compute_engine, 1, type: Google.Genomics.V1alpha2.ComputeEngine
end

defmodule Google.Genomics.V1alpha2.Pipeline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executor: {atom, any},
          project_id: String.t(),
          name: String.t(),
          description: String.t(),
          input_parameters: [Google.Genomics.V1alpha2.PipelineParameter.t()],
          output_parameters: [Google.Genomics.V1alpha2.PipelineParameter.t()],
          resources: Google.Genomics.V1alpha2.PipelineResources.t() | nil,
          pipeline_id: String.t()
        }

  defstruct [
    :executor,
    :project_id,
    :name,
    :description,
    :input_parameters,
    :output_parameters,
    :resources,
    :pipeline_id
  ]

  oneof :executor, 0
  field :project_id, 1, type: :string
  field :name, 2, type: :string
  field :description, 3, type: :string
  field :input_parameters, 8, repeated: true, type: Google.Genomics.V1alpha2.PipelineParameter
  field :output_parameters, 9, repeated: true, type: Google.Genomics.V1alpha2.PipelineParameter
  field :docker, 5, type: Google.Genomics.V1alpha2.DockerExecutor, oneof: 0
  field :resources, 6, type: Google.Genomics.V1alpha2.PipelineResources
  field :pipeline_id, 7, type: :string
end

defmodule Google.Genomics.V1alpha2.CreatePipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline: Google.Genomics.V1alpha2.Pipeline.t() | nil
        }

  defstruct [:pipeline]

  field :pipeline, 1, type: Google.Genomics.V1alpha2.Pipeline
end

defmodule Google.Genomics.V1alpha2.RunPipelineArgs.InputsEntry do
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

defmodule Google.Genomics.V1alpha2.RunPipelineArgs.OutputsEntry do
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

defmodule Google.Genomics.V1alpha2.RunPipelineArgs.LabelsEntry do
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

defmodule Google.Genomics.V1alpha2.RunPipelineArgs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          inputs: %{String.t() => String.t()},
          outputs: %{String.t() => String.t()},
          service_account: Google.Genomics.V1alpha2.ServiceAccount.t() | nil,
          client_id: String.t(),
          resources: Google.Genomics.V1alpha2.PipelineResources.t() | nil,
          logging: Google.Genomics.V1alpha2.LoggingOptions.t() | nil,
          keep_vm_alive_on_failure_duration: Google.Protobuf.Duration.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :project_id,
    :inputs,
    :outputs,
    :service_account,
    :client_id,
    :resources,
    :logging,
    :keep_vm_alive_on_failure_duration,
    :labels
  ]

  field :project_id, 1, type: :string

  field :inputs, 2,
    repeated: true,
    type: Google.Genomics.V1alpha2.RunPipelineArgs.InputsEntry,
    map: true

  field :outputs, 3,
    repeated: true,
    type: Google.Genomics.V1alpha2.RunPipelineArgs.OutputsEntry,
    map: true

  field :service_account, 4, type: Google.Genomics.V1alpha2.ServiceAccount
  field :client_id, 5, type: :string
  field :resources, 6, type: Google.Genomics.V1alpha2.PipelineResources
  field :logging, 7, type: Google.Genomics.V1alpha2.LoggingOptions
  field :keep_vm_alive_on_failure_duration, 8, type: Google.Protobuf.Duration

  field :labels, 9,
    repeated: true,
    type: Google.Genomics.V1alpha2.RunPipelineArgs.LabelsEntry,
    map: true
end

defmodule Google.Genomics.V1alpha2.RunPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline: {atom, any},
          pipeline_args: Google.Genomics.V1alpha2.RunPipelineArgs.t() | nil
        }

  defstruct [:pipeline, :pipeline_args]

  oneof :pipeline, 0
  field :pipeline_id, 1, type: :string, oneof: 0
  field :ephemeral_pipeline, 2, type: Google.Genomics.V1alpha2.Pipeline, oneof: 0
  field :pipeline_args, 3, type: Google.Genomics.V1alpha2.RunPipelineArgs
end

defmodule Google.Genomics.V1alpha2.GetPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline_id: String.t()
        }

  defstruct [:pipeline_id]

  field :pipeline_id, 1, type: :string
end

defmodule Google.Genomics.V1alpha2.ListPipelinesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          name_prefix: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project_id, :name_prefix, :page_size, :page_token]

  field :project_id, 1, type: :string
  field :name_prefix, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Genomics.V1alpha2.ListPipelinesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipelines: [Google.Genomics.V1alpha2.Pipeline.t()],
          next_page_token: String.t()
        }

  defstruct [:pipelines, :next_page_token]

  field :pipelines, 1, repeated: true, type: Google.Genomics.V1alpha2.Pipeline
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.DeletePipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline_id: String.t()
        }

  defstruct [:pipeline_id]

  field :pipeline_id, 1, type: :string
end

defmodule Google.Genomics.V1alpha2.GetControllerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          validation_token: non_neg_integer
        }

  defstruct [:operation_id, :validation_token]

  field :operation_id, 1, type: :string
  field :validation_token, 2, type: :uint64
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.RepeatedString do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.VarsEntry do
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

defmodule Google.Genomics.V1alpha2.ControllerConfig.DisksEntry do
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

defmodule Google.Genomics.V1alpha2.ControllerConfig.GcsSourcesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Genomics.V1alpha2.ControllerConfig.RepeatedString.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1alpha2.ControllerConfig.RepeatedString
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.GcsSinksEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Genomics.V1alpha2.ControllerConfig.RepeatedString.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1alpha2.ControllerConfig.RepeatedString
end

defmodule Google.Genomics.V1alpha2.ControllerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: String.t(),
          cmd: String.t(),
          gcs_log_path: String.t(),
          machine_type: String.t(),
          vars: %{String.t() => String.t()},
          disks: %{String.t() => String.t()},
          gcs_sources: %{
            String.t() => Google.Genomics.V1alpha2.ControllerConfig.RepeatedString.t() | nil
          },
          gcs_sinks: %{
            String.t() => Google.Genomics.V1alpha2.ControllerConfig.RepeatedString.t() | nil
          }
        }

  defstruct [:image, :cmd, :gcs_log_path, :machine_type, :vars, :disks, :gcs_sources, :gcs_sinks]

  field :image, 1, type: :string
  field :cmd, 2, type: :string
  field :gcs_log_path, 3, type: :string
  field :machine_type, 4, type: :string

  field :vars, 5,
    repeated: true,
    type: Google.Genomics.V1alpha2.ControllerConfig.VarsEntry,
    map: true

  field :disks, 6,
    repeated: true,
    type: Google.Genomics.V1alpha2.ControllerConfig.DisksEntry,
    map: true

  field :gcs_sources, 7,
    repeated: true,
    type: Google.Genomics.V1alpha2.ControllerConfig.GcsSourcesEntry,
    map: true

  field :gcs_sinks, 8,
    repeated: true,
    type: Google.Genomics.V1alpha2.ControllerConfig.GcsSinksEntry,
    map: true
end

defmodule Google.Genomics.V1alpha2.TimestampEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          timestamp: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:description, :timestamp]

  field :description, 1, type: :string
  field :timestamp, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Genomics.V1alpha2.SetOperationStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          timestamp_events: [Google.Genomics.V1alpha2.TimestampEvent.t()],
          error_code: Google.Rpc.Code.t(),
          error_message: String.t(),
          validation_token: non_neg_integer
        }

  defstruct [:operation_id, :timestamp_events, :error_code, :error_message, :validation_token]

  field :operation_id, 1, type: :string
  field :timestamp_events, 2, repeated: true, type: Google.Genomics.V1alpha2.TimestampEvent
  field :error_code, 3, type: Google.Rpc.Code, enum: true
  field :error_message, 4, type: :string
  field :validation_token, 5, type: :uint64
end

defmodule Google.Genomics.V1alpha2.ServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          scopes: [String.t()]
        }

  defstruct [:email, :scopes]

  field :email, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
end

defmodule Google.Genomics.V1alpha2.LoggingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_path: String.t()
        }

  defstruct [:gcs_path]

  field :gcs_path, 1, type: :string
end

defmodule Google.Genomics.V1alpha2.PipelineResources.Disk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Genomics.V1alpha2.PipelineResources.Disk.Type.t(),
          size_gb: integer,
          source: String.t(),
          auto_delete: boolean,
          mount_point: String.t()
        }

  defstruct [:name, :type, :size_gb, :source, :auto_delete, :mount_point]

  field :name, 1, type: :string
  field :type, 2, type: Google.Genomics.V1alpha2.PipelineResources.Disk.Type, enum: true
  field :size_gb, 3, type: :int32
  field :source, 4, type: :string
  field :auto_delete, 6, type: :bool
  field :mount_point, 8, type: :string
end

defmodule Google.Genomics.V1alpha2.PipelineResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          minimum_cpu_cores: integer,
          preemptible: boolean,
          minimum_ram_gb: float | :infinity | :negative_infinity | :nan,
          disks: [Google.Genomics.V1alpha2.PipelineResources.Disk.t()],
          zones: [String.t()],
          boot_disk_size_gb: integer,
          no_address: boolean
        }

  defstruct [
    :minimum_cpu_cores,
    :preemptible,
    :minimum_ram_gb,
    :disks,
    :zones,
    :boot_disk_size_gb,
    :no_address
  ]

  field :minimum_cpu_cores, 1, type: :int32
  field :preemptible, 2, type: :bool
  field :minimum_ram_gb, 3, type: :double
  field :disks, 4, repeated: true, type: Google.Genomics.V1alpha2.PipelineResources.Disk
  field :zones, 5, repeated: true, type: :string
  field :boot_disk_size_gb, 6, type: :int32
  field :no_address, 7, type: :bool
end

defmodule Google.Genomics.V1alpha2.PipelineParameter.LocalCopy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          disk: String.t()
        }

  defstruct [:path, :disk]

  field :path, 1, type: :string
  field :disk, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.PipelineParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          default_value: String.t(),
          local_copy: Google.Genomics.V1alpha2.PipelineParameter.LocalCopy.t() | nil
        }

  defstruct [:name, :description, :default_value, :local_copy]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :default_value, 5, type: :string
  field :local_copy, 6, type: Google.Genomics.V1alpha2.PipelineParameter.LocalCopy
end

defmodule Google.Genomics.V1alpha2.DockerExecutor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_name: String.t(),
          cmd: String.t()
        }

  defstruct [:image_name, :cmd]

  field :image_name, 1, type: :string
  field :cmd, 2, type: :string
end
