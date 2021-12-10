defmodule Google.Cloud.Vision.V1.BatchOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PROCESSING | :SUCCESSFUL | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :PROCESSING, 1
  field :SUCCESSFUL, 2
  field :FAILED, 3
  field :CANCELLED, 4
end
defmodule Google.Cloud.Vision.V1.Product.KeyValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Vision.V1.Product do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          product_category: String.t(),
          product_labels: [Google.Cloud.Vision.V1.Product.KeyValue.t()]
        }

  defstruct name: "",
            display_name: "",
            description: "",
            product_category: "",
            product_labels: []

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :product_category, 4, type: :string, json_name: "productCategory", deprecated: false

  field :product_labels, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1.Product.KeyValue,
    json_name: "productLabels"
end
defmodule Google.Cloud.Vision.V1.ProductSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          index_time: Google.Protobuf.Timestamp.t() | nil,
          index_error: Google.Rpc.Status.t() | nil
        }

  defstruct name: "",
            display_name: "",
            index_time: nil,
            index_error: nil

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :index_time, 3, type: Google.Protobuf.Timestamp, json_name: "indexTime", deprecated: false
  field :index_error, 4, type: Google.Rpc.Status, json_name: "indexError", deprecated: false
end
defmodule Google.Cloud.Vision.V1.ReferenceImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uri: String.t(),
          bounding_polys: [Google.Cloud.Vision.V1.BoundingPoly.t()]
        }

  defstruct name: "",
            uri: "",
            bounding_polys: []

  field :name, 1, type: :string
  field :uri, 2, type: :string, deprecated: false

  field :bounding_polys, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1.BoundingPoly,
    json_name: "boundingPolys",
    deprecated: false
end
defmodule Google.Cloud.Vision.V1.CreateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product: Google.Cloud.Vision.V1.Product.t() | nil,
          product_id: String.t()
        }

  defstruct parent: "",
            product: nil,
            product_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :product, 2, type: Google.Cloud.Vision.V1.Product, deprecated: false
  field :product_id, 3, type: :string, json_name: "productId"
end
defmodule Google.Cloud.Vision.V1.ListProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Vision.V1.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Vision.V1.Product.t()],
          next_page_token: String.t()
        }

  defstruct products: [],
            next_page_token: ""

  field :products, 1, repeated: true, type: Google.Cloud.Vision.V1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Vision.V1.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.UpdateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Vision.V1.Product.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct product: nil,
            update_mask: nil

  field :product, 1, type: Google.Cloud.Vision.V1.Product, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Vision.V1.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.CreateProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product_set: Google.Cloud.Vision.V1.ProductSet.t() | nil,
          product_set_id: String.t()
        }

  defstruct parent: "",
            product_set: nil,
            product_set_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :product_set, 2,
    type: Google.Cloud.Vision.V1.ProductSet,
    json_name: "productSet",
    deprecated: false

  field :product_set_id, 3, type: :string, json_name: "productSetId"
end
defmodule Google.Cloud.Vision.V1.ListProductSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Vision.V1.ListProductSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_sets: [Google.Cloud.Vision.V1.ProductSet.t()],
          next_page_token: String.t()
        }

  defstruct product_sets: [],
            next_page_token: ""

  field :product_sets, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1.ProductSet,
    json_name: "productSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Vision.V1.GetProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.UpdateProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_set: Google.Cloud.Vision.V1.ProductSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct product_set: nil,
            update_mask: nil

  field :product_set, 1,
    type: Google.Cloud.Vision.V1.ProductSet,
    json_name: "productSet",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Vision.V1.DeleteProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.CreateReferenceImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          reference_image: Google.Cloud.Vision.V1.ReferenceImage.t() | nil,
          reference_image_id: String.t()
        }

  defstruct parent: "",
            reference_image: nil,
            reference_image_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :reference_image, 2,
    type: Google.Cloud.Vision.V1.ReferenceImage,
    json_name: "referenceImage",
    deprecated: false

  field :reference_image_id, 3, type: :string, json_name: "referenceImageId"
end
defmodule Google.Cloud.Vision.V1.ListReferenceImagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Vision.V1.ListReferenceImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_images: [Google.Cloud.Vision.V1.ReferenceImage.t()],
          page_size: integer,
          next_page_token: String.t()
        }

  defstruct reference_images: [],
            page_size: 0,
            next_page_token: ""

  field :reference_images, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1.ReferenceImage,
    json_name: "referenceImages"

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Vision.V1.GetReferenceImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.DeleteReferenceImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.AddProductToProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          product: String.t()
        }

  defstruct name: "",
            product: ""

  field :name, 1, type: :string, deprecated: false
  field :product, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.RemoveProductFromProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          product: String.t()
        }

  defstruct name: "",
            product: ""

  field :name, 1, type: :string, deprecated: false
  field :product, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Vision.V1.ListProductsInProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct name: "",
            page_size: 0,
            page_token: ""

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Vision.V1.ListProductsInProductSetResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Vision.V1.Product.t()],
          next_page_token: String.t()
        }

  defstruct products: [],
            next_page_token: ""

  field :products, 1, repeated: true, type: Google.Cloud.Vision.V1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Vision.V1.ImportProductSetsGcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          csv_file_uri: String.t()
        }

  defstruct csv_file_uri: ""

  field :csv_file_uri, 1, type: :string, json_name: "csvFileUri"
end
defmodule Google.Cloud.Vision.V1.ImportProductSetsInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Vision.V1.ImportProductSetsGcsSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Vision.V1.ImportProductSetsGcsSource,
    json_name: "gcsSource",
    oneof: 0
end
defmodule Google.Cloud.Vision.V1.ImportProductSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          input_config: Google.Cloud.Vision.V1.ImportProductSetsInputConfig.t() | nil
        }

  defstruct parent: "",
            input_config: nil

  field :parent, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Vision.V1.ImportProductSetsInputConfig,
    json_name: "inputConfig",
    deprecated: false
end
defmodule Google.Cloud.Vision.V1.ImportProductSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_images: [Google.Cloud.Vision.V1.ReferenceImage.t()],
          statuses: [Google.Rpc.Status.t()]
        }

  defstruct reference_images: [],
            statuses: []

  field :reference_images, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1.ReferenceImage,
    json_name: "referenceImages"

  field :statuses, 2, repeated: true, type: Google.Rpc.Status
end
defmodule Google.Cloud.Vision.V1.BatchOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Vision.V1.BatchOperationMetadata.State.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            submit_time: nil,
            end_time: nil

  field :state, 1, type: Google.Cloud.Vision.V1.BatchOperationMetadata.State, enum: true
  field :submit_time, 2, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Vision.V1.ProductSetPurgeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_set_id: String.t()
        }

  defstruct product_set_id: ""

  field :product_set_id, 1, type: :string, json_name: "productSetId"
end
defmodule Google.Cloud.Vision.V1.PurgeProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:product_set_purge_config, Google.Cloud.Vision.V1.ProductSetPurgeConfig.t() | nil}
            | {:delete_orphan_products, boolean},
          parent: String.t(),
          force: boolean
        }

  defstruct target: nil,
            parent: "",
            force: false

  oneof :target, 0

  field :product_set_purge_config, 2,
    type: Google.Cloud.Vision.V1.ProductSetPurgeConfig,
    json_name: "productSetPurgeConfig",
    oneof: 0

  field :delete_orphan_products, 3, type: :bool, json_name: "deleteOrphanProducts", oneof: 0
  field :parent, 1, type: :string, deprecated: false
  field :force, 4, type: :bool
end
defmodule Google.Cloud.Vision.V1.ProductSearch.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.vision.v1.ProductSearch"

  rpc :CreateProductSet,
      Google.Cloud.Vision.V1.CreateProductSetRequest,
      Google.Cloud.Vision.V1.ProductSet

  rpc :ListProductSets,
      Google.Cloud.Vision.V1.ListProductSetsRequest,
      Google.Cloud.Vision.V1.ListProductSetsResponse

  rpc :GetProductSet,
      Google.Cloud.Vision.V1.GetProductSetRequest,
      Google.Cloud.Vision.V1.ProductSet

  rpc :UpdateProductSet,
      Google.Cloud.Vision.V1.UpdateProductSetRequest,
      Google.Cloud.Vision.V1.ProductSet

  rpc :DeleteProductSet, Google.Cloud.Vision.V1.DeleteProductSetRequest, Google.Protobuf.Empty

  rpc :CreateProduct, Google.Cloud.Vision.V1.CreateProductRequest, Google.Cloud.Vision.V1.Product

  rpc :ListProducts,
      Google.Cloud.Vision.V1.ListProductsRequest,
      Google.Cloud.Vision.V1.ListProductsResponse

  rpc :GetProduct, Google.Cloud.Vision.V1.GetProductRequest, Google.Cloud.Vision.V1.Product

  rpc :UpdateProduct, Google.Cloud.Vision.V1.UpdateProductRequest, Google.Cloud.Vision.V1.Product

  rpc :DeleteProduct, Google.Cloud.Vision.V1.DeleteProductRequest, Google.Protobuf.Empty

  rpc :CreateReferenceImage,
      Google.Cloud.Vision.V1.CreateReferenceImageRequest,
      Google.Cloud.Vision.V1.ReferenceImage

  rpc :DeleteReferenceImage,
      Google.Cloud.Vision.V1.DeleteReferenceImageRequest,
      Google.Protobuf.Empty

  rpc :ListReferenceImages,
      Google.Cloud.Vision.V1.ListReferenceImagesRequest,
      Google.Cloud.Vision.V1.ListReferenceImagesResponse

  rpc :GetReferenceImage,
      Google.Cloud.Vision.V1.GetReferenceImageRequest,
      Google.Cloud.Vision.V1.ReferenceImage

  rpc :AddProductToProductSet,
      Google.Cloud.Vision.V1.AddProductToProductSetRequest,
      Google.Protobuf.Empty

  rpc :RemoveProductFromProductSet,
      Google.Cloud.Vision.V1.RemoveProductFromProductSetRequest,
      Google.Protobuf.Empty

  rpc :ListProductsInProductSet,
      Google.Cloud.Vision.V1.ListProductsInProductSetRequest,
      Google.Cloud.Vision.V1.ListProductsInProductSetResponse

  rpc :ImportProductSets,
      Google.Cloud.Vision.V1.ImportProductSetsRequest,
      Google.Longrunning.Operation

  rpc :PurgeProducts, Google.Cloud.Vision.V1.PurgeProductsRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Vision.V1.ProductSearch.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vision.V1.ProductSearch.Service
end
