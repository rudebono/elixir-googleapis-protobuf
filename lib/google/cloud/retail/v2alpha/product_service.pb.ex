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
  field :product_id, 3, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :allow_missing, 3, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
  field :require_total_size, 6, type: :bool
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
  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int32
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
  field :set_mask, 2, type: Google.Protobuf.FieldMask
  field :set_time, 3, type: Google.Protobuf.Timestamp
  field :allow_missing, 4, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2alpha.SetInventoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
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
  field :place_ids, 3, repeated: true, type: :string
  field :add_time, 4, type: Google.Protobuf.Timestamp
  field :allow_missing, 5, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2alpha.AddFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
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
  field :place_ids, 3, repeated: true, type: :string
  field :remove_time, 4, type: Google.Protobuf.Timestamp
  field :allow_missing, 5, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2alpha.RemoveFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
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
end

defmodule Google.Cloud.Retail.V2alpha.ProductService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.ProductService.Service
end
