defmodule Google.Cloud.Retail.V2beta.CreateProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :product, 2, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
  field :product_id, 3, type: :string, json_name: "productId", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.GetProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.UpdateProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2beta.DeleteProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Retail.V2beta.ListProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2beta.SetInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :inventory, 1, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
  field :set_mask, 2, type: Google.Protobuf.FieldMask, json_name: "setMask"
  field :set_time, 3, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2beta.SetInventoryMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.SetInventoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.AddFulfillmentPlacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :add_time, 4, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2beta.AddFulfillmentPlacesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.AddFulfillmentPlacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.AddLocalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false

  field :local_inventories, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.LocalInventory,
    json_name: "localInventories",
    deprecated: false

  field :add_mask, 4, type: Google.Protobuf.FieldMask, json_name: "addMask"
  field :add_time, 5, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 6, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2beta.AddLocalInventoriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.AddLocalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.RemoveLocalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :place_ids, 2, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 5, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2beta.RemoveLocalInventoriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.RemoveLocalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 4, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.ProductService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.ProductService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateProduct,
      Google.Cloud.Retail.V2beta.CreateProductRequest,
      Google.Cloud.Retail.V2beta.Product

  rpc :GetProduct,
      Google.Cloud.Retail.V2beta.GetProductRequest,
      Google.Cloud.Retail.V2beta.Product

  rpc :ListProducts,
      Google.Cloud.Retail.V2beta.ListProductsRequest,
      Google.Cloud.Retail.V2beta.ListProductsResponse

  rpc :UpdateProduct,
      Google.Cloud.Retail.V2beta.UpdateProductRequest,
      Google.Cloud.Retail.V2beta.Product

  rpc :DeleteProduct, Google.Cloud.Retail.V2beta.DeleteProductRequest, Google.Protobuf.Empty

  rpc :PurgeProducts,
      Google.Cloud.Retail.V2beta.PurgeProductsRequest,
      Google.Longrunning.Operation

  rpc :ImportProducts,
      Google.Cloud.Retail.V2beta.ImportProductsRequest,
      Google.Longrunning.Operation

  rpc :ExportProducts,
      Google.Cloud.Retail.V2beta.ExportProductsRequest,
      Google.Longrunning.Operation

  rpc :SetInventory, Google.Cloud.Retail.V2beta.SetInventoryRequest, Google.Longrunning.Operation

  rpc :AddFulfillmentPlaces,
      Google.Cloud.Retail.V2beta.AddFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :RemoveFulfillmentPlaces,
      Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :AddLocalInventories,
      Google.Cloud.Retail.V2beta.AddLocalInventoriesRequest,
      Google.Longrunning.Operation

  rpc :RemoveLocalInventories,
      Google.Cloud.Retail.V2beta.RemoveLocalInventoriesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2beta.ProductService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.ProductService.Service
end