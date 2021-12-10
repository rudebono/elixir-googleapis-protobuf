defmodule Google.Cloud.Datafusion.V1.Accelerator.AcceleratorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACCELERATOR_TYPE_UNSPECIFIED | :CDC | :HEALTHCARE | :CCAI_INSIGHTS

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :CDC, 1
  field :HEALTHCARE, 2
  field :CCAI_INSIGHTS, 3
end
defmodule Google.Cloud.Datafusion.V1.Accelerator.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ENABLED | :DISABLED | :UNKNOWN

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :UNKNOWN, 3
end
defmodule Google.Cloud.Datafusion.V1.Instance.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :BASIC | :ENTERPRISE | :DEVELOPER

  field :TYPE_UNSPECIFIED, 0
  field :BASIC, 1
  field :ENTERPRISE, 2
  field :DEVELOPER, 3
end
defmodule Google.Cloud.Datafusion.V1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :ACTIVE
          | :FAILED
          | :DELETING
          | :UPGRADING
          | :RESTARTING
          | :UPDATING
          | :AUTO_UPDATING
          | :AUTO_UPGRADING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPGRADING, 5
  field :RESTARTING, 6
  field :UPDATING, 7
  field :AUTO_UPDATING, 8
  field :AUTO_UPGRADING, 9
end
defmodule Google.Cloud.Datafusion.V1.NetworkConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          ip_allocation: String.t()
        }

  defstruct network: "",
            ip_allocation: ""

  field :network, 1, type: :string
  field :ip_allocation, 2, type: :string, json_name: "ipAllocation"
end
defmodule Google.Cloud.Datafusion.V1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version_number: String.t(),
          default_version: boolean,
          available_features: [String.t()]
        }

  defstruct version_number: "",
            default_version: false,
            available_features: []

  field :version_number, 1, type: :string, json_name: "versionNumber"
  field :default_version, 2, type: :bool, json_name: "defaultVersion"
  field :available_features, 3, repeated: true, type: :string, json_name: "availableFeatures"
end
defmodule Google.Cloud.Datafusion.V1.Accelerator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_type: Google.Cloud.Datafusion.V1.Accelerator.AcceleratorType.t(),
          state: Google.Cloud.Datafusion.V1.Accelerator.State.t()
        }

  defstruct accelerator_type: :ACCELERATOR_TYPE_UNSPECIFIED,
            state: :STATE_UNSPECIFIED

  field :accelerator_type, 1,
    type: Google.Cloud.Datafusion.V1.Accelerator.AcceleratorType,
    json_name: "acceleratorType",
    enum: true

  field :state, 2, type: Google.Cloud.Datafusion.V1.Accelerator.State, enum: true
end
defmodule Google.Cloud.Datafusion.V1.CryptoKeyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_reference: String.t()
        }

  defstruct key_reference: ""

  field :key_reference, 1, type: :string, json_name: "keyReference"
end
defmodule Google.Cloud.Datafusion.V1.Instance.LabelsEntry do
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
defmodule Google.Cloud.Datafusion.V1.Instance.OptionsEntry do
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
defmodule Google.Cloud.Datafusion.V1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          type: Google.Cloud.Datafusion.V1.Instance.Type.t(),
          enable_stackdriver_logging: boolean,
          enable_stackdriver_monitoring: boolean,
          private_instance: boolean,
          network_config: Google.Cloud.Datafusion.V1.NetworkConfig.t() | nil,
          labels: %{String.t() => String.t()},
          options: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Datafusion.V1.Instance.State.t(),
          state_message: String.t(),
          service_endpoint: String.t(),
          zone: String.t(),
          version: String.t(),
          service_account: String.t(),
          display_name: String.t(),
          available_version: [Google.Cloud.Datafusion.V1.Version.t()],
          api_endpoint: String.t(),
          gcs_bucket: String.t(),
          accelerators: [Google.Cloud.Datafusion.V1.Accelerator.t()],
          p4_service_account: String.t(),
          tenant_project_id: String.t(),
          dataproc_service_account: String.t(),
          enable_rbac: boolean,
          crypto_key_config: Google.Cloud.Datafusion.V1.CryptoKeyConfig.t() | nil
        }

  defstruct name: "",
            description: "",
            type: :TYPE_UNSPECIFIED,
            enable_stackdriver_logging: false,
            enable_stackdriver_monitoring: false,
            private_instance: false,
            network_config: nil,
            labels: %{},
            options: %{},
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            state_message: "",
            service_endpoint: "",
            zone: "",
            version: "",
            service_account: "",
            display_name: "",
            available_version: [],
            api_endpoint: "",
            gcs_bucket: "",
            accelerators: [],
            p4_service_account: "",
            tenant_project_id: "",
            dataproc_service_account: "",
            enable_rbac: false,
            crypto_key_config: nil

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :type, 3, type: Google.Cloud.Datafusion.V1.Instance.Type, enum: true, deprecated: false
  field :enable_stackdriver_logging, 4, type: :bool, json_name: "enableStackdriverLogging"
  field :enable_stackdriver_monitoring, 5, type: :bool, json_name: "enableStackdriverMonitoring"
  field :private_instance, 6, type: :bool, json_name: "privateInstance"

  field :network_config, 7,
    type: Google.Cloud.Datafusion.V1.NetworkConfig,
    json_name: "networkConfig"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.Instance.LabelsEntry,
    map: true

  field :options, 9,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.Instance.OptionsEntry,
    map: true

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 12, type: Google.Cloud.Datafusion.V1.Instance.State, enum: true, deprecated: false
  field :state_message, 13, type: :string, json_name: "stateMessage", deprecated: false
  field :service_endpoint, 14, type: :string, json_name: "serviceEndpoint", deprecated: false
  field :zone, 15, type: :string
  field :version, 16, type: :string
  field :service_account, 17, type: :string, json_name: "serviceAccount", deprecated: true
  field :display_name, 18, type: :string, json_name: "displayName"

  field :available_version, 19,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.Version,
    json_name: "availableVersion"

  field :api_endpoint, 20, type: :string, json_name: "apiEndpoint", deprecated: false
  field :gcs_bucket, 21, type: :string, json_name: "gcsBucket", deprecated: false
  field :accelerators, 22, repeated: true, type: Google.Cloud.Datafusion.V1.Accelerator
  field :p4_service_account, 23, type: :string, json_name: "p4ServiceAccount", deprecated: false
  field :tenant_project_id, 24, type: :string, json_name: "tenantProjectId", deprecated: false
  field :dataproc_service_account, 25, type: :string, json_name: "dataprocServiceAccount"
  field :enable_rbac, 27, type: :bool, json_name: "enableRbac"

  field :crypto_key_config, 28,
    type: Google.Cloud.Datafusion.V1.CryptoKeyConfig,
    json_name: "cryptoKeyConfig"
end
defmodule Google.Cloud.Datafusion.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datafusion.V1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Datafusion.V1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct instances: [],
            next_page_token: "",
            unreachable: []

  field :instances, 1, repeated: true, type: Google.Cloud.Datafusion.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Datafusion.V1.ListAvailableVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          latest_patch_only: boolean
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            latest_patch_only: false

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :latest_patch_only, 4, type: :bool, json_name: "latestPatchOnly"
end
defmodule Google.Cloud.Datafusion.V1.ListAvailableVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          available_versions: [Google.Cloud.Datafusion.V1.Version.t()],
          next_page_token: String.t()
        }

  defstruct available_versions: [],
            next_page_token: ""

  field :available_versions, 1,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.Version,
    json_name: "availableVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datafusion.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Datafusion.V1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Datafusion.V1.Instance.t() | nil
        }

  defstruct parent: "",
            instance_id: "",
            instance: nil

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :instance, 3, type: Google.Cloud.Datafusion.V1.Instance
end
defmodule Google.Cloud.Datafusion.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Datafusion.V1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Cloud.Datafusion.V1.Instance.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct instance: nil,
            update_mask: nil

  field :instance, 1, type: Google.Cloud.Datafusion.V1.Instance
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datafusion.V1.RestartInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Datafusion.V1.OperationMetadata.AdditionalStatusEntry do
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
defmodule Google.Cloud.Datafusion.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          requested_cancellation: boolean,
          api_version: String.t(),
          additional_status: %{String.t() => String.t()}
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            requested_cancellation: false,
            api_version: "",
            additional_status: %{}

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  field :additional_status, 8,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.OperationMetadata.AdditionalStatusEntry,
    json_name: "additionalStatus",
    map: true
end
defmodule Google.Cloud.Datafusion.V1.DataFusion.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datafusion.v1.DataFusion"

  rpc :ListAvailableVersions,
      Google.Cloud.Datafusion.V1.ListAvailableVersionsRequest,
      Google.Cloud.Datafusion.V1.ListAvailableVersionsResponse

  rpc :ListInstances,
      Google.Cloud.Datafusion.V1.ListInstancesRequest,
      Google.Cloud.Datafusion.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Datafusion.V1.GetInstanceRequest,
      Google.Cloud.Datafusion.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Datafusion.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Datafusion.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Datafusion.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RestartInstance,
      Google.Cloud.Datafusion.V1.RestartInstanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Datafusion.V1.DataFusion.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datafusion.V1.DataFusion.Service
end
