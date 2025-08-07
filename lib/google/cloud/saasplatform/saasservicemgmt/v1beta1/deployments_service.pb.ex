defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListSaasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListSaasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :saas, 10509, repeated: true, type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas
  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetSaasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateSaasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :saas_id, 10503, type: :string, json_name: "saasId", deprecated: false

  field :saas, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateSaasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :saas, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteSaasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListTenantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListTenantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tenants, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :tenant_id, 10503, type: :string, json_name: "tenantId", deprecated: false

  field :tenant, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tenant, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteTenantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitKindsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitKindsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit_kinds, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind,
    json_name: "unitKinds"

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetUnitKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateUnitKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :unit_kind_id, 10503, type: :string, json_name: "unitKindId", deprecated: false

  field :unit_kind, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind,
    json_name: "unitKind",
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateUnitKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit_kind, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind,
    json_name: "unitKind",
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteUnitKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :units, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :unit_id, 10503, type: :string, json_name: "unitId", deprecated: false

  field :unit, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit_operations, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation,
    json_name: "unitOperations"

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetUnitOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateUnitOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :unit_operation_id, 10503, type: :string, json_name: "unitOperationId", deprecated: false

  field :unit_operation, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation,
    json_name: "unitOperation",
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateUnitOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit_operation, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation,
    json_name: "unitOperation",
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteUnitOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListReleasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListReleasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :releases, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :release_id, 10503, type: :string, json_name: "releaseId", deprecated: false

  field :release, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.SaasDeployments.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.saasplatform.saasservicemgmt.v1beta1.SaasDeployments",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListSaas,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListSaasRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListSaasResponse

  rpc :GetSaas,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetSaasRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas

  rpc :CreateSaas,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateSaasRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas

  rpc :UpdateSaas,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateSaasRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas

  rpc :DeleteSaas,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteSaasRequest,
      Google.Protobuf.Empty

  rpc :ListTenants,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListTenantsRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListTenantsResponse

  rpc :GetTenant,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetTenantRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant

  rpc :CreateTenant,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateTenantRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant

  rpc :UpdateTenant,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateTenantRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant

  rpc :DeleteTenant,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteTenantRequest,
      Google.Protobuf.Empty

  rpc :ListUnitKinds,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitKindsRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitKindsResponse

  rpc :GetUnitKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetUnitKindRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind

  rpc :CreateUnitKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateUnitKindRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind

  rpc :UpdateUnitKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateUnitKindRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind

  rpc :DeleteUnitKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteUnitKindRequest,
      Google.Protobuf.Empty

  rpc :ListUnits,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitsRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitsResponse

  rpc :GetUnit,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetUnitRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit

  rpc :CreateUnit,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateUnitRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit

  rpc :UpdateUnit,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateUnitRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit

  rpc :DeleteUnit,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteUnitRequest,
      Google.Protobuf.Empty

  rpc :ListUnitOperations,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitOperationsRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListUnitOperationsResponse

  rpc :GetUnitOperation,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetUnitOperationRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation

  rpc :CreateUnitOperation,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateUnitOperationRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation

  rpc :UpdateUnitOperation,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateUnitOperationRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation

  rpc :DeleteUnitOperation,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteUnitOperationRequest,
      Google.Protobuf.Empty

  rpc :ListReleases,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListReleasesRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListReleasesResponse

  rpc :GetRelease,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetReleaseRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release

  rpc :CreateRelease,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateReleaseRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release

  rpc :UpdateRelease,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateReleaseRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release

  rpc :DeleteRelease,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteReleaseRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.SaasDeployments.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.SaasDeployments.Service
end
