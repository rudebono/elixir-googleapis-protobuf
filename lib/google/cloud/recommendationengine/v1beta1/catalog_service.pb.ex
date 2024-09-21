defmodule Google.Cloud.Recommendationengine.V1beta1.CreateCatalogItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :catalog_item, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItem",
    deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.GetCatalogItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog_items, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recommendationengine.V1beta1.UpdateCatalogItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :catalog_item, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItem",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Recommendationengine.V1beta1.DeleteCatalogItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.recommendationengine.v1beta1.CatalogService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.CreateCatalogItemRequest,
      Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  rpc :GetCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.GetCatalogItemRequest,
      Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  rpc :ListCatalogItems,
      Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsRequest,
      Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsResponse

  rpc :UpdateCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.UpdateCatalogItemRequest,
      Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  rpc :DeleteCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.DeleteCatalogItemRequest,
      Google.Protobuf.Empty

  rpc :ImportCatalogItems,
      Google.Cloud.Recommendationengine.V1beta1.ImportCatalogItemsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Recommendationengine.V1beta1.CatalogService.Service
end