defmodule Google.Shopping.Merchant.Reviews.V1beta.GetProductReviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.DeleteProductReviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ListProductReviewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.InsertProductReviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :product_review, 2,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReview,
    json_name: "productReview",
    deprecated: false

  field :data_source, 3, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ListProductReviewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_reviews, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReview,
    json_name: "productReviews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :product_review_id, 2, type: :string, json_name: "productReviewId", deprecated: false

  field :product_review_attributes, 3,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes,
    json_name: "productReviewAttributes",
    deprecated: false

  field :custom_attributes, 4,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes",
    deprecated: false

  field :data_source, 5, type: :string, json_name: "dataSource", deprecated: false

  field :product_review_status, 6,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus,
    json_name: "productReviewStatus",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.reviews.v1beta.ProductReviewsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetProductReview,
      Google.Shopping.Merchant.Reviews.V1beta.GetProductReviewRequest,
      Google.Shopping.Merchant.Reviews.V1beta.ProductReview

  rpc :ListProductReviews,
      Google.Shopping.Merchant.Reviews.V1beta.ListProductReviewsRequest,
      Google.Shopping.Merchant.Reviews.V1beta.ListProductReviewsResponse

  rpc :InsertProductReview,
      Google.Shopping.Merchant.Reviews.V1beta.InsertProductReviewRequest,
      Google.Shopping.Merchant.Reviews.V1beta.ProductReview

  rpc :DeleteProductReview,
      Google.Shopping.Merchant.Reviews.V1beta.DeleteProductReviewRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewsService.Service
end
