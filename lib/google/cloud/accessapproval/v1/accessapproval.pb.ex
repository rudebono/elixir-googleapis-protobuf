defmodule Google.Cloud.Accessapproval.V1.EnrollmentLevel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ENROLLMENT_LEVEL_UNSPECIFIED, 0
  field :BLOCK_ALL, 1
end

defmodule Google.Cloud.Accessapproval.V1.AccessReason.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CUSTOMER_INITIATED_SUPPORT, 1
  field :GOOGLE_INITIATED_SERVICE, 2
  field :GOOGLE_INITIATED_REVIEW, 3
  field :THIRD_PARTY_DATA_REQUEST, 4
  field :GOOGLE_RESPONSE_TO_PRODUCTION_ALERT, 5
end

defmodule Google.Cloud.Accessapproval.V1.AccessLocations do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :principal_office_country, 1, type: :string, json_name: "principalOfficeCountry"

  field :principal_physical_location_country, 2,
    type: :string,
    json_name: "principalPhysicalLocationCountry"
end

defmodule Google.Cloud.Accessapproval.V1.AccessReason do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Accessapproval.V1.AccessReason.Type, enum: true
  field :detail, 2, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.SignatureInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :verification_info, 0

  field :signature, 1, type: :bytes
  field :google_public_key_pem, 2, type: :string, json_name: "googlePublicKeyPem", oneof: 0
  field :customer_kms_key_version, 3, type: :string, json_name: "customerKmsKeyVersion", oneof: 0
end

defmodule Google.Cloud.Accessapproval.V1.ApproveDecision do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :approve_time, 1, type: Google.Protobuf.Timestamp, json_name: "approveTime"
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :invalidate_time, 3, type: Google.Protobuf.Timestamp, json_name: "invalidateTime"

  field :signature_info, 4,
    type: Google.Cloud.Accessapproval.V1.SignatureInfo,
    json_name: "signatureInfo"

  field :auto_approved, 5, type: :bool, json_name: "autoApproved"
end

defmodule Google.Cloud.Accessapproval.V1.DismissDecision do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dismiss_time, 1, type: Google.Protobuf.Timestamp, json_name: "dismissTime"
  field :implicit, 2, type: :bool
end

defmodule Google.Cloud.Accessapproval.V1.ResourceProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :excludes_descendants, 1, type: :bool, json_name: "excludesDescendants"
end

defmodule Google.Cloud.Accessapproval.V1.ApprovalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :decision, 0

  field :name, 1, type: :string
  field :requested_resource_name, 2, type: :string, json_name: "requestedResourceName"

  field :requested_resource_properties, 9,
    type: Google.Cloud.Accessapproval.V1.ResourceProperties,
    json_name: "requestedResourceProperties"

  field :requested_reason, 3,
    type: Google.Cloud.Accessapproval.V1.AccessReason,
    json_name: "requestedReason"

  field :requested_locations, 4,
    type: Google.Cloud.Accessapproval.V1.AccessLocations,
    json_name: "requestedLocations"

  field :request_time, 5, type: Google.Protobuf.Timestamp, json_name: "requestTime"

  field :requested_expiration, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "requestedExpiration"

  field :approve, 7, type: Google.Cloud.Accessapproval.V1.ApproveDecision, oneof: 0
  field :dismiss, 8, type: Google.Cloud.Accessapproval.V1.DismissDecision, oneof: 0
end

defmodule Google.Cloud.Accessapproval.V1.EnrolledService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cloud_product, 1, type: :string, json_name: "cloudProduct"

  field :enrollment_level, 2,
    type: Google.Cloud.Accessapproval.V1.EnrollmentLevel,
    json_name: "enrollmentLevel",
    enum: true
end

defmodule Google.Cloud.Accessapproval.V1.AccessApprovalSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :notification_emails, 2, repeated: true, type: :string, json_name: "notificationEmails"

  field :enrolled_services, 3,
    repeated: true,
    type: Google.Cloud.Accessapproval.V1.EnrolledService,
    json_name: "enrolledServices"

  field :enrolled_ancestor, 4, type: :bool, json_name: "enrolledAncestor", deprecated: false
  field :active_key_version, 6, type: :string, json_name: "activeKeyVersion"

  field :ancestor_has_active_key_version, 7,
    type: :bool,
    json_name: "ancestorHasActiveKeyVersion",
    deprecated: false

  field :invalid_key_version, 8, type: :bool, json_name: "invalidKeyVersion", deprecated: false
end

defmodule Google.Cloud.Accessapproval.V1.AccessApprovalServiceAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account_email, 2, type: :string, json_name: "accountEmail"
end

defmodule Google.Cloud.Accessapproval.V1.ListApprovalRequestsMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Accessapproval.V1.ListApprovalRequestsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :approval_requests, 1,
    repeated: true,
    type: Google.Cloud.Accessapproval.V1.ApprovalRequest,
    json_name: "approvalRequests"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Accessapproval.V1.GetApprovalRequestMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Accessapproval.V1.ApproveApprovalRequestMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Cloud.Accessapproval.V1.DismissApprovalRequestMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Accessapproval.V1.InvalidateApprovalRequestMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Accessapproval.V1.GetAccessApprovalSettingsMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Accessapproval.V1.UpdateAccessApprovalSettingsMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :settings, 1, type: Google.Cloud.Accessapproval.V1.AccessApprovalSettings
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Accessapproval.V1.DeleteAccessApprovalSettingsMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Accessapproval.V1.GetAccessApprovalServiceAccountMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.AccessApproval.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.accessapproval.v1.AccessApproval",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListApprovalRequests,
      Google.Cloud.Accessapproval.V1.ListApprovalRequestsMessage,
      Google.Cloud.Accessapproval.V1.ListApprovalRequestsResponse

  rpc :GetApprovalRequest,
      Google.Cloud.Accessapproval.V1.GetApprovalRequestMessage,
      Google.Cloud.Accessapproval.V1.ApprovalRequest

  rpc :ApproveApprovalRequest,
      Google.Cloud.Accessapproval.V1.ApproveApprovalRequestMessage,
      Google.Cloud.Accessapproval.V1.ApprovalRequest

  rpc :DismissApprovalRequest,
      Google.Cloud.Accessapproval.V1.DismissApprovalRequestMessage,
      Google.Cloud.Accessapproval.V1.ApprovalRequest

  rpc :InvalidateApprovalRequest,
      Google.Cloud.Accessapproval.V1.InvalidateApprovalRequestMessage,
      Google.Cloud.Accessapproval.V1.ApprovalRequest

  rpc :GetAccessApprovalSettings,
      Google.Cloud.Accessapproval.V1.GetAccessApprovalSettingsMessage,
      Google.Cloud.Accessapproval.V1.AccessApprovalSettings

  rpc :UpdateAccessApprovalSettings,
      Google.Cloud.Accessapproval.V1.UpdateAccessApprovalSettingsMessage,
      Google.Cloud.Accessapproval.V1.AccessApprovalSettings

  rpc :DeleteAccessApprovalSettings,
      Google.Cloud.Accessapproval.V1.DeleteAccessApprovalSettingsMessage,
      Google.Protobuf.Empty

  rpc :GetAccessApprovalServiceAccount,
      Google.Cloud.Accessapproval.V1.GetAccessApprovalServiceAccountMessage,
      Google.Cloud.Accessapproval.V1.AccessApprovalServiceAccount
end

defmodule Google.Cloud.Accessapproval.V1.AccessApproval.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Accessapproval.V1.AccessApproval.Service
end