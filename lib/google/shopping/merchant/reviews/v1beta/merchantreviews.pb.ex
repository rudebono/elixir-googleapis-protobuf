defmodule Google.Shopping.Merchant.Reviews.V1beta.GetMerchantReviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.DeleteMerchantReviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ListMerchantReviewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.InsertMerchantReviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :merchant_review, 2,
    type: Google.Shopping.Merchant.Reviews.V1beta.MerchantReview,
    json_name: "merchantReview",
    deprecated: false

  field :data_source, 3, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ListMerchantReviewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :merchant_reviews, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Reviews.V1beta.MerchantReview,
    json_name: "merchantReviews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :merchant_review_id, 2, type: :string, json_name: "merchantReviewId", deprecated: false

  field :attributes, 3,
    type: Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewAttributes,
    deprecated: false

  field :custom_attributes, 4,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes",
    deprecated: false

  field :data_source, 5, type: :string, json_name: "dataSource", deprecated: false

  field :merchant_review_status, 6,
    type: Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus,
    json_name: "merchantReviewStatus",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.reviews.v1beta.MerchantReviewsService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetMerchantReview,
      Google.Shopping.Merchant.Reviews.V1beta.GetMerchantReviewRequest,
      Google.Shopping.Merchant.Reviews.V1beta.MerchantReview

  rpc :ListMerchantReviews,
      Google.Shopping.Merchant.Reviews.V1beta.ListMerchantReviewsRequest,
      Google.Shopping.Merchant.Reviews.V1beta.ListMerchantReviewsResponse

  rpc :InsertMerchantReview,
      Google.Shopping.Merchant.Reviews.V1beta.InsertMerchantReviewRequest,
      Google.Shopping.Merchant.Reviews.V1beta.MerchantReview

  rpc :DeleteMerchantReview,
      Google.Shopping.Merchant.Reviews.V1beta.DeleteMerchantReviewRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewsService.Service
end
