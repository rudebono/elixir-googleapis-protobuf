defmodule Google.Cloud.Retail.V2.CreateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product: Google.Cloud.Retail.V2.Product.t() | nil,
          product_id: String.t()
        }

  defstruct [:parent, :product, :product_id]

  field :parent, 1, type: :string
  field :product, 2, type: Google.Cloud.Retail.V2.Product
  field :product_id, 3, type: :string
end

defmodule Google.Cloud.Retail.V2.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Retail.V2.UpdateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Retail.V2.Product.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:product, :update_mask]

  field :product, 1, type: Google.Cloud.Retail.V2.Product
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Retail.V2.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Retail.V2.ProductService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2.ProductService"

  rpc :CreateProduct, Google.Cloud.Retail.V2.CreateProductRequest, Google.Cloud.Retail.V2.Product

  rpc :GetProduct, Google.Cloud.Retail.V2.GetProductRequest, Google.Cloud.Retail.V2.Product

  rpc :UpdateProduct, Google.Cloud.Retail.V2.UpdateProductRequest, Google.Cloud.Retail.V2.Product

  rpc :DeleteProduct, Google.Cloud.Retail.V2.DeleteProductRequest, Google.Protobuf.Empty

  rpc :ImportProducts, Google.Cloud.Retail.V2.ImportProductsRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2.ProductService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.ProductService.Service
end
