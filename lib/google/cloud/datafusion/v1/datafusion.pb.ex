defmodule Google.Cloud.Datafusion.V1.Version.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_PREVIEW, 1
  field :TYPE_GENERAL_AVAILABILITY, 2
end

defmodule Google.Cloud.Datafusion.V1.Accelerator.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :CDC, 1
  field :HEALTHCARE, 2
  field :CCAI_INSIGHTS, 3
end

defmodule Google.Cloud.Datafusion.V1.Accelerator.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :UNKNOWN, 3
end

defmodule Google.Cloud.Datafusion.V1.Instance.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :BASIC, 1
  field :ENTERPRISE, 2
  field :DEVELOPER, 3
end

defmodule Google.Cloud.Datafusion.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :DISABLED, 10
end

defmodule Google.Cloud.Datafusion.V1.Instance.DisabledReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DISABLED_REASON_UNSPECIFIED, 0
  field :KMS_KEY_ISSUE, 1
end

defmodule Google.Cloud.Datafusion.V1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :network, 1, type: :string
  field :ip_allocation, 2, type: :string, json_name: "ipAllocation"
end

defmodule Google.Cloud.Datafusion.V1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version_number, 1, type: :string, json_name: "versionNumber"
  field :default_version, 2, type: :bool, json_name: "defaultVersion"
  field :available_features, 3, repeated: true, type: :string, json_name: "availableFeatures"
  field :type, 4, type: Google.Cloud.Datafusion.V1.Version.Type, enum: true
end

defmodule Google.Cloud.Datafusion.V1.Accelerator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :accelerator_type, 1,
    type: Google.Cloud.Datafusion.V1.Accelerator.AcceleratorType,
    json_name: "acceleratorType",
    enum: true

  field :state, 2, type: Google.Cloud.Datafusion.V1.Accelerator.State, enum: true
end

defmodule Google.Cloud.Datafusion.V1.CryptoKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key_reference, 1, type: :string, json_name: "keyReference", deprecated: false
end

defmodule Google.Cloud.Datafusion.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datafusion.V1.Instance.OptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datafusion.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  field :disabled_reason, 29,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.Instance.DisabledReason,
    json_name: "disabledReason",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datafusion.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Datafusion.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Datafusion.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Datafusion.V1.ListAvailableVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :latest_patch_only, 4, type: :bool, json_name: "latestPatchOnly"
end

defmodule Google.Cloud.Datafusion.V1.ListAvailableVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :available_versions, 1,
    repeated: true,
    type: Google.Cloud.Datafusion.V1.Version,
    json_name: "availableVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Datafusion.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Datafusion.V1.Instance
end

defmodule Google.Cloud.Datafusion.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :instance, 1, type: Google.Cloud.Datafusion.V1.Instance, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Datafusion.V1.RestartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datafusion.V1.OperationMetadata.AdditionalStatusEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datafusion.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use GRPC.Service,
    name: "google.cloud.datafusion.v1.DataFusion",
    protoc_gen_elixir_version: "0.14.0"

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
