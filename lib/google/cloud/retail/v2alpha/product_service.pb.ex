defmodule Google.Cloud.Retail.V2alpha.CreateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product: Google.Cloud.Retail.V2alpha.Product.t() | nil,
          product_id: String.t()
        }

  defstruct [:parent, :product, :product_id]

  field :parent, 1, type: :string
  field :product, 2, type: Google.Cloud.Retail.V2alpha.Product
  field :product_id, 3, type: :string, json_name: "productId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.UpdateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Retail.V2alpha.Product.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:product, :update_mask, :allow_missing]

  field :product, 1, type: Google.Cloud.Retail.V2alpha.Product
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.ListProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          require_total_size: boolean
        }

  defstruct [:parent, :page_size, :page_token, :filter, :read_mask, :require_total_size]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :require_total_size, 6, type: :bool, json_name: "requireTotalSize"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Retail.V2alpha.Product.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:products, :next_page_token, :total_size]

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inventory: Google.Cloud.Retail.V2alpha.Product.t() | nil,
          set_mask: Google.Protobuf.FieldMask.t() | nil,
          set_time: Google.Protobuf.Timestamp.t() | nil,
          allow_missing: boolean
        }

  defstruct [:inventory, :set_mask, :set_time, :allow_missing]

  field :inventory, 1, type: Google.Cloud.Retail.V2alpha.Product
  field :set_mask, 2, type: Google.Protobuf.FieldMask, json_name: "setMask"
  field :set_time, 3, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: String.t(),
          type: String.t(),
          place_ids: [String.t()],
          add_time: Google.Protobuf.Timestamp.t() | nil,
          allow_missing: boolean
        }

  defstruct [:product, :type, :place_ids, :add_time, :allow_missing]

  field :product, 1, type: :string
  field :type, 2, type: :string
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds"
  field :add_time, 4, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.AddLocalInventoriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: String.t(),
          local_inventories: [Google.Cloud.Retail.V2alpha.LocalInventory.t()],
          add_mask: Google.Protobuf.FieldMask.t() | nil,
          add_time: Google.Protobuf.Timestamp.t() | nil,
          allow_missing: boolean
        }

  defstruct [:product, :local_inventories, :add_mask, :add_time, :allow_missing]

  field :product, 1, type: :string

  field :local_inventories, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.LocalInventory,
    json_name: "localInventories"

  field :add_mask, 4, type: Google.Protobuf.FieldMask, json_name: "addMask"
  field :add_time, 5, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 6, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.AddLocalInventoriesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.AddLocalInventoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: String.t(),
          place_ids: [String.t()],
          remove_time: Google.Protobuf.Timestamp.t() | nil,
          allow_missing: boolean
        }

  defstruct [:product, :place_ids, :remove_time, :allow_missing]

  field :product, 1, type: :string
  field :place_ids, 2, repeated: true, type: :string, json_name: "placeIds"
  field :remove_time, 5, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.RemoveLocalInventoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: String.t(),
          type: String.t(),
          place_ids: [String.t()],
          remove_time: Google.Protobuf.Timestamp.t() | nil,
          allow_missing: boolean
        }

  defstruct [:product, :type, :place_ids, :remove_time, :allow_missing]

  field :product, 1, type: :string
  field :type, 2, type: :string
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds"
  field :remove_time, 4, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.ProductService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2alpha.ProductService"

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

  rpc :ImportProducts,
      Google.Cloud.Retail.V2alpha.ImportProductsRequest,
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
