defmodule Google.Cloud.Kms.Inventory.V1.GetProtectedResourcesSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary.ResourceTypesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary.CloudProductsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary.LocationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 5, type: :string
  field :resource_count, 1, type: :int64, json_name: "resourceCount"
  field :project_count, 2, type: :int32, json_name: "projectCount"

  field :resource_types, 3,
    repeated: true,
    type: Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary.ResourceTypesEntry,
    json_name: "resourceTypes",
    map: true

  field :cloud_products, 6,
    repeated: true,
    type: Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary.CloudProductsEntry,
    json_name: "cloudProducts",
    map: true

  field :locations, 4,
    repeated: true,
    type: Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary.LocationsEntry,
    map: true
end

defmodule Google.Cloud.Kms.Inventory.V1.SearchProtectedResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :scope, 2, type: :string, deprecated: false
  field :crypto_key, 1, type: :string, json_name: "cryptoKey", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  field :resource_types, 5,
    repeated: true,
    type: :string,
    json_name: "resourceTypes",
    deprecated: false
end

defmodule Google.Cloud.Kms.Inventory.V1.SearchProtectedResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :protected_resources, 1,
    repeated: true,
    type: Google.Cloud.Kms.Inventory.V1.ProtectedResource,
    json_name: "protectedResources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Kms.Inventory.V1.ProtectedResource.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Kms.Inventory.V1.ProtectedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :project, 2, type: :string
  field :project_id, 9, type: :string, json_name: "projectId"
  field :cloud_product, 8, type: :string, json_name: "cloudProduct"
  field :resource_type, 3, type: :string, json_name: "resourceType"
  field :location, 4, type: :string

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Kms.Inventory.V1.ProtectedResource.LabelsEntry,
    map: true

  field :crypto_key_version, 6, type: :string, json_name: "cryptoKeyVersion", deprecated: false

  field :crypto_key_versions, 10,
    repeated: true,
    type: :string,
    json_name: "cryptoKeyVersions",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Kms.Inventory.V1.KeyTrackingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.kms.inventory.v1.KeyTrackingService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetProtectedResourcesSummary,
      Google.Cloud.Kms.Inventory.V1.GetProtectedResourcesSummaryRequest,
      Google.Cloud.Kms.Inventory.V1.ProtectedResourcesSummary

  rpc :SearchProtectedResources,
      Google.Cloud.Kms.Inventory.V1.SearchProtectedResourcesRequest,
      Google.Cloud.Kms.Inventory.V1.SearchProtectedResourcesResponse
end

defmodule Google.Cloud.Kms.Inventory.V1.KeyTrackingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Kms.Inventory.V1.KeyTrackingService.Service
end
