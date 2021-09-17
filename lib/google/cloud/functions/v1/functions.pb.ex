defmodule Google.Cloud.Functions.V1.CloudFunctionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLOUD_FUNCTION_STATUS_UNSPECIFIED
          | :ACTIVE
          | :OFFLINE
          | :DEPLOY_IN_PROGRESS
          | :DELETE_IN_PROGRESS
          | :UNKNOWN

  field :CLOUD_FUNCTION_STATUS_UNSPECIFIED, 0

  field :ACTIVE, 1

  field :OFFLINE, 2

  field :DEPLOY_IN_PROGRESS, 3

  field :DELETE_IN_PROGRESS, 4

  field :UNKNOWN, 5
end

defmodule Google.Cloud.Functions.V1.CloudFunction.VpcConnectorEgressSettings do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED
          | :PRIVATE_RANGES_ONLY
          | :ALL_TRAFFIC

  field :VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED, 0

  field :PRIVATE_RANGES_ONLY, 1

  field :ALL_TRAFFIC, 2
end

defmodule Google.Cloud.Functions.V1.CloudFunction.IngressSettings do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INGRESS_SETTINGS_UNSPECIFIED
          | :ALLOW_ALL
          | :ALLOW_INTERNAL_ONLY
          | :ALLOW_INTERNAL_AND_GCLB

  field :INGRESS_SETTINGS_UNSPECIFIED, 0

  field :ALLOW_ALL, 1

  field :ALLOW_INTERNAL_ONLY, 2

  field :ALLOW_INTERNAL_AND_GCLB, 3
end

defmodule Google.Cloud.Functions.V1.HttpsTrigger.SecurityLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SECURITY_LEVEL_UNSPECIFIED | :SECURE_ALWAYS | :SECURE_OPTIONAL

  field :SECURITY_LEVEL_UNSPECIFIED, 0

  field :SECURE_ALWAYS, 1

  field :SECURE_OPTIONAL, 2
end

defmodule Google.Cloud.Functions.V1.CloudFunction.LabelsEntry do
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

defmodule Google.Cloud.Functions.V1.CloudFunction.EnvironmentVariablesEntry do
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

defmodule Google.Cloud.Functions.V1.CloudFunction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_code: {atom, any},
          trigger: {atom, any},
          name: String.t(),
          description: String.t(),
          status: Google.Cloud.Functions.V1.CloudFunctionStatus.t(),
          entry_point: String.t(),
          runtime: String.t(),
          timeout: Google.Protobuf.Duration.t() | nil,
          available_memory_mb: integer,
          service_account_email: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          version_id: integer,
          labels: %{String.t() => String.t()},
          environment_variables: %{String.t() => String.t()},
          network: String.t(),
          max_instances: integer,
          vpc_connector: String.t(),
          vpc_connector_egress_settings:
            Google.Cloud.Functions.V1.CloudFunction.VpcConnectorEgressSettings.t(),
          ingress_settings: Google.Cloud.Functions.V1.CloudFunction.IngressSettings.t(),
          build_id: String.t()
        }

  defstruct [
    :source_code,
    :trigger,
    :name,
    :description,
    :status,
    :entry_point,
    :runtime,
    :timeout,
    :available_memory_mb,
    :service_account_email,
    :update_time,
    :version_id,
    :labels,
    :environment_variables,
    :network,
    :max_instances,
    :vpc_connector,
    :vpc_connector_egress_settings,
    :ingress_settings,
    :build_id
  ]

  oneof :source_code, 0
  oneof :trigger, 1
  field :name, 1, type: :string
  field :description, 2, type: :string
  field :source_archive_url, 3, type: :string, oneof: 0
  field :source_repository, 4, type: Google.Cloud.Functions.V1.SourceRepository, oneof: 0
  field :source_upload_url, 16, type: :string, oneof: 0
  field :https_trigger, 5, type: Google.Cloud.Functions.V1.HttpsTrigger, oneof: 1
  field :event_trigger, 6, type: Google.Cloud.Functions.V1.EventTrigger, oneof: 1
  field :status, 7, type: Google.Cloud.Functions.V1.CloudFunctionStatus, enum: true
  field :entry_point, 8, type: :string
  field :runtime, 19, type: :string
  field :timeout, 9, type: Google.Protobuf.Duration
  field :available_memory_mb, 10, type: :int32
  field :service_account_email, 11, type: :string
  field :update_time, 12, type: Google.Protobuf.Timestamp
  field :version_id, 14, type: :int64

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Functions.V1.CloudFunction.LabelsEntry,
    map: true

  field :environment_variables, 17,
    repeated: true,
    type: Google.Cloud.Functions.V1.CloudFunction.EnvironmentVariablesEntry,
    map: true

  field :network, 18, type: :string
  field :max_instances, 20, type: :int32
  field :vpc_connector, 22, type: :string

  field :vpc_connector_egress_settings, 23,
    type: Google.Cloud.Functions.V1.CloudFunction.VpcConnectorEgressSettings,
    enum: true

  field :ingress_settings, 24,
    type: Google.Cloud.Functions.V1.CloudFunction.IngressSettings,
    enum: true

  field :build_id, 27, type: :string
end

defmodule Google.Cloud.Functions.V1.SourceRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          deployed_url: String.t()
        }

  defstruct [:url, :deployed_url]

  field :url, 1, type: :string
  field :deployed_url, 2, type: :string
end

defmodule Google.Cloud.Functions.V1.HttpsTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          security_level: Google.Cloud.Functions.V1.HttpsTrigger.SecurityLevel.t()
        }

  defstruct [:url, :security_level]

  field :url, 1, type: :string
  field :security_level, 2, type: Google.Cloud.Functions.V1.HttpsTrigger.SecurityLevel, enum: true
end

defmodule Google.Cloud.Functions.V1.EventTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_type: String.t(),
          resource: String.t(),
          service: String.t(),
          failure_policy: Google.Cloud.Functions.V1.FailurePolicy.t() | nil
        }

  defstruct [:event_type, :resource, :service, :failure_policy]

  field :event_type, 1, type: :string
  field :resource, 2, type: :string
  field :service, 3, type: :string
  field :failure_policy, 5, type: Google.Cloud.Functions.V1.FailurePolicy
end

defmodule Google.Cloud.Functions.V1.FailurePolicy.Retry do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Functions.V1.FailurePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: {atom, any}
        }

  defstruct [:action]

  oneof :action, 0
  field :retry, 1, type: Google.Cloud.Functions.V1.FailurePolicy.Retry, oneof: 0
end

defmodule Google.Cloud.Functions.V1.CreateFunctionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          function: Google.Cloud.Functions.V1.CloudFunction.t() | nil
        }

  defstruct [:location, :function]

  field :location, 1, type: :string
  field :function, 2, type: Google.Cloud.Functions.V1.CloudFunction
end

defmodule Google.Cloud.Functions.V1.UpdateFunctionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function: Google.Cloud.Functions.V1.CloudFunction.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:function, :update_mask]

  field :function, 1, type: Google.Cloud.Functions.V1.CloudFunction
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Functions.V1.GetFunctionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Functions.V1.ListFunctionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Functions.V1.ListFunctionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          functions: [Google.Cloud.Functions.V1.CloudFunction.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:functions, :next_page_token, :unreachable]

  field :functions, 1, repeated: true, type: Google.Cloud.Functions.V1.CloudFunction
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Functions.V1.DeleteFunctionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Functions.V1.CallFunctionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data: String.t()
        }

  defstruct [:name, :data]

  field :name, 1, type: :string
  field :data, 2, type: :string
end

defmodule Google.Cloud.Functions.V1.CallFunctionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution_id: String.t(),
          result: String.t(),
          error: String.t()
        }

  defstruct [:execution_id, :result, :error]

  field :execution_id, 1, type: :string
  field :result, 2, type: :string
  field :error, 3, type: :string
end

defmodule Google.Cloud.Functions.V1.GenerateUploadUrlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Functions.V1.GenerateUploadUrlResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upload_url: String.t()
        }

  defstruct [:upload_url]

  field :upload_url, 1, type: :string
end

defmodule Google.Cloud.Functions.V1.GenerateDownloadUrlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version_id: non_neg_integer
        }

  defstruct [:name, :version_id]

  field :name, 1, type: :string
  field :version_id, 2, type: :uint64
end

defmodule Google.Cloud.Functions.V1.GenerateDownloadUrlResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          download_url: String.t()
        }

  defstruct [:download_url]

  field :download_url, 1, type: :string
end

defmodule Google.Cloud.Functions.V1.CloudFunctionsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.functions.v1.CloudFunctionsService"

  rpc :ListFunctions,
      Google.Cloud.Functions.V1.ListFunctionsRequest,
      Google.Cloud.Functions.V1.ListFunctionsResponse

  rpc :GetFunction,
      Google.Cloud.Functions.V1.GetFunctionRequest,
      Google.Cloud.Functions.V1.CloudFunction

  rpc :CreateFunction,
      Google.Cloud.Functions.V1.CreateFunctionRequest,
      Google.Longrunning.Operation

  rpc :UpdateFunction,
      Google.Cloud.Functions.V1.UpdateFunctionRequest,
      Google.Longrunning.Operation

  rpc :DeleteFunction,
      Google.Cloud.Functions.V1.DeleteFunctionRequest,
      Google.Longrunning.Operation

  rpc :CallFunction,
      Google.Cloud.Functions.V1.CallFunctionRequest,
      Google.Cloud.Functions.V1.CallFunctionResponse

  rpc :GenerateUploadUrl,
      Google.Cloud.Functions.V1.GenerateUploadUrlRequest,
      Google.Cloud.Functions.V1.GenerateUploadUrlResponse

  rpc :GenerateDownloadUrl,
      Google.Cloud.Functions.V1.GenerateDownloadUrlRequest,
      Google.Cloud.Functions.V1.GenerateDownloadUrlResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Functions.V1.CloudFunctionsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Functions.V1.CloudFunctionsService.Service
end
