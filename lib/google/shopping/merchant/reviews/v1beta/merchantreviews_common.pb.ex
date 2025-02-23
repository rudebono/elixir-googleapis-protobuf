defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewAttributes.CollectionMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COLLECTION_METHOD_UNSPECIFIED, 0
  field :MERCHANT_UNSOLICITED, 1
  field :POINT_OF_SALE, 2
  field :AFTER_FULFILLMENT, 3
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus.MerchantReviewItemLevelIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :NOT_IMPACTED, 1
  field :DISAPPROVED, 2
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :merchant_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "merchantId",
    deprecated: false

  field :merchant_display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "merchantDisplayName",
    deprecated: false

  field :merchant_link, 3,
    proto3_optional: true,
    type: :string,
    json_name: "merchantLink",
    deprecated: false

  field :merchant_rating_link, 4,
    proto3_optional: true,
    type: :string,
    json_name: "merchantRatingLink",
    deprecated: false

  field :min_rating, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "minRating",
    deprecated: false

  field :max_rating, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "maxRating",
    deprecated: false

  field :rating, 7, proto3_optional: true, type: :double, deprecated: false
  field :title, 8, proto3_optional: true, type: :string, deprecated: false
  field :content, 9, proto3_optional: true, type: :string, deprecated: false

  field :reviewer_id, 10,
    proto3_optional: true,
    type: :string,
    json_name: "reviewerId",
    deprecated: false

  field :reviewer_username, 11,
    proto3_optional: true,
    type: :string,
    json_name: "reviewerUsername",
    deprecated: false

  field :is_anonymous, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "isAnonymous",
    deprecated: false

  field :collection_method, 13,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewAttributes.CollectionMethod,
    json_name: "collectionMethod",
    enum: true,
    deprecated: false

  field :review_time, 14,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "reviewTime",
    deprecated: false

  field :review_language, 15,
    proto3_optional: true,
    type: :string,
    json_name: "reviewLanguage",
    deprecated: false

  field :review_country, 16,
    proto3_optional: true,
    type: :string,
    json_name: "reviewCountry",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus.MerchantReviewDestinationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reporting_context, 1,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus.MerchantReviewItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string, deprecated: false

  field :severity, 2,
    type:
      Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus.MerchantReviewItemLevelIssue.Severity,
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

defmodule Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destination_statuses, 3,
    repeated: true,
    type:
      Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus.MerchantReviewDestinationStatus,
    json_name: "destinationStatuses",
    deprecated: false

  field :item_level_issues, 4,
    repeated: true,
    type:
      Google.Shopping.Merchant.Reviews.V1beta.MerchantReviewStatus.MerchantReviewItemLevelIssue,
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
