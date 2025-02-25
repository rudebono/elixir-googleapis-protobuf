defmodule Google.Cloud.Datafusion.V1beta1.NamespaceView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NAMESPACE_VIEW_UNSPECIFIED, 0
  field :NAMESPACE_VIEW_BASIC, 1
  field :NAMESPACE_VIEW_FULL, 2
end

defmodule Google.Cloud.Datafusion.V1beta1.Version.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_PREVIEW, 1
  field :TYPE_GENERAL_AVAILABILITY, 2
end

defmodule Google.Cloud.Datafusion.V1beta1.Accelerator.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :CDC, 1
  field :HEALTHCARE, 2
end

defmodule Google.Cloud.Datafusion.V1beta1.Instance.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :BASIC, 1
  field :ENTERPRISE, 2
  field :DEVELOPER, 3
end

defmodule Google.Cloud.Datafusion.V1beta1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DISABLED_REASON_UNSPECIFIED, 0
  field :KMS_KEY_ISSUE, 1
end

defmodule Google.Cloud.Datafusion.V1beta1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network, 1, type: :string
  field :ip_allocation, 2, type: :string, json_name: "ipAllocation"
end

defmodule Google.Cloud.Datafusion.V1beta1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version_number, 1, type: :string, json_name: "versionNumber"
  field :default_version, 2, type: :bool, json_name: "defaultVersion"
  field :available_features, 3, repeated: true, type: :string, json_name: "availableFeatures"
  field :type, 4, type: Google.Cloud.Datafusion.V1beta1.Version.Type, enum: true
end

defmodule Google.Cloud.Datafusion.V1beta1.Accelerator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :accelerator_type, 1,
    type: Google.Cloud.Datafusion.V1beta1.Accelerator.AcceleratorType,
    json_name: "acceleratorType",
    enum: true
end

defmodule Google.Cloud.Datafusion.V1beta1.CryptoKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_reference, 1, type: :string, json_name: "keyReference", deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datafusion.V1beta1.Instance.OptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datafusion.V1beta1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datafusion.V1beta1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Datafusion.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datafusion.V1beta1.ListAvailableVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :latest_patch_only, 4, type: :bool, json_name: "latestPatchOnly"
end

defmodule Google.Cloud.Datafusion.V1beta1.ListAvailableVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :available_versions, 1,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.Version,
    json_name: "availableVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datafusion.V1beta1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Datafusion.V1beta1.Instance
end

defmodule Google.Cloud.Datafusion.V1beta1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: Google.Cloud.Datafusion.V1beta1.Instance, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Datafusion.V1beta1.RestartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.UpgradeInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.RemoveIamPolicyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Datafusion.V1beta1.ListNamespacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Datafusion.V1beta1.NamespaceView, enum: true
end

defmodule Google.Cloud.Datafusion.V1beta1.IAMPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy, 1, type: Google.Iam.V1.Policy
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Datafusion.V1beta1.Namespace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :iam_policy, 2, type: Google.Cloud.Datafusion.V1beta1.IAMPolicy, json_name: "iamPolicy"
end

defmodule Google.Cloud.Datafusion.V1beta1.ListNamespacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespaces, 1, repeated: true, type: Google.Cloud.Datafusion.V1beta1.Namespace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datafusion.V1beta1.DnsPeering do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :domain, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :target_project, 4, type: :string, json_name: "targetProject", deprecated: false
  field :target_network, 5, type: :string, json_name: "targetNetwork", deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.AddDnsPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dns_peering, 2, type: Google.Cloud.Datafusion.V1beta1.DnsPeering, json_name: "dnsPeering"
end

defmodule Google.Cloud.Datafusion.V1beta1.AddDnsPeeringResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Datafusion.V1beta1.RemoveDnsPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1beta1.RemoveDnsPeeringResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Datafusion.V1beta1.ListDnsPeeringsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Datafusion.V1beta1.ListDnsPeeringsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dns_peerings, 1,
    repeated: true,
    type: Google.Cloud.Datafusion.V1beta1.DnsPeering,
    json_name: "dnsPeerings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datafusion.V1beta1.DataFusion.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.datafusion.v1beta1.DataFusion",
    protoc_gen_elixir_version: "0.14.1"

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
