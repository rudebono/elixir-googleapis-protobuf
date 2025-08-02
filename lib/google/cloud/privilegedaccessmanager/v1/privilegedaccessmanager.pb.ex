defmodule Google.Cloud.Privilegedaccessmanager.V1.Entitlement.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :AVAILABLE, 2
  field :DELETING, 3
  field :DELETED, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.SearchEntitlementsRequest.CallerAccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CALLER_ACCESS_TYPE_UNSPECIFIED, 0
  field :GRANT_REQUESTER, 1
  field :GRANT_APPROVER, 2
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :APPROVAL_AWAITED, 1
  field :DENIED, 3
  field :SCHEDULED, 4
  field :ACTIVATING, 5
  field :ACTIVE, 6
  field :ACTIVATION_FAILED, 7
  field :EXPIRED, 8
  field :REVOKING, 9
  field :REVOKED, 10
  field :ENDED, 11
  field :WITHDRAWING, 12
  field :WITHDRAWN, 13
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.SearchGrantsRequest.CallerRelationshipType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CALLER_RELATIONSHIP_TYPE_UNSPECIFIED, 0
  field :HAD_CREATED, 1
  field :CAN_APPROVE, 2
  field :HAD_APPROVED, 3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusResponse.Finding.IAMAccessDenied do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :missing_permissions, 1, repeated: true, type: :string, json_name: "missingPermissions"
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusResponse.Finding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :finding_type, 0

  field :iam_access_denied, 1,
    type:
      Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusResponse.Finding.IAMAccessDenied,
    json_name: "iamAccessDenied",
    oneof: 0
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount"

  field :findings, 2,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusResponse.Finding
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Entitlement.RequesterJustificationConfig.NotMandatory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Entitlement.RequesterJustificationConfig.Unstructured do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Entitlement.RequesterJustificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :justification_type, 0

  field :not_mandatory, 1,
    type:
      Google.Cloud.Privilegedaccessmanager.V1.Entitlement.RequesterJustificationConfig.NotMandatory,
    json_name: "notMandatory",
    oneof: 0

  field :unstructured, 2,
    type:
      Google.Cloud.Privilegedaccessmanager.V1.Entitlement.RequesterJustificationConfig.Unstructured,
    oneof: 0
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Entitlement.AdditionalNotificationTargets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :admin_email_recipients, 1,
    repeated: true,
    type: :string,
    json_name: "adminEmailRecipients",
    deprecated: false

  field :requester_email_recipients, 2,
    repeated: true,
    type: :string,
    json_name: "requesterEmailRecipients",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Entitlement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :eligible_users, 5,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.AccessControlEntry,
    json_name: "eligibleUsers",
    deprecated: false

  field :approval_workflow, 6,
    type: Google.Cloud.Privilegedaccessmanager.V1.ApprovalWorkflow,
    json_name: "approvalWorkflow",
    deprecated: false

  field :privileged_access, 7,
    type: Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess,
    json_name: "privilegedAccess"

  field :max_request_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "maxRequestDuration",
    deprecated: false

  field :state, 9,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement.State,
    enum: true,
    deprecated: false

  field :requester_justification_config, 10,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement.RequesterJustificationConfig,
    json_name: "requesterJustificationConfig",
    deprecated: false

  field :additional_notification_targets, 11,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement.AdditionalNotificationTargets,
    json_name: "additionalNotificationTargets",
    deprecated: false

  field :etag, 12, type: :string
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.AccessControlEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principals, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ApprovalWorkflow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :approval_workflow, 0

  field :manual_approvals, 1,
    type: Google.Cloud.Privilegedaccessmanager.V1.ManualApprovals,
    json_name: "manualApprovals",
    oneof: 0
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ManualApprovals.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :approvers, 1,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.AccessControlEntry,
    deprecated: false

  field :approvals_needed, 2, type: :int32, json_name: "approvalsNeeded", deprecated: false

  field :approver_email_recipients, 3,
    repeated: true,
    type: :string,
    json_name: "approverEmailRecipients",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ManualApprovals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :require_approver_justification, 1,
    type: :bool,
    json_name: "requireApproverJustification",
    deprecated: false

  field :steps, 2,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.ManualApprovals.Step,
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess.GcpIamAccess.RoleBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role, 1, type: :string, deprecated: false

  field :condition_expression, 2,
    type: :string,
    json_name: "conditionExpression",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess.GcpIamAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_type, 1, type: :string, json_name: "resourceType", deprecated: false
  field :resource, 2, type: :string, deprecated: false

  field :role_bindings, 4,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess.GcpIamAccess.RoleBinding,
    json_name: "roleBindings",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :access_type, 0

  field :gcp_iam_access, 1,
    type: Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess.GcpIamAccess,
    json_name: "gcpIamAccess",
    oneof: 0
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ListEntitlementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ListEntitlementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitlements, 1,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.SearchEntitlementsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :caller_access_type, 2,
    type: Google.Cloud.Privilegedaccessmanager.V1.SearchEntitlementsRequest.CallerAccessType,
    json_name: "callerAccessType",
    enum: true,
    deprecated: false

  field :filter, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.SearchEntitlementsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitlements, 1,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.GetEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.CreateEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entitlement_id, 2, type: :string, json_name: "entitlementId", deprecated: false

  field :entitlement, 3,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.DeleteEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.UpdateEntitlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitlement, 1,
    type: Google.Cloud.Privilegedaccessmanager.V1.Entitlement,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Requested do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :expire_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Approved do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string, deprecated: false
  field :actor, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Denied do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string, deprecated: false
  field :actor, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Revoked do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string, deprecated: false
  field :actor, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Withdrawn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Scheduled do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_activation_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduledActivationTime",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Activated do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.ActivationFailed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error, 1, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Expired do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Ended do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.ExternallyModified do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :event, 0

  field :requested, 2,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Requested,
    oneof: 0

  field :approved, 3,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Approved,
    oneof: 0

  field :denied, 4,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Denied,
    oneof: 0

  field :revoked, 5,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Revoked,
    oneof: 0

  field :scheduled, 6,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Scheduled,
    oneof: 0

  field :activated, 7,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Activated,
    oneof: 0

  field :activation_failed, 8,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.ActivationFailed,
    json_name: "activationFailed",
    oneof: 0

  field :expired, 10,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Expired,
    oneof: 0

  field :ended, 11,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Ended,
    oneof: 0

  field :externally_modified, 12,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.ExternallyModified,
    json_name: "externallyModified",
    oneof: 0

  field :withdrawn, 13,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event.Withdrawn,
    oneof: 0

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :events, 1,
    repeated: true,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline.Event,
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant.AuditTrail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_grant_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "accessGrantTime",
    deprecated: false

  field :access_remove_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "accessRemoveTime",
    deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Grant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :requester, 4, type: :string, deprecated: false

  field :requested_duration, 5,
    type: Google.Protobuf.Duration,
    json_name: "requestedDuration",
    deprecated: false

  field :justification, 6,
    type: Google.Cloud.Privilegedaccessmanager.V1.Justification,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.State,
    enum: true,
    deprecated: false

  field :timeline, 8,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.Timeline,
    deprecated: false

  field :privileged_access, 9,
    type: Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccess,
    json_name: "privilegedAccess",
    deprecated: false

  field :audit_trail, 10,
    type: Google.Cloud.Privilegedaccessmanager.V1.Grant.AuditTrail,
    json_name: "auditTrail",
    deprecated: false

  field :additional_email_recipients, 11,
    repeated: true,
    type: :string,
    json_name: "additionalEmailRecipients",
    deprecated: false

  field :externally_modified, 12, type: :bool, json_name: "externallyModified", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.Justification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :justification, 0

  field :unstructured_justification, 1,
    type: :string,
    json_name: "unstructuredJustification",
    oneof: 0
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ListGrantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ListGrantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :grants, 1, repeated: true, type: Google.Cloud.Privilegedaccessmanager.V1.Grant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.SearchGrantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :caller_relationship, 2,
    type: Google.Cloud.Privilegedaccessmanager.V1.SearchGrantsRequest.CallerRelationshipType,
    json_name: "callerRelationship",
    enum: true,
    deprecated: false

  field :filter, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.SearchGrantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :grants, 1, repeated: true, type: Google.Cloud.Privilegedaccessmanager.V1.Grant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.GetGrantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.ApproveGrantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.DenyGrantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.RevokeGrantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.CreateGrantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :grant, 2, type: Google.Cloud.Privilegedaccessmanager.V1.Grant, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccessManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.privilegedaccessmanager.v1.PrivilegedAccessManager",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CheckOnboardingStatus,
      Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusRequest,
      Google.Cloud.Privilegedaccessmanager.V1.CheckOnboardingStatusResponse

  rpc :ListEntitlements,
      Google.Cloud.Privilegedaccessmanager.V1.ListEntitlementsRequest,
      Google.Cloud.Privilegedaccessmanager.V1.ListEntitlementsResponse

  rpc :SearchEntitlements,
      Google.Cloud.Privilegedaccessmanager.V1.SearchEntitlementsRequest,
      Google.Cloud.Privilegedaccessmanager.V1.SearchEntitlementsResponse

  rpc :GetEntitlement,
      Google.Cloud.Privilegedaccessmanager.V1.GetEntitlementRequest,
      Google.Cloud.Privilegedaccessmanager.V1.Entitlement

  rpc :CreateEntitlement,
      Google.Cloud.Privilegedaccessmanager.V1.CreateEntitlementRequest,
      Google.Longrunning.Operation

  rpc :DeleteEntitlement,
      Google.Cloud.Privilegedaccessmanager.V1.DeleteEntitlementRequest,
      Google.Longrunning.Operation

  rpc :UpdateEntitlement,
      Google.Cloud.Privilegedaccessmanager.V1.UpdateEntitlementRequest,
      Google.Longrunning.Operation

  rpc :ListGrants,
      Google.Cloud.Privilegedaccessmanager.V1.ListGrantsRequest,
      Google.Cloud.Privilegedaccessmanager.V1.ListGrantsResponse

  rpc :SearchGrants,
      Google.Cloud.Privilegedaccessmanager.V1.SearchGrantsRequest,
      Google.Cloud.Privilegedaccessmanager.V1.SearchGrantsResponse

  rpc :GetGrant,
      Google.Cloud.Privilegedaccessmanager.V1.GetGrantRequest,
      Google.Cloud.Privilegedaccessmanager.V1.Grant

  rpc :CreateGrant,
      Google.Cloud.Privilegedaccessmanager.V1.CreateGrantRequest,
      Google.Cloud.Privilegedaccessmanager.V1.Grant

  rpc :ApproveGrant,
      Google.Cloud.Privilegedaccessmanager.V1.ApproveGrantRequest,
      Google.Cloud.Privilegedaccessmanager.V1.Grant

  rpc :DenyGrant,
      Google.Cloud.Privilegedaccessmanager.V1.DenyGrantRequest,
      Google.Cloud.Privilegedaccessmanager.V1.Grant

  rpc :RevokeGrant,
      Google.Cloud.Privilegedaccessmanager.V1.RevokeGrantRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccessManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Privilegedaccessmanager.V1.PrivilegedAccessManager.Service
end
