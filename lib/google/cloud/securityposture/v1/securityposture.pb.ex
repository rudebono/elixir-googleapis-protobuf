defmodule Google.Cloud.Securityposture.V1.Posture.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DEPRECATED, 1
  field :DRAFT, 2
  field :ACTIVE, 3
end

defmodule Google.Cloud.Securityposture.V1.PostureDeployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :DELETING, 2
  field :UPDATING, 3
  field :ACTIVE, 4
  field :CREATE_FAILED, 5
  field :UPDATE_FAILED, 6
  field :DELETE_FAILED, 7
end

defmodule Google.Cloud.Securityposture.V1.PostureTemplate.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DEPRECATED, 2
end

defmodule Google.Cloud.Securityposture.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
  field :error_message, 8, type: :string, json_name: "errorMessage", deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.Posture.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securityposture.V1.Posture do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Securityposture.V1.Posture.State,
    enum: true,
    deprecated: false

  field :revision_id, 3, type: :string, json_name: "revisionId", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 6, type: :string, deprecated: false

  field :policy_sets, 7,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PolicySet,
    json_name: "policySets",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false

  field :annotations, 9,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.Posture.AnnotationsEntry,
    map: true,
    deprecated: false

  field :reconciling, 10, type: :bool, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.PolicySet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :policy_set_id, 1, type: :string, json_name: "policySetId", deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :policies, 3,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.Policy,
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.Policy.ComplianceStandard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :standard, 1, type: :string, deprecated: false
  field :control, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.Policy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :policy_id, 1, type: :string, json_name: "policyId", deprecated: false

  field :compliance_standards, 2,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.Policy.ComplianceStandard,
    json_name: "complianceStandards",
    deprecated: false

  field :constraint, 3, type: Google.Cloud.Securityposture.V1.Constraint, deprecated: false
  field :description, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.Constraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :implementation, 0

  field :security_health_analytics_module, 3,
    type: Google.Cloud.Securityposture.V1.SecurityHealthAnalyticsModule,
    json_name: "securityHealthAnalyticsModule",
    oneof: 0,
    deprecated: false

  field :security_health_analytics_custom_module, 4,
    type: Google.Cloud.Securityposture.V1.SecurityHealthAnalyticsCustomModule,
    json_name: "securityHealthAnalyticsCustomModule",
    oneof: 0,
    deprecated: false

  field :org_policy_constraint, 5,
    type: Google.Cloud.Securityposture.V1.OrgPolicyConstraint,
    json_name: "orgPolicyConstraint",
    oneof: 0,
    deprecated: false

  field :org_policy_constraint_custom, 6,
    type: Google.Cloud.Securityposture.V1.OrgPolicyConstraintCustom,
    json_name: "orgPolicyConstraintCustom",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ListPosturesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Securityposture.V1.ListPosturesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :postures, 1, repeated: true, type: Google.Cloud.Securityposture.V1.Posture
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Securityposture.V1.ListPostureRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ListPostureRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :revisions, 1, repeated: true, type: Google.Cloud.Securityposture.V1.Posture
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securityposture.V1.GetPostureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 3, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.CreatePostureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :posture_id, 2, type: :string, json_name: "postureId", deprecated: false
  field :posture, 3, type: Google.Cloud.Securityposture.V1.Posture, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.UpdatePostureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :posture, 2, type: Google.Cloud.Securityposture.V1.Posture, deprecated: false
  field :revision_id, 3, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.DeletePostureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ExtractPostureRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :posture_id, 2, type: :string, json_name: "postureId", deprecated: false
  field :workload, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.PostureDeployment.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securityposture.V1.PostureDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_resource, 13, type: :string, json_name: "targetResource", deprecated: false

  field :state, 2,
    type: Google.Cloud.Securityposture.V1.PostureDeployment.State,
    enum: true,
    deprecated: false

  field :posture_id, 3, type: :string, json_name: "postureId", deprecated: false
  field :posture_revision_id, 4, type: :string, json_name: "postureRevisionId", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :etag, 8, type: :string, deprecated: false

  field :annotations, 9,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PostureDeployment.AnnotationsEntry,
    map: true,
    deprecated: false

  field :reconciling, 10, type: :bool, deprecated: false
  field :desired_posture_id, 11, type: :string, json_name: "desiredPostureId", deprecated: false

  field :desired_posture_revision_id, 12,
    type: :string,
    json_name: "desiredPostureRevisionId",
    deprecated: false

  field :failure_message, 14, type: :string, json_name: "failureMessage", deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ListPostureDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ListPostureDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :posture_deployments, 1,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PostureDeployment,
    json_name: "postureDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Securityposture.V1.GetPostureDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.CreatePostureDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :posture_deployment_id, 2,
    type: :string,
    json_name: "postureDeploymentId",
    deprecated: false

  field :posture_deployment, 3,
    type: Google.Cloud.Securityposture.V1.PostureDeployment,
    json_name: "postureDeployment",
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.UpdatePostureDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :posture_deployment, 2,
    type: Google.Cloud.Securityposture.V1.PostureDeployment,
    json_name: "postureDeployment",
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.DeletePostureDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.PostureTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :state, 4,
    type: Google.Cloud.Securityposture.V1.PostureTemplate.State,
    enum: true,
    deprecated: false

  field :policy_sets, 5,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PolicySet,
    json_name: "policySets",
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ListPostureTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.ListPostureTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :posture_templates, 1,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PostureTemplate,
    json_name: "postureTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securityposture.V1.GetPostureTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.SecurityPosture.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.securityposture.v1.SecurityPosture",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListPostures,
      Google.Cloud.Securityposture.V1.ListPosturesRequest,
      Google.Cloud.Securityposture.V1.ListPosturesResponse

  rpc :ListPostureRevisions,
      Google.Cloud.Securityposture.V1.ListPostureRevisionsRequest,
      Google.Cloud.Securityposture.V1.ListPostureRevisionsResponse

  rpc :GetPosture,
      Google.Cloud.Securityposture.V1.GetPostureRequest,
      Google.Cloud.Securityposture.V1.Posture

  rpc :CreatePosture,
      Google.Cloud.Securityposture.V1.CreatePostureRequest,
      Google.Longrunning.Operation

  rpc :UpdatePosture,
      Google.Cloud.Securityposture.V1.UpdatePostureRequest,
      Google.Longrunning.Operation

  rpc :DeletePosture,
      Google.Cloud.Securityposture.V1.DeletePostureRequest,
      Google.Longrunning.Operation

  rpc :ExtractPosture,
      Google.Cloud.Securityposture.V1.ExtractPostureRequest,
      Google.Longrunning.Operation

  rpc :ListPostureDeployments,
      Google.Cloud.Securityposture.V1.ListPostureDeploymentsRequest,
      Google.Cloud.Securityposture.V1.ListPostureDeploymentsResponse

  rpc :GetPostureDeployment,
      Google.Cloud.Securityposture.V1.GetPostureDeploymentRequest,
      Google.Cloud.Securityposture.V1.PostureDeployment

  rpc :CreatePostureDeployment,
      Google.Cloud.Securityposture.V1.CreatePostureDeploymentRequest,
      Google.Longrunning.Operation

  rpc :UpdatePostureDeployment,
      Google.Cloud.Securityposture.V1.UpdatePostureDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeletePostureDeployment,
      Google.Cloud.Securityposture.V1.DeletePostureDeploymentRequest,
      Google.Longrunning.Operation

  rpc :ListPostureTemplates,
      Google.Cloud.Securityposture.V1.ListPostureTemplatesRequest,
      Google.Cloud.Securityposture.V1.ListPostureTemplatesResponse

  rpc :GetPostureTemplate,
      Google.Cloud.Securityposture.V1.GetPostureTemplateRequest,
      Google.Cloud.Securityposture.V1.PostureTemplate
end

defmodule Google.Cloud.Securityposture.V1.SecurityPosture.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Securityposture.V1.SecurityPosture.Service
end