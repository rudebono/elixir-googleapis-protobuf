defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes.CollectionMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COLLECTION_METHOD_UNSPECIFIED, 0
  field :UNSOLICITED, 1
  field :POST_FULFILLMENT, 2
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes.ReviewLink.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SINGLETON, 1
  field :GROUP, 2
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus.ProductReviewItemLevelIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :NOT_IMPACTED, 1
  field :DISAPPROVED, 2
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes.ReviewLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes.ReviewLink.Type,
    enum: true,
    deprecated: false

  field :link, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aggregator_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "aggregatorName",
    deprecated: false

  field :subclient_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "subclientName",
    deprecated: false

  field :publisher_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "publisherName",
    deprecated: false

  field :publisher_favicon, 4,
    proto3_optional: true,
    type: :string,
    json_name: "publisherFavicon",
    deprecated: false

  field :reviewer_id, 5,
    proto3_optional: true,
    type: :string,
    json_name: "reviewerId",
    deprecated: false

  field :reviewer_is_anonymous, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "reviewerIsAnonymous",
    deprecated: false

  field :reviewer_username, 7,
    proto3_optional: true,
    type: :string,
    json_name: "reviewerUsername",
    deprecated: false

  field :review_language, 8,
    proto3_optional: true,
    type: :string,
    json_name: "reviewLanguage",
    deprecated: false

  field :review_country, 9,
    proto3_optional: true,
    type: :string,
    json_name: "reviewCountry",
    deprecated: false

  field :review_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "reviewTime",
    deprecated: false

  field :title, 11, proto3_optional: true, type: :string, deprecated: false
  field :content, 12, proto3_optional: true, type: :string, deprecated: false
  field :pros, 13, repeated: true, type: :string, deprecated: false
  field :cons, 14, repeated: true, type: :string, deprecated: false

  field :review_link, 15,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes.ReviewLink,
    json_name: "reviewLink",
    deprecated: false

  field :reviewer_image_links, 16,
    repeated: true,
    type: :string,
    json_name: "reviewerImageLinks",
    deprecated: false

  field :min_rating, 17,
    proto3_optional: true,
    type: :int64,
    json_name: "minRating",
    deprecated: false

  field :max_rating, 18,
    proto3_optional: true,
    type: :int64,
    json_name: "maxRating",
    deprecated: false

  field :rating, 19, proto3_optional: true, type: :double, deprecated: false

  field :product_names, 20,
    repeated: true,
    type: :string,
    json_name: "productNames",
    deprecated: false

  field :product_links, 21,
    repeated: true,
    type: :string,
    json_name: "productLinks",
    deprecated: false

  field :asins, 22, repeated: true, type: :string, deprecated: false
  field :gtins, 23, repeated: true, type: :string, deprecated: false
  field :mpns, 24, repeated: true, type: :string, deprecated: false
  field :skus, 25, repeated: true, type: :string, deprecated: false
  field :brands, 26, repeated: true, type: :string, deprecated: false
  field :is_spam, 27, proto3_optional: true, type: :bool, json_name: "isSpam", deprecated: false

  field :is_verified_purchase, 30,
    proto3_optional: true,
    type: :bool,
    json_name: "isVerifiedPurchase",
    deprecated: false

  field :is_incentivized_review, 31,
    proto3_optional: true,
    type: :bool,
    json_name: "isIncentivizedReview",
    deprecated: false

  field :collection_method, 28,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewAttributes.CollectionMethod,
    json_name: "collectionMethod",
    enum: true,
    deprecated: false

  field :transaction_id, 29, type: :string, json_name: "transactionId", deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus.ProductReviewDestinationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reporting_context, 1,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus.ProductReviewItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string, deprecated: false

  field :severity, 2,
    type:
      Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus.ProductReviewItemLevelIssue.Severity,
    enum: true,
    deprecated: false

  field :resolution, 3, type: :string, deprecated: false
  field :attribute, 4, type: :string, deprecated: false

  field :reporting_context, 5,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true,
    deprecated: false

  field :description, 6, type: :string, deprecated: false
  field :detail, 7, type: :string, deprecated: false
  field :documentation, 8, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_statuses, 3,
    repeated: true,
    type:
      Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus.ProductReviewDestinationStatus,
    json_name: "destinationStatuses",
    deprecated: false

  field :item_level_issues, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Reviews.V1beta.ProductReviewStatus.ProductReviewItemLevelIssue,
    json_name: "itemLevelIssues",
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false
end
