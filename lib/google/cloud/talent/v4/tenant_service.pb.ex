defmodule Google.Cloud.Talent.V4.CreateTenantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tenant: Google.Cloud.Talent.V4.Tenant.t() | nil
        }

  defstruct [:parent, :tenant]

  field :parent, 1, type: :string
  field :tenant, 2, type: Google.Cloud.Talent.V4.Tenant
end

defmodule Google.Cloud.Talent.V4.GetTenantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4.UpdateTenantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tenant: Google.Cloud.Talent.V4.Tenant.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:tenant, :update_mask]

  field :tenant, 1, type: Google.Cloud.Talent.V4.Tenant
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Talent.V4.DeleteTenantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4.ListTenantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Talent.V4.ListTenantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tenants: [Google.Cloud.Talent.V4.Tenant.t()],
          next_page_token: String.t(),
          metadata: Google.Cloud.Talent.V4.ResponseMetadata.t() | nil
        }

  defstruct [:tenants, :next_page_token, :metadata]

  field :tenants, 1, repeated: true, type: Google.Cloud.Talent.V4.Tenant
  field :next_page_token, 2, type: :string
  field :metadata, 3, type: Google.Cloud.Talent.V4.ResponseMetadata
end

defmodule Google.Cloud.Talent.V4.TenantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4.TenantService"

  rpc :CreateTenant, Google.Cloud.Talent.V4.CreateTenantRequest, Google.Cloud.Talent.V4.Tenant

  rpc :GetTenant, Google.Cloud.Talent.V4.GetTenantRequest, Google.Cloud.Talent.V4.Tenant

  rpc :UpdateTenant, Google.Cloud.Talent.V4.UpdateTenantRequest, Google.Cloud.Talent.V4.Tenant

  rpc :DeleteTenant, Google.Cloud.Talent.V4.DeleteTenantRequest, Google.Protobuf.Empty

  rpc :ListTenants,
      Google.Cloud.Talent.V4.ListTenantsRequest,
      Google.Cloud.Talent.V4.ListTenantsResponse
end

defmodule Google.Cloud.Talent.V4.TenantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4.TenantService.Service
end
