defmodule Google.Identity.Accesscontextmanager.V1.LevelFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LEVEL_FORMAT_UNSPECIFIED | :AS_DEFINED | :CEL

  field :LEVEL_FORMAT_UNSPECIFIED, 0

  field :AS_DEFINED, 1

  field :CEL, 2
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_policies: [Google.Identity.Accesscontextmanager.V1.AccessPolicy.t()],
          next_page_token: String.t()
        }

  defstruct [:access_policies, :next_page_token]

  field :access_policies, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessPolicy

  field :next_page_token, 2, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.GetAccessPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateAccessPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Identity.Accesscontextmanager.V1.AccessPolicy.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:policy, :update_mask]

  field :policy, 1, type: Google.Identity.Accesscontextmanager.V1.AccessPolicy
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteAccessPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessLevelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          access_level_format: Google.Identity.Accesscontextmanager.V1.LevelFormat.t()
        }

  defstruct [:parent, :page_size, :page_token, :access_level_format]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string

  field :access_level_format, 4,
    type: Google.Identity.Accesscontextmanager.V1.LevelFormat,
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.ListAccessLevelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_levels: [Google.Identity.Accesscontextmanager.V1.AccessLevel.t()],
          next_page_token: String.t()
        }

  defstruct [:access_levels, :next_page_token]

  field :access_levels, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel

  field :next_page_token, 2, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.GetAccessLevelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          access_level_format: Google.Identity.Accesscontextmanager.V1.LevelFormat.t()
        }

  defstruct [:name, :access_level_format]

  field :name, 1, type: :string

  field :access_level_format, 2,
    type: Google.Identity.Accesscontextmanager.V1.LevelFormat,
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.CreateAccessLevelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          access_level: Google.Identity.Accesscontextmanager.V1.AccessLevel.t() | nil
        }

  defstruct [:parent, :access_level]

  field :parent, 1, type: :string
  field :access_level, 2, type: Google.Identity.Accesscontextmanager.V1.AccessLevel
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateAccessLevelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_level: Google.Identity.Accesscontextmanager.V1.AccessLevel.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:access_level, :update_mask]

  field :access_level, 1, type: Google.Identity.Accesscontextmanager.V1.AccessLevel
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteAccessLevelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceAccessLevelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          access_levels: [Google.Identity.Accesscontextmanager.V1.AccessLevel.t()],
          etag: String.t()
        }

  defstruct [:parent, :access_levels, :etag]

  field :parent, 1, type: :string

  field :access_levels, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel

  field :etag, 4, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceAccessLevelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_levels: [Google.Identity.Accesscontextmanager.V1.AccessLevel.t()]
        }

  defstruct [:access_levels]

  field :access_levels, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel
end

defmodule Google.Identity.Accesscontextmanager.V1.ListServicePerimetersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ListServicePerimetersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_perimeters: [Google.Identity.Accesscontextmanager.V1.ServicePerimeter.t()],
          next_page_token: String.t()
        }

  defstruct [:service_perimeters, :next_page_token]

  field :service_perimeters, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter

  field :next_page_token, 2, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.GetServicePerimeterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.CreateServicePerimeterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_perimeter: Google.Identity.Accesscontextmanager.V1.ServicePerimeter.t() | nil
        }

  defstruct [:parent, :service_perimeter]

  field :parent, 1, type: :string
  field :service_perimeter, 2, type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateServicePerimeterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_perimeter: Google.Identity.Accesscontextmanager.V1.ServicePerimeter.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:service_perimeter, :update_mask]

  field :service_perimeter, 1, type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteServicePerimeterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceServicePerimetersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_perimeters: [Google.Identity.Accesscontextmanager.V1.ServicePerimeter.t()],
          etag: String.t()
        }

  defstruct [:parent, :service_perimeters, :etag]

  field :parent, 1, type: :string

  field :service_perimeters, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter

  field :etag, 3, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ReplaceServicePerimetersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_perimeters: [Google.Identity.Accesscontextmanager.V1.ServicePerimeter.t()]
        }

  defstruct [:service_perimeters]

  field :service_perimeters, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter
end

defmodule Google.Identity.Accesscontextmanager.V1.CommitServicePerimetersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          etag: String.t()
        }

  defstruct [:parent, :etag]

  field :parent, 1, type: :string
  field :etag, 2, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.CommitServicePerimetersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_perimeters: [Google.Identity.Accesscontextmanager.V1.ServicePerimeter.t()]
        }

  defstruct [:service_perimeters]

  field :service_perimeters, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter
end

defmodule Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcp_user_access_bindings: [
            Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding.t()
          ],
          next_page_token: String.t()
        }

  defstruct [:gcp_user_access_bindings, :next_page_token]

  field :gcp_user_access_bindings, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding

  field :next_page_token, 2, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.GetGcpUserAccessBindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.CreateGcpUserAccessBindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          gcp_user_access_binding:
            Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding.t() | nil
        }

  defstruct [:parent, :gcp_user_access_binding]

  field :parent, 1, type: :string

  field :gcp_user_access_binding, 2,
    type: Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding
end

defmodule Google.Identity.Accesscontextmanager.V1.UpdateGcpUserAccessBindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcp_user_access_binding:
            Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:gcp_user_access_binding, :update_mask]

  field :gcp_user_access_binding, 1,
    type: Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding

  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Identity.Accesscontextmanager.V1.DeleteGcpUserAccessBindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.GcpUserAccessBindingOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessContextManagerOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessContextManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.identity.accesscontextmanager.v1.AccessContextManager"

  rpc :ListAccessPolicies,
      Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesRequest,
      Google.Identity.Accesscontextmanager.V1.ListAccessPoliciesResponse

  rpc :GetAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.GetAccessPolicyRequest,
      Google.Identity.Accesscontextmanager.V1.AccessPolicy

  rpc :CreateAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.AccessPolicy,
      Google.Longrunning.Operation

  rpc :UpdateAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.UpdateAccessPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteAccessPolicy,
      Google.Identity.Accesscontextmanager.V1.DeleteAccessPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListAccessLevels,
      Google.Identity.Accesscontextmanager.V1.ListAccessLevelsRequest,
      Google.Identity.Accesscontextmanager.V1.ListAccessLevelsResponse

  rpc :GetAccessLevel,
      Google.Identity.Accesscontextmanager.V1.GetAccessLevelRequest,
      Google.Identity.Accesscontextmanager.V1.AccessLevel

  rpc :CreateAccessLevel,
      Google.Identity.Accesscontextmanager.V1.CreateAccessLevelRequest,
      Google.Longrunning.Operation

  rpc :UpdateAccessLevel,
      Google.Identity.Accesscontextmanager.V1.UpdateAccessLevelRequest,
      Google.Longrunning.Operation

  rpc :DeleteAccessLevel,
      Google.Identity.Accesscontextmanager.V1.DeleteAccessLevelRequest,
      Google.Longrunning.Operation

  rpc :ReplaceAccessLevels,
      Google.Identity.Accesscontextmanager.V1.ReplaceAccessLevelsRequest,
      Google.Longrunning.Operation

  rpc :ListServicePerimeters,
      Google.Identity.Accesscontextmanager.V1.ListServicePerimetersRequest,
      Google.Identity.Accesscontextmanager.V1.ListServicePerimetersResponse

  rpc :GetServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.GetServicePerimeterRequest,
      Google.Identity.Accesscontextmanager.V1.ServicePerimeter

  rpc :CreateServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.CreateServicePerimeterRequest,
      Google.Longrunning.Operation

  rpc :UpdateServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.UpdateServicePerimeterRequest,
      Google.Longrunning.Operation

  rpc :DeleteServicePerimeter,
      Google.Identity.Accesscontextmanager.V1.DeleteServicePerimeterRequest,
      Google.Longrunning.Operation

  rpc :ReplaceServicePerimeters,
      Google.Identity.Accesscontextmanager.V1.ReplaceServicePerimetersRequest,
      Google.Longrunning.Operation

  rpc :CommitServicePerimeters,
      Google.Identity.Accesscontextmanager.V1.CommitServicePerimetersRequest,
      Google.Longrunning.Operation

  rpc :ListGcpUserAccessBindings,
      Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsRequest,
      Google.Identity.Accesscontextmanager.V1.ListGcpUserAccessBindingsResponse

  rpc :GetGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.GetGcpUserAccessBindingRequest,
      Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding

  rpc :CreateGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.CreateGcpUserAccessBindingRequest,
      Google.Longrunning.Operation

  rpc :UpdateGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.UpdateGcpUserAccessBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteGcpUserAccessBinding,
      Google.Identity.Accesscontextmanager.V1.DeleteGcpUserAccessBindingRequest,
      Google.Longrunning.Operation
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessContextManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Identity.Accesscontextmanager.V1.AccessContextManager.Service
end
