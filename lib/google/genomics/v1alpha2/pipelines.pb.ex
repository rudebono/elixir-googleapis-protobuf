defmodule Google.Genomics.V1alpha2.PipelineResources.Disk.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PERSISTENT_HDD, 1
  field :PERSISTENT_SSD, 2
  field :LOCAL_SSD, 3
end

defmodule Google.Genomics.V1alpha2.ComputeEngine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :instance_name, 1, type: :string, json_name: "instanceName"
  field :zone, 2, type: :string
  field :machine_type, 3, type: :string, json_name: "machineType"
  field :disk_names, 4, repeated: true, type: :string, json_name: "diskNames"
end

defmodule Google.Genomics.V1alpha2.RuntimeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :compute_engine, 1,
    type: Google.Genomics.V1alpha2.ComputeEngine,
    json_name: "computeEngine"
end

defmodule Google.Genomics.V1alpha2.Pipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :executor, 0

  field :project_id, 1, type: :string, json_name: "projectId"
  field :name, 2, type: :string
  field :description, 3, type: :string

  field :input_parameters, 8,
    repeated: true,
    type: Google.Genomics.V1alpha2.PipelineParameter,
    json_name: "inputParameters"

  field :output_parameters, 9,
    repeated: true,
    type: Google.Genomics.V1alpha2.PipelineParameter,
    json_name: "outputParameters"

  field :docker, 5, type: Google.Genomics.V1alpha2.DockerExecutor, oneof: 0
  field :resources, 6, type: Google.Genomics.V1alpha2.PipelineResources
  field :pipeline_id, 7, type: :string, json_name: "pipelineId"
end

defmodule Google.Genomics.V1alpha2.CreatePipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pipeline, 1, type: Google.Genomics.V1alpha2.Pipeline
end

defmodule Google.Genomics.V1alpha2.RunPipelineArgs.InputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.RunPipelineArgs.OutputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.RunPipelineArgs.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.RunPipelineArgs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"

  field :inputs, 2,
    repeated: true,
    type: Google.Genomics.V1alpha2.RunPipelineArgs.InputsEntry,
    map: true

  field :outputs, 3,
    repeated: true,
    type: Google.Genomics.V1alpha2.RunPipelineArgs.OutputsEntry,
    map: true

  field :service_account, 4,
    type: Google.Genomics.V1alpha2.ServiceAccount,
    json_name: "serviceAccount"

  field :client_id, 5, type: :string, json_name: "clientId"
  field :resources, 6, type: Google.Genomics.V1alpha2.PipelineResources
  field :logging, 7, type: Google.Genomics.V1alpha2.LoggingOptions

  field :keep_vm_alive_on_failure_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "keepVmAliveOnFailureDuration"

  field :labels, 9,
    repeated: true,
    type: Google.Genomics.V1alpha2.RunPipelineArgs.LabelsEntry,
    map: true
end

defmodule Google.Genomics.V1alpha2.RunPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :pipeline, 0

  field :pipeline_id, 1, type: :string, json_name: "pipelineId", oneof: 0

  field :ephemeral_pipeline, 2,
    type: Google.Genomics.V1alpha2.Pipeline,
    json_name: "ephemeralPipeline",
    oneof: 0

  field :pipeline_args, 3,
    type: Google.Genomics.V1alpha2.RunPipelineArgs,
    json_name: "pipelineArgs"
end

defmodule Google.Genomics.V1alpha2.GetPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pipeline_id, 1, type: :string, json_name: "pipelineId"
end

defmodule Google.Genomics.V1alpha2.ListPipelinesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :name_prefix, 2, type: :string, json_name: "namePrefix"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Genomics.V1alpha2.ListPipelinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pipelines, 1, repeated: true, type: Google.Genomics.V1alpha2.Pipeline
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1alpha2.DeletePipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pipeline_id, 1, type: :string, json_name: "pipelineId"
end

defmodule Google.Genomics.V1alpha2.GetControllerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"
  field :validation_token, 2, type: :uint64, json_name: "validationToken"
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.RepeatedString do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.VarsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.DisksEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.GcsSourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1alpha2.ControllerConfig.RepeatedString
end

defmodule Google.Genomics.V1alpha2.ControllerConfig.GcsSinksEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1alpha2.ControllerConfig.RepeatedString
end

defmodule Google.Genomics.V1alpha2.ControllerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image, 1, type: :string
  field :cmd, 2, type: :string
  field :gcs_log_path, 3, type: :string, json_name: "gcsLogPath"
  field :machine_type, 4, type: :string, json_name: "machineType"

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
    json_name: "gcsSources",
    map: true

  field :gcs_sinks, 8,
    repeated: true,
    type: Google.Genomics.V1alpha2.ControllerConfig.GcsSinksEntry,
    json_name: "gcsSinks",
    map: true
end

defmodule Google.Genomics.V1alpha2.TimestampEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :description, 1, type: :string
  field :timestamp, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Genomics.V1alpha2.SetOperationStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"

  field :timestamp_events, 2,
    repeated: true,
    type: Google.Genomics.V1alpha2.TimestampEvent,
    json_name: "timestampEvents"

  field :error_code, 3, type: Google.Rpc.Code, json_name: "errorCode", enum: true
  field :error_message, 4, type: :string, json_name: "errorMessage"
  field :validation_token, 5, type: :uint64, json_name: "validationToken"
end

defmodule Google.Genomics.V1alpha2.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :email, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
end

defmodule Google.Genomics.V1alpha2.LoggingOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gcs_path, 1, type: :string, json_name: "gcsPath"
end

defmodule Google.Genomics.V1alpha2.PipelineResources.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Genomics.V1alpha2.PipelineResources.Disk.Type, enum: true
  field :size_gb, 3, type: :int32, json_name: "sizeGb"
  field :source, 4, type: :string
  field :auto_delete, 6, type: :bool, json_name: "autoDelete"
  field :mount_point, 8, type: :string, json_name: "mountPoint"
end

defmodule Google.Genomics.V1alpha2.PipelineResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :minimum_cpu_cores, 1, type: :int32, json_name: "minimumCpuCores"
  field :preemptible, 2, type: :bool
  field :minimum_ram_gb, 3, type: :double, json_name: "minimumRamGb"
  field :disks, 4, repeated: true, type: Google.Genomics.V1alpha2.PipelineResources.Disk
  field :zones, 5, repeated: true, type: :string
  field :boot_disk_size_gb, 6, type: :int32, json_name: "bootDiskSizeGb"
  field :no_address, 7, type: :bool, json_name: "noAddress"
end

defmodule Google.Genomics.V1alpha2.PipelineParameter.LocalCopy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string
  field :disk, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.PipelineParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :default_value, 5, type: :string, json_name: "defaultValue"

  field :local_copy, 6,
    type: Google.Genomics.V1alpha2.PipelineParameter.LocalCopy,
    json_name: "localCopy"
end

defmodule Google.Genomics.V1alpha2.DockerExecutor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image_name, 1, type: :string, json_name: "imageName"
  field :cmd, 2, type: :string
end

defmodule Google.Genomics.V1alpha2.PipelinesV1Alpha2.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.genomics.v1alpha2.PipelinesV1Alpha2",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreatePipeline,
      Google.Genomics.V1alpha2.CreatePipelineRequest,
      Google.Genomics.V1alpha2.Pipeline

  rpc :RunPipeline, Google.Genomics.V1alpha2.RunPipelineRequest, Google.Longrunning.Operation

  rpc :GetPipeline, Google.Genomics.V1alpha2.GetPipelineRequest, Google.Genomics.V1alpha2.Pipeline

  rpc :ListPipelines,
      Google.Genomics.V1alpha2.ListPipelinesRequest,
      Google.Genomics.V1alpha2.ListPipelinesResponse

  rpc :DeletePipeline, Google.Genomics.V1alpha2.DeletePipelineRequest, Google.Protobuf.Empty

  rpc :GetControllerConfig,
      Google.Genomics.V1alpha2.GetControllerConfigRequest,
      Google.Genomics.V1alpha2.ControllerConfig

  rpc :SetOperationStatus,
      Google.Genomics.V1alpha2.SetOperationStatusRequest,
      Google.Protobuf.Empty
end

defmodule Google.Genomics.V1alpha2.PipelinesV1Alpha2.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1alpha2.PipelinesV1Alpha2.Service
end
