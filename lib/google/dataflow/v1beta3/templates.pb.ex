defmodule Google.Dataflow.V1beta3.ParameterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEFAULT, 0
  field :TEXT, 1
  field :GCS_READ_BUCKET, 2
  field :GCS_WRITE_BUCKET, 3
  field :GCS_READ_FILE, 4
  field :GCS_WRITE_FILE, 5
  field :GCS_READ_FOLDER, 6
  field :GCS_WRITE_FOLDER, 7
  field :PUBSUB_TOPIC, 8
  field :PUBSUB_SUBSCRIPTION, 9
  field :BIGQUERY_TABLE, 10
  field :JAVASCRIPT_UDF_FILE, 11
  field :SERVICE_ACCOUNT, 12
  field :MACHINE_TYPE, 13
  field :KMS_KEY_NAME, 14
  field :WORKER_REGION, 15
  field :WORKER_ZONE, 16
  field :BOOLEAN, 17
  field :ENUM, 18
  field :NUMBER, 19
  field :KAFKA_TOPIC, 20
  field :KAFKA_READ_TOPIC, 21
  field :KAFKA_WRITE_TOPIC, 22
end

defmodule Google.Dataflow.V1beta3.SDKInfo.Language do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :JAVA, 1
  field :PYTHON, 2
  field :GO, 3
end

defmodule Google.Dataflow.V1beta3.GetTemplateRequest.TemplateView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :METADATA_ONLY, 0
end

defmodule Google.Dataflow.V1beta3.GetTemplateResponse.TemplateType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :LEGACY, 1
  field :FLEX, 2
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job, 1, type: Google.Dataflow.V1beta3.Job
end

defmodule Google.Dataflow.V1beta3.ContainerSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :image, 1, type: :string
  field :metadata, 2, type: Google.Dataflow.V1beta3.TemplateMetadata
  field :sdk_info, 3, type: Google.Dataflow.V1beta3.SDKInfo, json_name: "sdkInfo"

  field :default_environment, 4,
    type: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment,
    json_name: "defaultEnvironment"

  field :image_repository_username_secret_id, 5,
    type: :string,
    json_name: "imageRepositoryUsernameSecretId"

  field :image_repository_password_secret_id, 6,
    type: :string,
    json_name: "imageRepositoryPasswordSecretId"

  field :image_repository_cert_path, 7, type: :string, json_name: "imageRepositoryCertPath"
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.LaunchOptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.TransformNameMappingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :template, 0

  field :job_name, 1, type: :string, json_name: "jobName"

  field :container_spec, 4,
    type: Google.Dataflow.V1beta3.ContainerSpec,
    json_name: "containerSpec",
    oneof: 0

  field :container_spec_gcs_path, 5, type: :string, json_name: "containerSpecGcsPath", oneof: 0

  field :parameters, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.ParametersEntry,
    map: true

  field :launch_options, 6,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.LaunchOptionsEntry,
    json_name: "launchOptions",
    map: true

  field :environment, 7, type: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment
  field :update, 8, type: :bool

  field :transform_name_mappings, 9,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.TransformNameMappingsEntry,
    json_name: "transformNameMappings",
    map: true
end

defmodule Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment.AdditionalUserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :num_workers, 1, type: :int32, json_name: "numWorkers"
  field :max_workers, 2, type: :int32, json_name: "maxWorkers"
  field :zone, 3, type: :string
  field :service_account_email, 4, type: :string, json_name: "serviceAccountEmail"
  field :temp_location, 5, type: :string, json_name: "tempLocation"
  field :machine_type, 6, type: :string, json_name: "machineType"

  field :additional_experiments, 7,
    repeated: true,
    type: :string,
    json_name: "additionalExperiments"

  field :network, 8, type: :string
  field :subnetwork, 9, type: :string

  field :additional_user_labels, 10,
    repeated: true,
    type: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment.AdditionalUserLabelsEntry,
    json_name: "additionalUserLabels",
    map: true

  field :kms_key_name, 11, type: :string, json_name: "kmsKeyName"

  field :ip_configuration, 12,
    type: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration,
    json_name: "ipConfiguration",
    enum: true

  field :worker_region, 13, type: :string, json_name: "workerRegion"
  field :worker_zone, 14, type: :string, json_name: "workerZone"
  field :enable_streaming_engine, 15, type: :bool, json_name: "enableStreamingEngine"

  field :flexrs_goal, 16,
    type: Google.Dataflow.V1beta3.FlexResourceSchedulingGoal,
    json_name: "flexrsGoal",
    enum: true

  field :staging_location, 17, type: :string, json_name: "stagingLocation"
  field :sdk_container_image, 18, type: :string, json_name: "sdkContainerImage"
  field :disk_size_gb, 20, type: :int32, json_name: "diskSizeGb"

  field :autoscaling_algorithm, 21,
    type: Google.Dataflow.V1beta3.AutoscalingAlgorithm,
    json_name: "autoscalingAlgorithm",
    enum: true

  field :dump_heap_on_oom, 22, type: :bool, json_name: "dumpHeapOnOom"
  field :save_heap_dumps_to_gcs_path, 23, type: :string, json_name: "saveHeapDumpsToGcsPath"
  field :launcher_machine_type, 24, type: :string, json_name: "launcherMachineType"

  field :enable_launcher_vm_serial_port_logging, 25,
    type: :bool,
    json_name: "enableLauncherVmSerialPortLogging"

  field :streaming_mode, 26,
    proto3_optional: true,
    type: Google.Dataflow.V1beta3.StreamingMode,
    json_name: "streamingMode",
    enum: true,
    deprecated: false
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"

  field :launch_parameter, 2,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter,
    json_name: "launchParameter"

  field :location, 3, type: :string
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Dataflow.V1beta3.RuntimeEnvironment.AdditionalUserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.RuntimeEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :num_workers, 11, type: :int32, json_name: "numWorkers"
  field :max_workers, 1, type: :int32, json_name: "maxWorkers"
  field :zone, 2, type: :string
  field :service_account_email, 3, type: :string, json_name: "serviceAccountEmail"
  field :temp_location, 4, type: :string, json_name: "tempLocation"
  field :bypass_temp_dir_validation, 5, type: :bool, json_name: "bypassTempDirValidation"
  field :machine_type, 6, type: :string, json_name: "machineType"

  field :additional_experiments, 7,
    repeated: true,
    type: :string,
    json_name: "additionalExperiments"

  field :network, 8, type: :string
  field :subnetwork, 9, type: :string

  field :additional_user_labels, 10,
    repeated: true,
    type: Google.Dataflow.V1beta3.RuntimeEnvironment.AdditionalUserLabelsEntry,
    json_name: "additionalUserLabels",
    map: true

  field :kms_key_name, 12, type: :string, json_name: "kmsKeyName"

  field :ip_configuration, 14,
    type: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration,
    json_name: "ipConfiguration",
    enum: true

  field :worker_region, 15, type: :string, json_name: "workerRegion"
  field :worker_zone, 16, type: :string, json_name: "workerZone"
  field :enable_streaming_engine, 17, type: :bool, json_name: "enableStreamingEngine"
  field :disk_size_gb, 18, type: :int32, json_name: "diskSizeGb"

  field :streaming_mode, 19,
    proto3_optional: true,
    type: Google.Dataflow.V1beta3.StreamingMode,
    json_name: "streamingMode",
    enum: true,
    deprecated: false
end

defmodule Google.Dataflow.V1beta3.ParameterMetadataEnumOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
  field :label, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
end

defmodule Google.Dataflow.V1beta3.ParameterMetadata.CustomMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.ParameterMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :label, 2, type: :string
  field :help_text, 3, type: :string, json_name: "helpText"
  field :is_optional, 4, type: :bool, json_name: "isOptional"
  field :regexes, 5, repeated: true, type: :string

  field :param_type, 6,
    type: Google.Dataflow.V1beta3.ParameterType,
    json_name: "paramType",
    enum: true

  field :custom_metadata, 7,
    repeated: true,
    type: Google.Dataflow.V1beta3.ParameterMetadata.CustomMetadataEntry,
    json_name: "customMetadata",
    map: true

  field :group_name, 8, type: :string, json_name: "groupName"
  field :parent_name, 9, type: :string, json_name: "parentName"

  field :parent_trigger_values, 10,
    repeated: true,
    type: :string,
    json_name: "parentTriggerValues"

  field :enum_options, 11,
    repeated: true,
    type: Google.Dataflow.V1beta3.ParameterMetadataEnumOption,
    json_name: "enumOptions"

  field :default_value, 12, type: :string, json_name: "defaultValue"
  field :hidden_ui, 13, type: :bool, json_name: "hiddenUi"
end

defmodule Google.Dataflow.V1beta3.TemplateMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :parameters, 3, repeated: true, type: Google.Dataflow.V1beta3.ParameterMetadata
  field :streaming, 5, type: :bool
  field :supports_at_least_once, 6, type: :bool, json_name: "supportsAtLeastOnce"
  field :supports_exactly_once, 7, type: :bool, json_name: "supportsExactlyOnce"
  field :default_streaming_mode, 8, type: :string, json_name: "defaultStreamingMode"
end

defmodule Google.Dataflow.V1beta3.SDKInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :language, 1, type: Google.Dataflow.V1beta3.SDKInfo.Language, enum: true
  field :version, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.RuntimeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sdk_info, 1, type: Google.Dataflow.V1beta3.SDKInfo, json_name: "sdkInfo"
  field :parameters, 2, repeated: true, type: Google.Dataflow.V1beta3.ParameterMetadata
end

defmodule Google.Dataflow.V1beta3.CreateJobFromTemplateRequest.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.CreateJobFromTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :template, 0

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_name, 4, type: :string, json_name: "jobName"
  field :gcs_path, 2, type: :string, json_name: "gcsPath", oneof: 0

  field :parameters, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.CreateJobFromTemplateRequest.ParametersEntry,
    map: true

  field :environment, 5, type: Google.Dataflow.V1beta3.RuntimeEnvironment
  field :location, 6, type: :string
end

defmodule Google.Dataflow.V1beta3.GetTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :template, 0

  field :project_id, 1, type: :string, json_name: "projectId"
  field :gcs_path, 2, type: :string, json_name: "gcsPath", oneof: 0
  field :view, 3, type: Google.Dataflow.V1beta3.GetTemplateRequest.TemplateView, enum: true
  field :location, 4, type: :string
end

defmodule Google.Dataflow.V1beta3.GetTemplateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :metadata, 2, type: Google.Dataflow.V1beta3.TemplateMetadata

  field :template_type, 3,
    type: Google.Dataflow.V1beta3.GetTemplateResponse.TemplateType,
    json_name: "templateType",
    enum: true

  field :runtime_metadata, 4,
    type: Google.Dataflow.V1beta3.RuntimeMetadata,
    json_name: "runtimeMetadata"
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateParameters.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateParameters.TransformNameMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName"

  field :parameters, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchTemplateParameters.ParametersEntry,
    map: true

  field :environment, 3, type: Google.Dataflow.V1beta3.RuntimeEnvironment
  field :update, 4, type: :bool

  field :transform_name_mapping, 5,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchTemplateParameters.TransformNameMappingEntry,
    json_name: "transformNameMapping",
    map: true
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :template, 0

  field :project_id, 1, type: :string, json_name: "projectId"
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :gcs_path, 3, type: :string, json_name: "gcsPath", oneof: 0

  field :dynamic_template, 6,
    type: Google.Dataflow.V1beta3.DynamicTemplateLaunchParams,
    json_name: "dynamicTemplate",
    oneof: 0

  field :launch_parameters, 4,
    type: Google.Dataflow.V1beta3.LaunchTemplateParameters,
    json_name: "launchParameters"

  field :location, 5, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job, 1, type: Google.Dataflow.V1beta3.Job
end

defmodule Google.Dataflow.V1beta3.InvalidTemplateParameters.ParameterViolation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parameter, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.InvalidTemplateParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parameter_violations, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.InvalidTemplateParameters.ParameterViolation,
    json_name: "parameterViolations"
end

defmodule Google.Dataflow.V1beta3.DynamicTemplateLaunchParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gcs_path, 1, type: :string, json_name: "gcsPath"
  field :staging_location, 2, type: :string, json_name: "stagingLocation"
end

defmodule Google.Dataflow.V1beta3.TemplatesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.dataflow.v1beta3.TemplatesService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateJobFromTemplate,
      Google.Dataflow.V1beta3.CreateJobFromTemplateRequest,
      Google.Dataflow.V1beta3.Job

  rpc :LaunchTemplate,
      Google.Dataflow.V1beta3.LaunchTemplateRequest,
      Google.Dataflow.V1beta3.LaunchTemplateResponse

  rpc :GetTemplate,
      Google.Dataflow.V1beta3.GetTemplateRequest,
      Google.Dataflow.V1beta3.GetTemplateResponse
end

defmodule Google.Dataflow.V1beta3.TemplatesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Dataflow.V1beta3.TemplatesService.Service
end

defmodule Google.Dataflow.V1beta3.FlexTemplatesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.dataflow.v1beta3.FlexTemplatesService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :LaunchFlexTemplate,
      Google.Dataflow.V1beta3.LaunchFlexTemplateRequest,
      Google.Dataflow.V1beta3.LaunchFlexTemplateResponse
end

defmodule Google.Dataflow.V1beta3.FlexTemplatesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Dataflow.V1beta3.FlexTemplatesService.Service
end
