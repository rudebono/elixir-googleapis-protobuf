defmodule Google.Cloud.Retail.V2.CreateProductRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :product, 2, type: Google.Cloud.Retail.V2.Product, deprecated: false
  field :product_id, 3, type: :string, json_name: "productId", deprecated: false
end
defmodule Google.Cloud.Retail.V2.GetProductRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2.UpdateProductRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :product, 1, type: Google.Cloud.Retail.V2.Product, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2.DeleteProductRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2.ListProductsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Retail.V2.ListProductsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Retail.V2.SetInventoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :inventory, 1, type: Google.Cloud.Retail.V2.Product, deprecated: false
  field :set_mask, 2, type: Google.Protobuf.FieldMask, json_name: "setMask"
  field :set_time, 3, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2.SetInventoryMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.SetInventoryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.AddFulfillmentPlacesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :add_time, 4, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2.AddFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.AddFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.AddLocalInventoriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false

  field :local_inventories, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2.LocalInventory,
    json_name: "localInventories",
    deprecated: false

  field :add_mask, 4, type: Google.Protobuf.FieldMask, json_name: "addMask"
  field :add_time, 5, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 6, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2.AddLocalInventoriesMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.AddLocalInventoriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.RemoveLocalInventoriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :place_ids, 2, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 5, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2.RemoveLocalInventoriesMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.RemoveLocalInventoriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.RemoveFulfillmentPlacesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 4, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2.RemoveFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.RemoveFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2.ProductService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.retail.v2.ProductService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateProduct, Google.Cloud.Retail.V2.CreateProductRequest, Google.Cloud.Retail.V2.Product

  rpc :GetProduct, Google.Cloud.Retail.V2.GetProductRequest, Google.Cloud.Retail.V2.Product

  rpc :ListProducts,
      Google.Cloud.Retail.V2.ListProductsRequest,
      Google.Cloud.Retail.V2.ListProductsResponse

  rpc :UpdateProduct, Google.Cloud.Retail.V2.UpdateProductRequest, Google.Cloud.Retail.V2.Product

  rpc :DeleteProduct, Google.Cloud.Retail.V2.DeleteProductRequest, Google.Protobuf.Empty

  rpc :ImportProducts, Google.Cloud.Retail.V2.ImportProductsRequest, Google.Longrunning.Operation

  rpc :SetInventory, Google.Cloud.Retail.V2.SetInventoryRequest, Google.Longrunning.Operation

  rpc :AddFulfillmentPlaces,
      Google.Cloud.Retail.V2.AddFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :RemoveFulfillmentPlaces,
      Google.Cloud.Retail.V2.RemoveFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :AddLocalInventories,
      Google.Cloud.Retail.V2.AddLocalInventoriesRequest,
      Google.Longrunning.Operation

  rpc :RemoveLocalInventories,
      Google.Cloud.Retail.V2.RemoveLocalInventoriesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2.ProductService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.ProductService.Service
end
