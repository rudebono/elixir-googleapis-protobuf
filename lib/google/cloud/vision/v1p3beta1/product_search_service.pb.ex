defmodule Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROCESSING, 1
  field :SUCCESSFUL, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Vision.V1p3beta1.Product.KeyValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :product_category, 4, type: :string, json_name: "productCategory", deprecated: false

  field :product_labels, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.Product.KeyValue,
    json_name: "productLabels"
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :index_time, 3, type: Google.Protobuf.Timestamp, json_name: "indexTime", deprecated: false
  field :index_error, 4, type: Google.Rpc.Status, json_name: "indexError", deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.ReferenceImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :uri, 2, type: :string, deprecated: false

  field :bounding_polys, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.BoundingPoly,
    json_name: "boundingPolys",
    deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.CreateProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :product, 2, type: Google.Cloud.Vision.V1p3beta1.Product, deprecated: false
  field :product_id, 3, type: :string, json_name: "productId"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.GetProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.UpdateProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product, 1, type: Google.Cloud.Vision.V1p3beta1.Product, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Vision.V1p3beta1.DeleteProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.CreateProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :product_set, 2,
    type: Google.Cloud.Vision.V1p3beta1.ProductSet,
    json_name: "productSet",
    deprecated: false

  field :product_set_id, 3, type: :string, json_name: "productSetId"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_sets, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.ProductSet,
    json_name: "productSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.GetProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.UpdateProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_set, 1,
    type: Google.Cloud.Vision.V1p3beta1.ProductSet,
    json_name: "productSet",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Vision.V1p3beta1.DeleteProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.CreateReferenceImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :reference_image, 2,
    type: Google.Cloud.Vision.V1p3beta1.ReferenceImage,
    json_name: "referenceImage",
    deprecated: false

  field :reference_image_id, 3, type: :string, json_name: "referenceImageId"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListReferenceImagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListReferenceImagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reference_images, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.ReferenceImage,
    json_name: "referenceImages"

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.GetReferenceImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.DeleteReferenceImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.AddProductToProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :product, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.RemoveProductFromProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :product, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsGcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :csv_file_uri, 1, type: :string, json_name: "csvFileUri"
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Vision.V1p3beta1.ImportProductSetsGcsSource,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Vision.V1p3beta1.ImportProductSetsInputConfig,
    json_name: "inputConfig",
    deprecated: false
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reference_images, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.ReferenceImage,
    json_name: "referenceImages"

  field :statuses, 2, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1, type: Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata.State, enum: true
  field :submit_time, 2, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearch.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vision.v1p3beta1.ProductSearch",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateProductSet,
      Google.Cloud.Vision.V1p3beta1.CreateProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ProductSet

  rpc :ListProductSets,
      Google.Cloud.Vision.V1p3beta1.ListProductSetsRequest,
      Google.Cloud.Vision.V1p3beta1.ListProductSetsResponse

  rpc :GetProductSet,
      Google.Cloud.Vision.V1p3beta1.GetProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ProductSet

  rpc :UpdateProductSet,
      Google.Cloud.Vision.V1p3beta1.UpdateProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ProductSet

  rpc :DeleteProductSet,
      Google.Cloud.Vision.V1p3beta1.DeleteProductSetRequest,
      Google.Protobuf.Empty

  rpc :CreateProduct,
      Google.Cloud.Vision.V1p3beta1.CreateProductRequest,
      Google.Cloud.Vision.V1p3beta1.Product

  rpc :ListProducts,
      Google.Cloud.Vision.V1p3beta1.ListProductsRequest,
      Google.Cloud.Vision.V1p3beta1.ListProductsResponse

  rpc :GetProduct,
      Google.Cloud.Vision.V1p3beta1.GetProductRequest,
      Google.Cloud.Vision.V1p3beta1.Product

  rpc :UpdateProduct,
      Google.Cloud.Vision.V1p3beta1.UpdateProductRequest,
      Google.Cloud.Vision.V1p3beta1.Product

  rpc :DeleteProduct, Google.Cloud.Vision.V1p3beta1.DeleteProductRequest, Google.Protobuf.Empty

  rpc :CreateReferenceImage,
      Google.Cloud.Vision.V1p3beta1.CreateReferenceImageRequest,
      Google.Cloud.Vision.V1p3beta1.ReferenceImage

  rpc :DeleteReferenceImage,
      Google.Cloud.Vision.V1p3beta1.DeleteReferenceImageRequest,
      Google.Protobuf.Empty

  rpc :ListReferenceImages,
      Google.Cloud.Vision.V1p3beta1.ListReferenceImagesRequest,
      Google.Cloud.Vision.V1p3beta1.ListReferenceImagesResponse

  rpc :GetReferenceImage,
      Google.Cloud.Vision.V1p3beta1.GetReferenceImageRequest,
      Google.Cloud.Vision.V1p3beta1.ReferenceImage

  rpc :AddProductToProductSet,
      Google.Cloud.Vision.V1p3beta1.AddProductToProductSetRequest,
      Google.Protobuf.Empty

  rpc :RemoveProductFromProductSet,
      Google.Cloud.Vision.V1p3beta1.RemoveProductFromProductSetRequest,
      Google.Protobuf.Empty

  rpc :ListProductsInProductSet,
      Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetResponse

  rpc :ImportProductSets,
      Google.Cloud.Vision.V1p3beta1.ImportProductSetsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearch.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vision.V1p3beta1.ProductSearch.Service
end
