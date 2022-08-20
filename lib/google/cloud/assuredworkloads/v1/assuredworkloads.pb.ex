defmodule Google.Cloud.Assuredworkloads.V1.Workload.ComplianceRegime do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :COMPLIANCE_REGIME_UNSPECIFIED, 0
  field :IL4, 1
  field :CJIS, 2
  field :FEDRAMP_HIGH, 3
  field :FEDRAMP_MODERATE, 4
  field :US_REGIONAL_ACCESS, 5
  field :HIPAA, 6
  field :HITRUST, 7
  field :EU_REGIONS_AND_SUPPORT, 8
  field :CA_REGIONS_AND_SUPPORT, 9
  field :ITAR, 10
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.KajEnrollmentState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :KAJ_ENROLLMENT_STATE_UNSPECIFIED, 0
  field :KAJ_ENROLLMENT_STATE_PENDING, 1
  field :KAJ_ENROLLMENT_STATE_COMPLETE, 2
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.ResourceInfo.ResourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :CONSUMER_PROJECT, 1
  field :ENCRYPTION_KEYS_PROJECT, 2
  field :KEYRING, 3
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.SaaEnrollmentResponse.SetupState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SETUP_STATE_UNSPECIFIED, 0
  field :STATUS_PENDING, 1
  field :STATUS_COMPLETE, 2
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.SaaEnrollmentResponse.SetupError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SETUP_ERROR_UNSPECIFIED, 0
  field :ERROR_INVALID_BASE_SETUP, 1
  field :ERROR_MISSING_EXTERNAL_SIGNING_KEY, 2
  field :ERROR_NOT_ALL_SERVICES_ENROLLED, 3
  field :ERROR_SETUP_CHECK_FAILED, 4
end

defmodule Google.Cloud.Assuredworkloads.V1.CreateWorkloadRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workload, 2, type: Google.Cloud.Assuredworkloads.V1.Workload, deprecated: false
  field :external_id, 3, type: :string, json_name: "externalId", deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.UpdateWorkloadRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :workload, 1, type: Google.Cloud.Assuredworkloads.V1.Workload, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.DeleteWorkloadRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.GetWorkloadRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.ListWorkloadsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1.ListWorkloadsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :workloads, 1, repeated: true, type: Google.Cloud.Assuredworkloads.V1.Workload
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.ResourceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_id, 1, type: :int64, json_name: "resourceId"

  field :resource_type, 2,
    type: Google.Cloud.Assuredworkloads.V1.Workload.ResourceInfo.ResourceType,
    json_name: "resourceType",
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.KMSSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :next_rotation_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "nextRotationTime",
    deprecated: false

  field :rotation_period, 2,
    type: Google.Protobuf.Duration,
    json_name: "rotationPeriod",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.ResourceSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_id, 1, type: :string, json_name: "resourceId"

  field :resource_type, 2,
    type: Google.Cloud.Assuredworkloads.V1.Workload.ResourceInfo.ResourceType,
    json_name: "resourceType",
    enum: true

  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.SaaEnrollmentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :setup_status, 1,
    proto3_optional: true,
    type: Google.Cloud.Assuredworkloads.V1.Workload.SaaEnrollmentResponse.SetupState,
    json_name: "setupStatus",
    enum: true

  field :setup_errors, 2,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1.Workload.SaaEnrollmentResponse.SetupError,
    json_name: "setupErrors",
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1.Workload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :resources, 3,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1.Workload.ResourceInfo,
    deprecated: false

  field :compliance_regime, 4,
    type: Google.Cloud.Assuredworkloads.V1.Workload.ComplianceRegime,
    json_name: "complianceRegime",
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :billing_account, 6, type: :string, json_name: "billingAccount", deprecated: false
  field :etag, 9, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1.Workload.LabelsEntry,
    map: true,
    deprecated: false

  field :provisioned_resources_parent, 13,
    type: :string,
    json_name: "provisionedResourcesParent",
    deprecated: false

  field :kms_settings, 14,
    type: Google.Cloud.Assuredworkloads.V1.Workload.KMSSettings,
    json_name: "kmsSettings",
    deprecated: false

  field :resource_settings, 15,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1.Workload.ResourceSettings,
    json_name: "resourceSettings",
    deprecated: false

  field :kaj_enrollment_state, 17,
    type: Google.Cloud.Assuredworkloads.V1.Workload.KajEnrollmentState,
    json_name: "kajEnrollmentState",
    enum: true,
    deprecated: false

  field :enable_sovereign_controls, 18,
    type: :bool,
    json_name: "enableSovereignControls",
    deprecated: false

  field :saa_enrollment_response, 20,
    type: Google.Cloud.Assuredworkloads.V1.Workload.SaaEnrollmentResponse,
    json_name: "saaEnrollmentResponse",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.CreateWorkloadOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :parent, 3, type: :string, deprecated: false

  field :compliance_regime, 4,
    type: Google.Cloud.Assuredworkloads.V1.Workload.ComplianceRegime,
    json_name: "complianceRegime",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1.AssuredWorkloadsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.assuredworkloads.v1.AssuredWorkloadsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateWorkload,
      Google.Cloud.Assuredworkloads.V1.CreateWorkloadRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkload,
      Google.Cloud.Assuredworkloads.V1.UpdateWorkloadRequest,
      Google.Cloud.Assuredworkloads.V1.Workload

  rpc :DeleteWorkload,
      Google.Cloud.Assuredworkloads.V1.DeleteWorkloadRequest,
      Google.Protobuf.Empty

  rpc :GetWorkload,
      Google.Cloud.Assuredworkloads.V1.GetWorkloadRequest,
      Google.Cloud.Assuredworkloads.V1.Workload

  rpc :ListWorkloads,
      Google.Cloud.Assuredworkloads.V1.ListWorkloadsRequest,
      Google.Cloud.Assuredworkloads.V1.ListWorkloadsResponse
end

defmodule Google.Cloud.Assuredworkloads.V1.AssuredWorkloadsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Assuredworkloads.V1.AssuredWorkloadsService.Service
end