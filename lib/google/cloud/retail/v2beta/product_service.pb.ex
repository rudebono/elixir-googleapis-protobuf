defmodule Google.Cloud.Retail.V2beta.CreateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product: Google.Cloud.Retail.V2beta.Product.t() | nil,
          product_id: String.t()
        }

  defstruct parent: "",
            product: nil,
            product_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :product, 2, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
  field :product_id, 3, type: :string, json_name: "productId", deprecated: false
end
defmodule Google.Cloud.Retail.V2beta.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2beta.UpdateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Retail.V2beta.Product.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct product: nil,
            update_mask: nil,
            allow_missing: false

  field :product, 1, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end
defmodule Google.Cloud.Retail.V2beta.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Retail.V2beta.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Retail.V2beta.Product.t()],
          next_page_token: String.t()
        }

  defstruct products: [],
            next_page_token: ""

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
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

  defstruct inventory: nil,
            set_mask: nil,
            set_time: nil,
            allow_missing: false

  field :inventory, 1, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
  field :set_mask, 2, type: Google.Protobuf.FieldMask, json_name: "setMask"
  field :set_time, 3, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
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

  defstruct product: "",
            type: "",
            place_ids: [],
            add_time: nil,
            allow_missing: false

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :add_time, 4, type: Google.Protobuf.Timestamp, json_name: "addTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
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

  defstruct product: "",
            type: "",
            place_ids: [],
            remove_time: nil,
            allow_missing: false

  field :product, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :place_ids, 3, repeated: true, type: :string, json_name: "placeIds", deprecated: false
  field :remove_time, 4, type: Google.Protobuf.Timestamp, json_name: "removeTime"
  field :allow_missing, 5, type: :bool, json_name: "allowMissing"
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
