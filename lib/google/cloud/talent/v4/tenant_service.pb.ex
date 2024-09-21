defmodule Google.Cloud.Talent.V4.CreateTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tenant, 2, type: Google.Cloud.Talent.V4.Tenant, deprecated: false
end

defmodule Google.Cloud.Talent.V4.GetTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Talent.V4.UpdateTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tenant, 1, type: Google.Cloud.Talent.V4.Tenant, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Talent.V4.DeleteTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Talent.V4.ListTenantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Talent.V4.ListTenantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tenants, 1, repeated: true, type: Google.Cloud.Talent.V4.Tenant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :metadata, 3, type: Google.Cloud.Talent.V4.ResponseMetadata
end

defmodule Google.Cloud.Talent.V4.TenantService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.talent.v4.TenantService",
    protoc_gen_elixir_version: "0.13.0"

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