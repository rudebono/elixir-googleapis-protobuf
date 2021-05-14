defmodule Google.Cloud.Accessapproval.V1.EnrollmentLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENROLLMENT_LEVEL_UNSPECIFIED | :BLOCK_ALL

  field :ENROLLMENT_LEVEL_UNSPECIFIED, 0

  field :BLOCK_ALL, 1
end

defmodule Google.Cloud.Accessapproval.V1.AccessReason.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :CUSTOMER_INITIATED_SUPPORT
          | :GOOGLE_INITIATED_SERVICE
          | :GOOGLE_INITIATED_REVIEW

  field :TYPE_UNSPECIFIED, 0

  field :CUSTOMER_INITIATED_SUPPORT, 1

  field :GOOGLE_INITIATED_SERVICE, 2

  field :GOOGLE_INITIATED_REVIEW, 3
end

defmodule Google.Cloud.Accessapproval.V1.AccessLocations do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal_office_country: String.t(),
          principal_physical_location_country: String.t()
        }

  defstruct [:principal_office_country, :principal_physical_location_country]

  field :principal_office_country, 1, type: :string
  field :principal_physical_location_country, 2, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.AccessReason do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Accessapproval.V1.AccessReason.Type.t(),
          detail: String.t()
        }

  defstruct [:type, :detail]

  field :type, 1, type: Google.Cloud.Accessapproval.V1.AccessReason.Type, enum: true
  field :detail, 2, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.ApproveDecision do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approve_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:approve_time, :expire_time]

  field :approve_time, 1, type: Google.Protobuf.Timestamp
  field :expire_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Accessapproval.V1.DismissDecision do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dismiss_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:dismiss_time]

  field :dismiss_time, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Accessapproval.V1.ResourceProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          excludes_descendants: boolean
        }

  defstruct [:excludes_descendants]

  field :excludes_descendants, 1, type: :bool
end

defmodule Google.Cloud.Accessapproval.V1.ApprovalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          decision: {atom, any},
          name: String.t(),
          requested_resource_name: String.t(),
          requested_resource_properties:
            Google.Cloud.Accessapproval.V1.ResourceProperties.t() | nil,
          requested_reason: Google.Cloud.Accessapproval.V1.AccessReason.t() | nil,
          requested_locations: Google.Cloud.Accessapproval.V1.AccessLocations.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          requested_expiration: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :decision,
    :name,
    :requested_resource_name,
    :requested_resource_properties,
    :requested_reason,
    :requested_locations,
    :request_time,
    :requested_expiration
  ]

  oneof :decision, 0
  field :name, 1, type: :string
  field :requested_resource_name, 2, type: :string
  field :requested_resource_properties, 9, type: Google.Cloud.Accessapproval.V1.ResourceProperties
  field :requested_reason, 3, type: Google.Cloud.Accessapproval.V1.AccessReason
  field :requested_locations, 4, type: Google.Cloud.Accessapproval.V1.AccessLocations
  field :request_time, 5, type: Google.Protobuf.Timestamp
  field :requested_expiration, 6, type: Google.Protobuf.Timestamp
  field :approve, 7, type: Google.Cloud.Accessapproval.V1.ApproveDecision, oneof: 0
  field :dismiss, 8, type: Google.Cloud.Accessapproval.V1.DismissDecision, oneof: 0
end

defmodule Google.Cloud.Accessapproval.V1.EnrolledService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cloud_product: String.t(),
          enrollment_level: Google.Cloud.Accessapproval.V1.EnrollmentLevel.t()
        }

  defstruct [:cloud_product, :enrollment_level]

  field :cloud_product, 1, type: :string
  field :enrollment_level, 2, type: Google.Cloud.Accessapproval.V1.EnrollmentLevel, enum: true
end

defmodule Google.Cloud.Accessapproval.V1.AccessApprovalSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          notification_emails: [String.t()],
          enrolled_services: [Google.Cloud.Accessapproval.V1.EnrolledService.t()],
          enrolled_ancestor: boolean
        }

  defstruct [:name, :notification_emails, :enrolled_services, :enrolled_ancestor]

  field :name, 1, type: :string
  field :notification_emails, 2, repeated: true, type: :string

  field :enrolled_services, 3,
    repeated: true,
    type: Google.Cloud.Accessapproval.V1.EnrolledService

  field :enrolled_ancestor, 4, type: :bool
end

defmodule Google.Cloud.Accessapproval.V1.ListApprovalRequestsMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.ListApprovalRequestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approval_requests: [Google.Cloud.Accessapproval.V1.ApprovalRequest.t()],
          next_page_token: String.t()
        }

  defstruct [:approval_requests, :next_page_token]

  field :approval_requests, 1,
    repeated: true,
    type: Google.Cloud.Accessapproval.V1.ApprovalRequest

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.GetApprovalRequestMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.ApproveApprovalRequestMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :expire_time]

  field :name, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Accessapproval.V1.DismissApprovalRequestMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.GetAccessApprovalSettingsMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.UpdateAccessApprovalSettingsMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings: Google.Cloud.Accessapproval.V1.AccessApprovalSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:settings, :update_mask]

  field :settings, 1, type: Google.Cloud.Accessapproval.V1.AccessApprovalSettings
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Accessapproval.V1.DeleteAccessApprovalSettingsMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Accessapproval.V1.AccessApproval.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.accessapproval.v1.AccessApproval"

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

  rpc :GetAccessApprovalSettings,
      Google.Cloud.Accessapproval.V1.GetAccessApprovalSettingsMessage,
      Google.Cloud.Accessapproval.V1.AccessApprovalSettings

  rpc :UpdateAccessApprovalSettings,
      Google.Cloud.Accessapproval.V1.UpdateAccessApprovalSettingsMessage,
      Google.Cloud.Accessapproval.V1.AccessApprovalSettings

  rpc :DeleteAccessApprovalSettings,
      Google.Cloud.Accessapproval.V1.DeleteAccessApprovalSettingsMessage,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Accessapproval.V1.AccessApproval.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Accessapproval.V1.AccessApproval.Service
end
