defmodule Google.Dataflow.V1beta3.ParameterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DEFAULT
          | :TEXT
          | :GCS_READ_BUCKET
          | :GCS_WRITE_BUCKET
          | :GCS_READ_FILE
          | :GCS_WRITE_FILE
          | :GCS_READ_FOLDER
          | :GCS_WRITE_FOLDER
          | :PUBSUB_TOPIC
          | :PUBSUB_SUBSCRIPTION

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
end

defmodule Google.Dataflow.V1beta3.SDKInfo.Language do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :JAVA | :PYTHON

  field :UNKNOWN, 0

  field :JAVA, 1

  field :PYTHON, 2
end

defmodule Google.Dataflow.V1beta3.GetTemplateRequest.TemplateView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METADATA_ONLY

  field :METADATA_ONLY, 0
end

defmodule Google.Dataflow.V1beta3.GetTemplateResponse.TemplateType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :LEGACY | :FLEX

  field :UNKNOWN, 0

  field :LEGACY, 1

  field :FLEX, 2
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Dataflow.V1beta3.Job.t() | nil
        }

  defstruct [:job]

  field :job, 1, type: Google.Dataflow.V1beta3.Job
end

defmodule Google.Dataflow.V1beta3.ContainerSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: String.t(),
          metadata: Google.Dataflow.V1beta3.TemplateMetadata.t() | nil,
          sdk_info: Google.Dataflow.V1beta3.SDKInfo.t() | nil,
          default_environment: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment.t() | nil
        }

  defstruct [:image, :metadata, :sdk_info, :default_environment]

  field :image, 1, type: :string
  field :metadata, 2, type: Google.Dataflow.V1beta3.TemplateMetadata
  field :sdk_info, 3, type: Google.Dataflow.V1beta3.SDKInfo
  field :default_environment, 4, type: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.ParametersEntry do
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

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.LaunchOptionsEntry do
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

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.TransformNameMappingsEntry do
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

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: {atom, any},
          job_name: String.t(),
          parameters: %{String.t() => String.t()},
          launch_options: %{String.t() => String.t()},
          environment: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment.t() | nil,
          update: boolean,
          transform_name_mappings: %{String.t() => String.t()}
        }

  defstruct [
    :template,
    :job_name,
    :parameters,
    :launch_options,
    :environment,
    :update,
    :transform_name_mappings
  ]

  oneof :template, 0
  field :job_name, 1, type: :string
  field :container_spec, 4, type: Google.Dataflow.V1beta3.ContainerSpec, oneof: 0
  field :container_spec_gcs_path, 5, type: :string, oneof: 0

  field :parameters, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.ParametersEntry,
    map: true

  field :launch_options, 6,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.LaunchOptionsEntry,
    map: true

  field :environment, 7, type: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment
  field :update, 8, type: :bool

  field :transform_name_mappings, 9,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.TransformNameMappingsEntry,
    map: true
end

defmodule Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment.AdditionalUserLabelsEntry do
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

defmodule Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_workers: integer,
          max_workers: integer,
          zone: String.t(),
          service_account_email: String.t(),
          temp_location: String.t(),
          machine_type: String.t(),
          additional_experiments: [String.t()],
          network: String.t(),
          subnetwork: String.t(),
          additional_user_labels: %{String.t() => String.t()},
          kms_key_name: String.t(),
          ip_configuration: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration.t(),
          worker_region: String.t(),
          worker_zone: String.t(),
          enable_streaming_engine: boolean,
          flexrs_goal: Google.Dataflow.V1beta3.FlexResourceSchedulingGoal.t(),
          staging_location: String.t(),
          sdk_container_image: String.t()
        }

  defstruct [
    :num_workers,
    :max_workers,
    :zone,
    :service_account_email,
    :temp_location,
    :machine_type,
    :additional_experiments,
    :network,
    :subnetwork,
    :additional_user_labels,
    :kms_key_name,
    :ip_configuration,
    :worker_region,
    :worker_zone,
    :enable_streaming_engine,
    :flexrs_goal,
    :staging_location,
    :sdk_container_image
  ]

  field :num_workers, 1, type: :int32
  field :max_workers, 2, type: :int32
  field :zone, 3, type: :string
  field :service_account_email, 4, type: :string
  field :temp_location, 5, type: :string
  field :machine_type, 6, type: :string
  field :additional_experiments, 7, repeated: true, type: :string
  field :network, 8, type: :string
  field :subnetwork, 9, type: :string

  field :additional_user_labels, 10,
    repeated: true,
    type: Google.Dataflow.V1beta3.FlexTemplateRuntimeEnvironment.AdditionalUserLabelsEntry,
    map: true

  field :kms_key_name, 11, type: :string

  field :ip_configuration, 12,
    type: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration,
    enum: true

  field :worker_region, 13, type: :string
  field :worker_zone, 14, type: :string
  field :enable_streaming_engine, 15, type: :bool
  field :flexrs_goal, 16, type: Google.Dataflow.V1beta3.FlexResourceSchedulingGoal, enum: true
  field :staging_location, 17, type: :string
  field :sdk_container_image, 18, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchFlexTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          launch_parameter: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter.t() | nil,
          location: String.t(),
          validate_only: boolean
        }

  defstruct [:project_id, :launch_parameter, :location, :validate_only]

  field :project_id, 1, type: :string
  field :launch_parameter, 2, type: Google.Dataflow.V1beta3.LaunchFlexTemplateParameter
  field :location, 3, type: :string
  field :validate_only, 4, type: :bool
end

defmodule Google.Dataflow.V1beta3.RuntimeEnvironment.AdditionalUserLabelsEntry do
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

defmodule Google.Dataflow.V1beta3.RuntimeEnvironment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_workers: integer,
          max_workers: integer,
          zone: String.t(),
          service_account_email: String.t(),
          temp_location: String.t(),
          bypass_temp_dir_validation: boolean,
          machine_type: String.t(),
          additional_experiments: [String.t()],
          network: String.t(),
          subnetwork: String.t(),
          additional_user_labels: %{String.t() => String.t()},
          kms_key_name: String.t(),
          ip_configuration: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration.t(),
          worker_region: String.t(),
          worker_zone: String.t(),
          enable_streaming_engine: boolean
        }

  defstruct [
    :num_workers,
    :max_workers,
    :zone,
    :service_account_email,
    :temp_location,
    :bypass_temp_dir_validation,
    :machine_type,
    :additional_experiments,
    :network,
    :subnetwork,
    :additional_user_labels,
    :kms_key_name,
    :ip_configuration,
    :worker_region,
    :worker_zone,
    :enable_streaming_engine
  ]

  field :num_workers, 11, type: :int32
  field :max_workers, 1, type: :int32
  field :zone, 2, type: :string
  field :service_account_email, 3, type: :string
  field :temp_location, 4, type: :string
  field :bypass_temp_dir_validation, 5, type: :bool
  field :machine_type, 6, type: :string
  field :additional_experiments, 7, repeated: true, type: :string
  field :network, 8, type: :string
  field :subnetwork, 9, type: :string

  field :additional_user_labels, 10,
    repeated: true,
    type: Google.Dataflow.V1beta3.RuntimeEnvironment.AdditionalUserLabelsEntry,
    map: true

  field :kms_key_name, 12, type: :string

  field :ip_configuration, 14,
    type: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration,
    enum: true

  field :worker_region, 15, type: :string
  field :worker_zone, 16, type: :string
  field :enable_streaming_engine, 17, type: :bool
end

defmodule Google.Dataflow.V1beta3.ParameterMetadata.CustomMetadataEntry do
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

defmodule Google.Dataflow.V1beta3.ParameterMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          label: String.t(),
          help_text: String.t(),
          is_optional: boolean,
          regexes: [String.t()],
          param_type: Google.Dataflow.V1beta3.ParameterType.t(),
          custom_metadata: %{String.t() => String.t()}
        }

  defstruct [:name, :label, :help_text, :is_optional, :regexes, :param_type, :custom_metadata]

  field :name, 1, type: :string
  field :label, 2, type: :string
  field :help_text, 3, type: :string
  field :is_optional, 4, type: :bool
  field :regexes, 5, repeated: true, type: :string
  field :param_type, 6, type: Google.Dataflow.V1beta3.ParameterType, enum: true

  field :custom_metadata, 7,
    repeated: true,
    type: Google.Dataflow.V1beta3.ParameterMetadata.CustomMetadataEntry,
    map: true
end

defmodule Google.Dataflow.V1beta3.TemplateMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          parameters: [Google.Dataflow.V1beta3.ParameterMetadata.t()]
        }

  defstruct [:name, :description, :parameters]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :parameters, 3, repeated: true, type: Google.Dataflow.V1beta3.ParameterMetadata
end

defmodule Google.Dataflow.V1beta3.SDKInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language: Google.Dataflow.V1beta3.SDKInfo.Language.t(),
          version: String.t()
        }

  defstruct [:language, :version]

  field :language, 1, type: Google.Dataflow.V1beta3.SDKInfo.Language, enum: true
  field :version, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.RuntimeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sdk_info: Google.Dataflow.V1beta3.SDKInfo.t() | nil,
          parameters: [Google.Dataflow.V1beta3.ParameterMetadata.t()]
        }

  defstruct [:sdk_info, :parameters]

  field :sdk_info, 1, type: Google.Dataflow.V1beta3.SDKInfo
  field :parameters, 2, repeated: true, type: Google.Dataflow.V1beta3.ParameterMetadata
end

defmodule Google.Dataflow.V1beta3.CreateJobFromTemplateRequest.ParametersEntry do
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

defmodule Google.Dataflow.V1beta3.CreateJobFromTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: {atom, any},
          project_id: String.t(),
          job_name: String.t(),
          parameters: %{String.t() => String.t()},
          environment: Google.Dataflow.V1beta3.RuntimeEnvironment.t() | nil,
          location: String.t()
        }

  defstruct [:template, :project_id, :job_name, :parameters, :environment, :location]

  oneof :template, 0
  field :project_id, 1, type: :string
  field :job_name, 4, type: :string
  field :gcs_path, 2, type: :string, oneof: 0

  field :parameters, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.CreateJobFromTemplateRequest.ParametersEntry,
    map: true

  field :environment, 5, type: Google.Dataflow.V1beta3.RuntimeEnvironment
  field :location, 6, type: :string
end

defmodule Google.Dataflow.V1beta3.GetTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: {atom, any},
          project_id: String.t(),
          view: Google.Dataflow.V1beta3.GetTemplateRequest.TemplateView.t(),
          location: String.t()
        }

  defstruct [:template, :project_id, :view, :location]

  oneof :template, 0
  field :project_id, 1, type: :string
  field :gcs_path, 2, type: :string, oneof: 0
  field :view, 3, type: Google.Dataflow.V1beta3.GetTemplateRequest.TemplateView, enum: true
  field :location, 4, type: :string
end

defmodule Google.Dataflow.V1beta3.GetTemplateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          metadata: Google.Dataflow.V1beta3.TemplateMetadata.t() | nil,
          template_type: Google.Dataflow.V1beta3.GetTemplateResponse.TemplateType.t(),
          runtime_metadata: Google.Dataflow.V1beta3.RuntimeMetadata.t() | nil
        }

  defstruct [:status, :metadata, :template_type, :runtime_metadata]

  field :status, 1, type: Google.Rpc.Status
  field :metadata, 2, type: Google.Dataflow.V1beta3.TemplateMetadata

  field :template_type, 3,
    type: Google.Dataflow.V1beta3.GetTemplateResponse.TemplateType,
    enum: true

  field :runtime_metadata, 4, type: Google.Dataflow.V1beta3.RuntimeMetadata
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateParameters.ParametersEntry do
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

defmodule Google.Dataflow.V1beta3.LaunchTemplateParameters.TransformNameMappingEntry do
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

defmodule Google.Dataflow.V1beta3.LaunchTemplateParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: String.t(),
          parameters: %{String.t() => String.t()},
          environment: Google.Dataflow.V1beta3.RuntimeEnvironment.t() | nil,
          update: boolean,
          transform_name_mapping: %{String.t() => String.t()}
        }

  defstruct [:job_name, :parameters, :environment, :update, :transform_name_mapping]

  field :job_name, 1, type: :string

  field :parameters, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchTemplateParameters.ParametersEntry,
    map: true

  field :environment, 3, type: Google.Dataflow.V1beta3.RuntimeEnvironment
  field :update, 4, type: :bool

  field :transform_name_mapping, 5,
    repeated: true,
    type: Google.Dataflow.V1beta3.LaunchTemplateParameters.TransformNameMappingEntry,
    map: true
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          template: {atom, any},
          project_id: String.t(),
          validate_only: boolean,
          launch_parameters: Google.Dataflow.V1beta3.LaunchTemplateParameters.t() | nil,
          location: String.t()
        }

  defstruct [:template, :project_id, :validate_only, :launch_parameters, :location]

  oneof :template, 0
  field :project_id, 1, type: :string
  field :validate_only, 2, type: :bool
  field :gcs_path, 3, type: :string, oneof: 0
  field :dynamic_template, 6, type: Google.Dataflow.V1beta3.DynamicTemplateLaunchParams, oneof: 0
  field :launch_parameters, 4, type: Google.Dataflow.V1beta3.LaunchTemplateParameters
  field :location, 5, type: :string
end

defmodule Google.Dataflow.V1beta3.LaunchTemplateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Dataflow.V1beta3.Job.t() | nil
        }

  defstruct [:job]

  field :job, 1, type: Google.Dataflow.V1beta3.Job
end

defmodule Google.Dataflow.V1beta3.InvalidTemplateParameters.ParameterViolation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter: String.t(),
          description: String.t()
        }

  defstruct [:parameter, :description]

  field :parameter, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.InvalidTemplateParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_violations: [
            Google.Dataflow.V1beta3.InvalidTemplateParameters.ParameterViolation.t()
          ]
        }

  defstruct [:parameter_violations]

  field :parameter_violations, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.InvalidTemplateParameters.ParameterViolation
end

defmodule Google.Dataflow.V1beta3.DynamicTemplateLaunchParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_path: String.t(),
          staging_location: String.t()
        }

  defstruct [:gcs_path, :staging_location]

  field :gcs_path, 1, type: :string
  field :staging_location, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.TemplatesService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.dataflow.v1beta3.TemplatesService"

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
  use GRPC.Service, name: "google.dataflow.v1beta3.FlexTemplatesService"

  rpc :LaunchFlexTemplate,
      Google.Dataflow.V1beta3.LaunchFlexTemplateRequest,
      Google.Dataflow.V1beta3.LaunchFlexTemplateResponse
end

defmodule Google.Dataflow.V1beta3.FlexTemplatesService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Dataflow.V1beta3.FlexTemplatesService.Service
end
