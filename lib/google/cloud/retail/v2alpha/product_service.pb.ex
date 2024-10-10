defmodule Google.Cloud.Retail.V2alpha.CreateProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :product, 2, type: Google.Cloud.Retail.V2alpha.Product, deprecated: false
  field :product_id, 3, type: :string, json_name: "productId", deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.GetProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UpdateProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: Google.Cloud.Retail.V2alpha.Product, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2alpha.DeleteProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 4, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.ListProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :require_total_size, 6, type: :bool, json_name: "requireTotalSize"
end

defmodule Google.Cloud.Retail.V2alpha.ListProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :inventory, 1, type: Google.Cloud.Retail.V2alpha.Product, deprecated: false
  field :set_mask, 2, type: Google.Protobuf.FieldMask, json_name: "setMask"
  field :set_time, 3, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :add_time, 4, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.AddLocalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false

  field :local_inventories, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.LocalInventory,
    json_name: "localInventories",
    deprecated: false

  field :add_mask, 4, type: Google.Protobuf.FieldMask, json_name: "addMask"
  field :add_time, 5, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 6, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2alpha.AddLocalInventoriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.AddLocalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :place_ids, 2, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 5, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 4, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.ProductService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.ProductService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateProduct,
      Google.Cloud.Retail.V2alpha.CreateProductRequest,
      Google.Cloud.Retail.V2alpha.Product

  rpc :GetProduct,
      Google.Cloud.Retail.V2alpha.GetProductRequest,
      Google.Cloud.Retail.V2alpha.Product

  rpc :ListProducts,
      Google.Cloud.Retail.V2alpha.ListProductsRequest,
      Google.Cloud.Retail.V2alpha.ListProductsResponse

  rpc :UpdateProduct,
      Google.Cloud.Retail.V2alpha.UpdateProductRequest,
      Google.Cloud.Retail.V2alpha.Product

  rpc :DeleteProduct, Google.Cloud.Retail.V2alpha.DeleteProductRequest, Google.Protobuf.Empty

  rpc :PurgeProducts,
      Google.Cloud.Retail.V2alpha.PurgeProductsRequest,
      Google.Longrunning.Operation

  rpc :ImportProducts,
      Google.Cloud.Retail.V2alpha.ImportProductsRequest,
      Google.Longrunning.Operation

  rpc :ExportProducts,
      Google.Cloud.Retail.V2alpha.ExportProductsRequest,
      Google.Longrunning.Operation

  rpc :SetInventory, Google.Cloud.Retail.V2alpha.SetInventoryRequest, Google.Longrunning.Operation

  rpc :AddFulfillmentPlaces,
      Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :RemoveFulfillmentPlaces,
      Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :AddLocalInventories,
      Google.Cloud.Retail.V2alpha.AddLocalInventoriesRequest,
      Google.Longrunning.Operation

  rpc :RemoveLocalInventories,
      Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2alpha.ProductService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.ProductService.Service
end