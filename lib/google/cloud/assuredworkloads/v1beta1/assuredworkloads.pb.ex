defmodule Google.Cloud.Assuredworkloads.V1beta1.RestrictAllowedResourcesRequest.RestrictionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESTRICTION_TYPE_UNSPECIFIED, 0
  field :ALLOW_ALL_GCP_RESOURCES, 1
  field :ALLOW_COMPLIANT_RESOURCES, 2
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :AU_REGIONS_AND_US_SUPPORT, 11
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.KajEnrollmentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :KAJ_ENROLLMENT_STATE_UNSPECIFIED, 0
  field :KAJ_ENROLLMENT_STATE_PENDING, 1
  field :KAJ_ENROLLMENT_STATE_COMPLETE, 2
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :CONSUMER_PROJECT, 1
  field :CONSUMER_FOLDER, 4
  field :ENCRYPTION_KEYS_PROJECT, 2
  field :KEYRING, 3
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.SaaEnrollmentResponse.SetupState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SETUP_STATE_UNSPECIFIED, 0
  field :STATUS_PENDING, 1
  field :STATUS_COMPLETE, 2
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.SaaEnrollmentResponse.SetupError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SETUP_ERROR_UNSPECIFIED, 0
  field :ERROR_INVALID_BASE_SETUP, 1
  field :ERROR_MISSING_EXTERNAL_SIGNING_KEY, 2
  field :ERROR_NOT_ALL_SERVICES_ENROLLED, 3
  field :ERROR_SETUP_CHECK_FAILED, 4
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.CreateWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workload, 2, type: Google.Cloud.Assuredworkloads.V1beta1.Workload, deprecated: false
  field :external_id, 3, type: :string, json_name: "externalId", deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.UpdateWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workload, 1, type: Google.Cloud.Assuredworkloads.V1beta1.Workload, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.RestrictAllowedResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :restriction_type, 2,
    type: Google.Cloud.Assuredworkloads.V1beta1.RestrictAllowedResourcesRequest.RestrictionType,
    json_name: "restrictionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.RestrictAllowedResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.DeleteWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.GetWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.AnalyzeWorkloadMoveRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :projectOrWorkloadResource, 0

  field :source, 1, type: :string, oneof: 0
  field :project, 3, type: :string, oneof: 0
  field :target, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.AnalyzeWorkloadMoveResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :blockers, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workloads, 1, repeated: true, type: Google.Cloud.Assuredworkloads.V1beta1.Workload
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_id, 1, type: :int64, json_name: "resourceId"

  field :resource_type, 2,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType,
    json_name: "resourceType",
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :next_rotation_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "nextRotationTime",
    deprecated: false

  field :rotation_period, 2,
    type: Google.Protobuf.Duration,
    json_name: "rotationPeriod",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.IL4Settings do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_settings, 1,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings,
    json_name: "kmsSettings",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.CJISSettings do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_settings, 1,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings,
    json_name: "kmsSettings",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampHighSettings do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_settings, 1,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings,
    json_name: "kmsSettings",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampModerateSettings do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_settings, 1,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings,
    json_name: "kmsSettings",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_id, 1, type: :string, json_name: "resourceId"

  field :resource_type, 2,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType,
    json_name: "resourceType",
    enum: true

  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.SaaEnrollmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :setup_status, 1,
    proto3_optional: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.SaaEnrollmentResponse.SetupState,
    json_name: "setupStatus",
    enum: true

  field :setup_errors, 2,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.SaaEnrollmentResponse.SetupError,
    json_name: "setupErrors",
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :compliance_regime_settings, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :resources, 3,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo,
    deprecated: false

  field :compliance_regime, 4,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime,
    json_name: "complianceRegime",
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :billing_account, 6, type: :string, json_name: "billingAccount", deprecated: false

  field :il4_settings, 7,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.IL4Settings,
    json_name: "il4Settings",
    oneof: 0,
    deprecated: true

  field :cjis_settings, 8,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.CJISSettings,
    json_name: "cjisSettings",
    oneof: 0,
    deprecated: true

  field :fedramp_high_settings, 11,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampHighSettings,
    json_name: "fedrampHighSettings",
    oneof: 0,
    deprecated: true

  field :fedramp_moderate_settings, 12,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampModerateSettings,
    json_name: "fedrampModerateSettings",
    oneof: 0,
    deprecated: true

  field :etag, 9, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.LabelsEntry,
    map: true,
    deprecated: false

  field :provisioned_resources_parent, 13,
    type: :string,
    json_name: "provisionedResourcesParent",
    deprecated: false

  field :kms_settings, 14,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings,
    json_name: "kmsSettings",
    deprecated: true

  field :resource_settings, 15,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceSettings,
    json_name: "resourceSettings",
    deprecated: false

  field :kaj_enrollment_state, 17,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KajEnrollmentState,
    json_name: "kajEnrollmentState",
    enum: true,
    deprecated: false

  field :enable_sovereign_controls, 18,
    type: :bool,
    json_name: "enableSovereignControls",
    deprecated: false

  field :saa_enrollment_response, 20,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.SaaEnrollmentResponse,
    json_name: "saaEnrollmentResponse",
    deprecated: false

  field :compliant_but_disallowed_services, 24,
    repeated: true,
    type: :string,
    json_name: "compliantButDisallowedServices",
    deprecated: false
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.CreateWorkloadOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :parent, 3, type: :string, deprecated: false

  field :compliance_regime, 4,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime,
    json_name: "complianceRegime",
    enum: true,
    deprecated: false

  field :resource_settings, 5,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceSettings,
    json_name: "resourceSettings",
    deprecated: false
end
