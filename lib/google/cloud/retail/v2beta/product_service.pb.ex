defmodule Google.Cloud.Retail.V2beta.CreateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product: Google.Cloud.Retail.V2beta.Product.t() | nil,
          product_id: String.t()
        }

  defstruct [:parent, :product, :product_id]

  field :parent, 1, type: :string
  field :product, 2, type: Google.Cloud.Retail.V2beta.Product
  field :product_id, 3, type: :string
end

defmodule Google.Cloud.Retail.V2beta.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Retail.V2beta.UpdateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Retail.V2beta.Product.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:product, :update_mask, :allow_missing]

  field :product, 1, type: Google.Cloud.Retail.V2beta.Product
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :allow_missing, 3, type: :bool
end

defmodule Google.Cloud.Retail.V2beta.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ListProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :page_size, :page_token, :filter, :read_mask]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Retail.V2beta.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Retail.V2beta.Product.t()],
          next_page_token: String.t()
        }

  defstruct [:products, :next_page_token]

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Product
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Retail.V2beta.SetInventoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inventory: Google.Cloud.Retail.V2beta.Product.t() | nil,
          set_mask: Google.Protobuf.FieldMask.t() | nil,
          set_time: Google.Protobuf.Timestamp.t() | nil,
          allow_missing: boolean
        }

  defstruct [:inventory, :set_mask, :set_time, :allow_missing]

  field :inventory, 1, type: Google.Cloud.Retail.V2beta.Product
  field :set_mask, 2, type: Google.Protobuf.FieldMask
  field :set_time, 3, type: Google.Protobuf.Timestamp
  field :allow_missing, 4, type: :bool
end

defmodule Google.Cloud.Retail.V2beta.SetInventoryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2beta.SetInventoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2beta.AddFulfillmentPlacesRequest do
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

defmodule Google.Cloud.Retail.V2beta.AddFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2beta.AddFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesRequest do
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

defmodule Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2beta.ProductService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2beta.ProductService"

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

  rpc :ImportProducts,
      Google.Cloud.Retail.V2beta.ImportProductsRequest,
      Google.Longrunning.Operation

  rpc :SetInventory, Google.Cloud.Retail.V2beta.SetInventoryRequest, Google.Longrunning.Operation

  rpc :AddFulfillmentPlaces,
      Google.Cloud.Retail.V2beta.AddFulfillmentPlacesRequest,
      Google.Longrunning.Operation

  rpc :RemoveFulfillmentPlaces,
      Google.Cloud.Retail.V2beta.RemoveFulfillmentPlacesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2beta.ProductService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.ProductService.Service
end
