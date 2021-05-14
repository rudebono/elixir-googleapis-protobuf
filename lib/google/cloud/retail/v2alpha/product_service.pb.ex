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
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:product, :update_mask]

  field :product, 1, type: Google.Cloud.Retail.V2alpha.Product
  field :update_mask, 2, type: Google.Protobuf.FieldMask
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

defmodule Google.Cloud.Retail.V2alpha.ProductService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2alpha.ProductService"

  rpc :CreateProduct,
      Google.Cloud.Retail.V2alpha.CreateProductRequest,
      Google.Cloud.Retail.V2alpha.Product

  rpc :GetProduct,
      Google.Cloud.Retail.V2alpha.GetProductRequest,
      Google.Cloud.Retail.V2alpha.Product

  rpc :UpdateProduct,
      Google.Cloud.Retail.V2alpha.UpdateProductRequest,
      Google.Cloud.Retail.V2alpha.Product

  rpc :DeleteProduct, Google.Cloud.Retail.V2alpha.DeleteProductRequest, Google.Protobuf.Empty

  rpc :ImportProducts,
      Google.Cloud.Retail.V2alpha.ImportProductsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2alpha.ProductService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.ProductService.Service
end
