defmodule Google.Cloud.Datafusion.V1beta1.NamespaceView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :NAMESPACE_VIEW_UNSPECIFIED | :NAMESPACE_VIEW_BASIC | :NAMESPACE_VIEW_FULL

  field :NAMESPACE_VIEW_UNSPECIFIED, 0
  field :NAMESPACE_VIEW_BASIC, 1
  field :NAMESPACE_VIEW_FULL, 2
end
defmodule Google.Cloud.Datafusion.V1beta1.Version.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :TYPE_PREVIEW | :TYPE_GENERAL_AVAILABILITY

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_PREVIEW, 1
  field :TYPE_GENERAL_AVAILABILITY, 2
end
defmodule Google.Cloud.Datafusion.V1beta1.Accelerator.AcceleratorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACCELERATOR_TYPE_UNSPECIFIED | :CDC | :HEALTHCARE

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :CDC, 1
  field :HEALTHCARE, 2
end
defmodule Google.Cloud.Datafusion.V1beta1.Instance.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :BASIC | :ENTERPRISE | :DEVELOPER

  field :TYPE_UNSPECIFIED, 0
  field :BASIC, 1
  field :ENTERPRISE, 2
  field :DEVELOPER, 3
end
defmodule Google.Cloud.Datafusion.V1beta1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :RUNNING
          | :FAILED
          | :DELETING
          | :UPGRADING
          | :RESTARTING
          | :UPDATING
          | :AUTO_UPDATING
          | :AUTO_UPGRADING
          | :DISABLED

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :RUNNING, 2
  field :FAILED, 3
  field :DELETING, 4
  field :UPGRADING, 5
  field :RESTARTING, 6
  field :UPDATING, 7
  field :AUTO_UPDATING, 8
  field :AUTO_UPGRADING, 9
  field :DISABLED, 10
end
defmodule Google.Cloud.Datafusion.V1beta1.Instance.DisabledReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DISABLED_REASON_UNSPECIFIED | :KMS_KEY_ISSUE

  field :DISABLED_REASON_UNSPECIFIED, 0
  field :KMS_KEY_ISSUE, 1
end
defmodule Google.Cloud.Datafusion.V1beta1.NetworkConfig do
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
defmodule Google.Cloud.Datafusion.V1beta1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version_number: String.t(),
          default_version: boolean,
          available_features: [String.t()],
          type: Google.Cloud.Datafusion.V1beta1.Version.Type.t()
        }

  defstruct version_number: "",
            default_version: false,
            available_features: [],
            type: :TYPE_UNSPECIFIED

  field :version_number, 1, type: :string, json_name: "versionNumber"
  field :default_version, 2, type: :bool, json_name: "defaultVersion"
  field :available_features, 3, repeated: true, type: :string, json_name: "availableFeatures"
  field :type, 4, type: Google.Cloud.Datafusion.V1beta1.Version.Type, enum: true
end
defmodule Google.Cloud.Datafusion.V1beta1.Accelerator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_type: Google.Cloud.Datafusion.V1beta1.Accelerator.AcceleratorType.t()
        }

  defstruct accelerator_type: :ACCELERATOR_TYPE_UNSPECIFIED

  field :accelerator_type, 1,
    type: Google.Cloud.Datafusion.V1beta1.Accelerator.AcceleratorType,
    json_name: "acceleratorType",
    enum: true
end
defmodule Google.Cloud.Datafusion.V1beta1.CryptoKeyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_reference: String.t()
        }

  defstruct key_reference: ""

  field :key_reference, 1, type: :string, json_name: "keyReference", deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.Instance.LabelsEntry do
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
defmodule Google.Cloud.Datafusion.V1beta1.Instance.OptionsEntry do
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
defmodule Google.Cloud.Datafusion.V1beta1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          type: Google.Cloud.Datafusion.V1beta1.Instance.Type.t(),
          enable_stackdriver_logging: boolean,
          enable_stackdriver_monitoring: boolean,
          private_instance: boolean,
          network_config: Google.Cloud.Datafusion.V1beta1.NetworkConfig.t() | nil,
          labels: %{String.t() => String.t()},
          options: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Datafusion.V1beta1.Instance.State.t(),
          state_message: String.t(),
          service_endpoint: String.t(),
          zone: String.t(),
          version: String.t(),
          service_account: String.t(),
          display_name: String.t(),
          available_version: [Google.Cloud.Datafusion.V1beta1.Version.t()],
          api_endpoint: String.t(),
          gcs_bucket: String.t(),
          accelerators: [Google.Cloud.Datafusion.V1beta1.Accelerator.t()],
          p4_service_account: String.t(),
          tenant_project_id: String.t(),
          dataproc_service_account: String.t(),
          enable_rbac: boolean,
          crypto_key_config: Google.Cloud.Datafusion.V1beta1.CryptoKeyConfig.t() | nil,
          disabled_reason: [Google.Cloud.Datafusion.V1beta1.Instance.DisabledReason.t()]
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
            crypto_key_config: nil,
            disabled_reason: []

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Datafusion.V1beta1.Instance.Type,
    enum: true,
    deprecated: false

  field :enable_stackdriver_logging, 4, type: :bool, json_name: "enableStackdriverLogging"
  field :enable_stackdriver_monitoring, 5, type: :bool, json_name: "enableStackdriverMonitoring"
  field :private_instance, 6, type: :bool, json_name: "privateInstance"

  field :network_config, 7,
    type: Google.Cloud.Datafusion.V1beta1.NetworkConfig,
    json_name: "networkConfig"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.Instance.LabelsEntry,
    map: true

  field :options, 9,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.Instance.OptionsEntry,
    map: true

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 12,
    type: Google.Cloud.Datafusion.V1beta1.Instance.State,
    enum: true,
    deprecated: false

  field :state_message, 13, type: :string, json_name: "stateMessage", deprecated: false
  field :service_endpoint, 14, type: :string, json_name: "serviceEndpoint", deprecated: false
  field :zone, 15, type: :string
  field :version, 16, type: :string
  field :service_account, 17, type: :string, json_name: "serviceAccount", deprecated: true
  field :display_name, 18, type: :string, json_name: "displayName"

  field :available_version, 19,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.Version,
    json_name: "availableVersion"

  field :api_endpoint, 20, type: :string, json_name: "apiEndpoint", deprecated: false
  field :gcs_bucket, 21, type: :string, json_name: "gcsBucket", deprecated: false
  field :accelerators, 22, repeated: true, type: Google.Cloud.Datafusion.V1beta1.Accelerator
  field :p4_service_account, 23, type: :string, json_name: "p4ServiceAccount", deprecated: false
  field :tenant_project_id, 24, type: :string, json_name: "tenantProjectId", deprecated: false
  field :dataproc_service_account, 25, type: :string, json_name: "dataprocServiceAccount"
  field :enable_rbac, 26, type: :bool, json_name: "enableRbac"

  field :crypto_key_config, 27,
    type: Google.Cloud.Datafusion.V1beta1.CryptoKeyConfig,
    json_name: "cryptoKeyConfig"

  field :disabled_reason, 28,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.Instance.DisabledReason,
    json_name: "disabledReason",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.ListInstancesRequest do
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

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datafusion.V1beta1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Datafusion.V1beta1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct instances: [],
            next_page_token: "",
            unreachable: []

  field :instances, 1, repeated: true, type: Google.Cloud.Datafusion.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Datafusion.V1beta1.ListAvailableVersionsRequest do
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
defmodule Google.Cloud.Datafusion.V1beta1.ListAvailableVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          available_versions: [Google.Cloud.Datafusion.V1beta1.Version.t()],
          next_page_token: String.t()
        }

  defstruct available_versions: [],
            next_page_token: ""

  field :available_versions, 1,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.Version,
    json_name: "availableVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datafusion.V1beta1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Datafusion.V1beta1.Instance.t() | nil
        }

  defstruct parent: "",
            instance_id: "",
            instance: nil

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Datafusion.V1beta1.Instance
end
defmodule Google.Cloud.Datafusion.V1beta1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Cloud.Datafusion.V1beta1.Instance.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct instance: nil,
            update_mask: nil

  field :instance, 1, type: Google.Cloud.Datafusion.V1beta1.Instance, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datafusion.V1beta1.RestartInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.UpgradeInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end
defmodule Google.Cloud.Datafusion.V1beta1.RemoveIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t()
        }

  defstruct resource: ""

  field :resource, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.RemoveIamPolicyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Datafusion.V1beta1.ListNamespacesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Datafusion.V1beta1.NamespaceView.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            view: :NAMESPACE_VIEW_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Datafusion.V1beta1.NamespaceView, enum: true
end
defmodule Google.Cloud.Datafusion.V1beta1.IAMPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Iam.V1.Policy.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct policy: nil,
            status: nil

  field :policy, 1, type: Google.Iam.V1.Policy
  field :status, 2, type: Google.Rpc.Status
end
defmodule Google.Cloud.Datafusion.V1beta1.Namespace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          iam_policy: Google.Cloud.Datafusion.V1beta1.IAMPolicy.t() | nil
        }

  defstruct name: "",
            iam_policy: nil

  field :name, 1, type: :string
  field :iam_policy, 2, type: Google.Cloud.Datafusion.V1beta1.IAMPolicy, json_name: "iamPolicy"
end
defmodule Google.Cloud.Datafusion.V1beta1.ListNamespacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaces: [Google.Cloud.Datafusion.V1beta1.Namespace.t()],
          next_page_token: String.t()
        }

  defstruct namespaces: [],
            next_page_token: ""

  field :namespaces, 1, repeated: true, type: Google.Cloud.Datafusion.V1beta1.Namespace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datafusion.V1beta1.DnsPeering do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone: String.t(),
          domain: String.t(),
          description: String.t(),
          target_project: String.t(),
          target_network: String.t()
        }

  defstruct zone: "",
            domain: "",
            description: "",
            target_project: "",
            target_network: ""

  field :zone, 1, type: :string, deprecated: false
  field :domain, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :target_project, 4, type: :string, json_name: "targetProject", deprecated: false
  field :target_network, 5, type: :string, json_name: "targetNetwork", deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.AddDnsPeeringRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dns_peering: Google.Cloud.Datafusion.V1beta1.DnsPeering.t() | nil
        }

  defstruct parent: "",
            dns_peering: nil

  field :parent, 1, type: :string, deprecated: false
  field :dns_peering, 2, type: Google.Cloud.Datafusion.V1beta1.DnsPeering, json_name: "dnsPeering"
end
defmodule Google.Cloud.Datafusion.V1beta1.AddDnsPeeringResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Datafusion.V1beta1.RemoveDnsPeeringRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          zone: String.t()
        }

  defstruct parent: "",
            zone: ""

  field :parent, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Datafusion.V1beta1.RemoveDnsPeeringResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Datafusion.V1beta1.ListDnsPeeringsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Datafusion.V1beta1.ListDnsPeeringsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dns_peerings: [Google.Cloud.Datafusion.V1beta1.DnsPeering.t()],
          next_page_token: String.t()
        }

  defstruct dns_peerings: [],
            next_page_token: ""

  field :dns_peerings, 1,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.DnsPeering,
    json_name: "dnsPeerings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datafusion.V1beta1.DataFusion.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datafusion.v1beta1.DataFusion"

  rpc :ListAvailableVersions,
      Google.Cloud.Datafusion.V1beta1.ListAvailableVersionsRequest,
      Google.Cloud.Datafusion.V1beta1.ListAvailableVersionsResponse

  rpc :ListInstances,
      Google.Cloud.Datafusion.V1beta1.ListInstancesRequest,
      Google.Cloud.Datafusion.V1beta1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Datafusion.V1beta1.GetInstanceRequest,
      Google.Cloud.Datafusion.V1beta1.Instance

  rpc :CreateInstance,
      Google.Cloud.Datafusion.V1beta1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Datafusion.V1beta1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Datafusion.V1beta1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RestartInstance,
      Google.Cloud.Datafusion.V1beta1.RestartInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpgradeInstance,
      Google.Cloud.Datafusion.V1beta1.UpgradeInstanceRequest,
      Google.Longrunning.Operation

  rpc :RemoveIamPolicy,
      Google.Cloud.Datafusion.V1beta1.RemoveIamPolicyRequest,
      Google.Cloud.Datafusion.V1beta1.RemoveIamPolicyResponse

  rpc :ListNamespaces,
      Google.Cloud.Datafusion.V1beta1.ListNamespacesRequest,
      Google.Cloud.Datafusion.V1beta1.ListNamespacesResponse

  rpc :AddDnsPeering,
      Google.Cloud.Datafusion.V1beta1.AddDnsPeeringRequest,
      Google.Cloud.Datafusion.V1beta1.AddDnsPeeringResponse

  rpc :RemoveDnsPeering,
      Google.Cloud.Datafusion.V1beta1.RemoveDnsPeeringRequest,
      Google.Cloud.Datafusion.V1beta1.RemoveDnsPeeringResponse

  rpc :ListDnsPeerings,
      Google.Cloud.Datafusion.V1beta1.ListDnsPeeringsRequest,
      Google.Cloud.Datafusion.V1beta1.ListDnsPeeringsResponse
end

defmodule Google.Cloud.Datafusion.V1beta1.DataFusion.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datafusion.V1beta1.DataFusion.Service
end
