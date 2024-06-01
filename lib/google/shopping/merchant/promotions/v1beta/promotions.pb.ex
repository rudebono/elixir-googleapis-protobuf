defmodule Google.Shopping.Merchant.Promotions.V1beta.Promotion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :promotion_id, 2, type: :string, json_name: "promotionId", deprecated: false
  field :content_language, 3, type: :string, json_name: "contentLanguage", deprecated: false
  field :target_country, 4, type: :string, json_name: "targetCountry", deprecated: false

  field :redemption_channel, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Promotions.V1beta.RedemptionChannel,
    json_name: "redemptionChannel",
    enum: true,
    deprecated: false

  field :data_source, 6, type: :string, json_name: "dataSource", deprecated: false

  field :attributes, 7,
    type: Google.Shopping.Merchant.Promotions.V1beta.Attributes,
    deprecated: false

  field :custom_attributes, 8,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes",
    deprecated: false

  field :promotion_status, 9,
    type: Google.Shopping.Merchant.Promotions.V1beta.PromotionStatus,
    json_name: "promotionStatus",
    deprecated: false

  field :version_number, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "versionNumber",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1beta.InsertPromotionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :promotion, 2,
    type: Google.Shopping.Merchant.Promotions.V1beta.Promotion,
    deprecated: false

  field :data_source, 3, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1beta.GetPromotionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1beta.ListPromotionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1beta.ListPromotionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :promotions, 1, repeated: true, type: Google.Shopping.Merchant.Promotions.V1beta.Promotion
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Promotions.V1beta.PromotionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.promotions.v1beta.PromotionsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :InsertPromotion,
      Google.Shopping.Merchant.Promotions.V1beta.InsertPromotionRequest,
      Google.Shopping.Merchant.Promotions.V1beta.Promotion

  rpc :GetPromotion,
      Google.Shopping.Merchant.Promotions.V1beta.GetPromotionRequest,
      Google.Shopping.Merchant.Promotions.V1beta.Promotion

  rpc :ListPromotions,
      Google.Shopping.Merchant.Promotions.V1beta.ListPromotionsRequest,
      Google.Shopping.Merchant.Promotions.V1beta.ListPromotionsResponse
end

defmodule Google.Shopping.Merchant.Promotions.V1beta.PromotionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Promotions.V1beta.PromotionsService.Service
end