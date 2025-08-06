defmodule Google.Shopping.Merchant.Promotions.V1.ProductApplicability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRODUCT_APPLICABILITY_UNSPECIFIED, 0
  field :ALL_PRODUCTS, 1
  field :SPECIFIC_PRODUCTS, 2
end

defmodule Google.Shopping.Merchant.Promotions.V1.StoreApplicability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORE_APPLICABILITY_UNSPECIFIED, 0
  field :ALL_STORES, 1
  field :SPECIFIC_STORES, 2
end

defmodule Google.Shopping.Merchant.Promotions.V1.OfferType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OFFER_TYPE_UNSPECIFIED, 0
  field :NO_CODE, 1
  field :GENERIC_CODE, 2
end

defmodule Google.Shopping.Merchant.Promotions.V1.RedemptionChannel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REDEMPTION_CHANNEL_UNSPECIFIED, 0
  field :IN_STORE, 1
  field :ONLINE, 2
end

defmodule Google.Shopping.Merchant.Promotions.V1.CouponValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COUPON_VALUE_TYPE_UNSPECIFIED, 0
  field :MONEY_OFF, 1
  field :PERCENT_OFF, 2
  field :BUY_M_GET_N_MONEY_OFF, 3
  field :BUY_M_GET_N_PERCENT_OFF, 4
  field :BUY_M_GET_MONEY_OFF, 5
  field :BUY_M_GET_PERCENT_OFF, 6
  field :FREE_GIFT, 7
  field :FREE_GIFT_WITH_VALUE, 8
  field :FREE_GIFT_WITH_ITEM_ID, 9
  field :FREE_SHIPPING_STANDARD, 10
  field :FREE_SHIPPING_OVERNIGHT, 11
  field :FREE_SHIPPING_TWO_DAY, 12
end

defmodule Google.Shopping.Merchant.Promotions.V1.PromotionStatus.DestinationStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_REVIEW, 1
  field :REJECTED, 2
  field :LIVE, 3
  field :STOPPED, 4
  field :EXPIRED, 5
  field :PENDING, 6
end

defmodule Google.Shopping.Merchant.Promotions.V1.PromotionStatus.ItemLevelIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :NOT_IMPACTED, 1
  field :DEMOTED, 2
  field :DISAPPROVED, 3
end

defmodule Google.Shopping.Merchant.Promotions.V1.Attributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_applicability, 1,
    type: Google.Shopping.Merchant.Promotions.V1.ProductApplicability,
    json_name: "productApplicability",
    enum: true,
    deprecated: false

  field :offer_type, 2,
    type: Google.Shopping.Merchant.Promotions.V1.OfferType,
    json_name: "offerType",
    enum: true,
    deprecated: false

  field :generic_redemption_code, 3,
    type: :string,
    json_name: "genericRedemptionCode",
    deprecated: false

  field :long_title, 4, type: :string, json_name: "longTitle", deprecated: false

  field :coupon_value_type, 5,
    type: Google.Shopping.Merchant.Promotions.V1.CouponValueType,
    json_name: "couponValueType",
    enum: true,
    deprecated: false

  field :promotion_destinations, 6,
    repeated: true,
    type: Google.Shopping.Type.Destination.DestinationEnum,
    json_name: "promotionDestinations",
    enum: true,
    deprecated: false

  field :item_id_inclusion, 7,
    repeated: true,
    type: :string,
    json_name: "itemIdInclusion",
    deprecated: false

  field :brand_inclusion, 8,
    repeated: true,
    type: :string,
    json_name: "brandInclusion",
    deprecated: false

  field :item_group_id_inclusion, 9,
    repeated: true,
    type: :string,
    json_name: "itemGroupIdInclusion",
    deprecated: false

  field :product_type_inclusion, 10,
    repeated: true,
    type: :string,
    json_name: "productTypeInclusion",
    deprecated: false

  field :item_id_exclusion, 11,
    repeated: true,
    type: :string,
    json_name: "itemIdExclusion",
    deprecated: false

  field :brand_exclusion, 12,
    repeated: true,
    type: :string,
    json_name: "brandExclusion",
    deprecated: false

  field :item_group_id_exclusion, 13,
    repeated: true,
    type: :string,
    json_name: "itemGroupIdExclusion",
    deprecated: false

  field :product_type_exclusion, 14,
    repeated: true,
    type: :string,
    json_name: "productTypeExclusion",
    deprecated: false

  field :minimum_purchase_amount, 15,
    type: Google.Shopping.Type.Price,
    json_name: "minimumPurchaseAmount",
    deprecated: false

  field :minimum_purchase_quantity, 16,
    type: :int64,
    json_name: "minimumPurchaseQuantity",
    deprecated: false

  field :limit_quantity, 17, type: :int64, json_name: "limitQuantity", deprecated: false

  field :limit_value, 18,
    type: Google.Shopping.Type.Price,
    json_name: "limitValue",
    deprecated: false

  field :percent_off, 19, type: :int64, json_name: "percentOff", deprecated: false

  field :money_off_amount, 20,
    type: Google.Shopping.Type.Price,
    json_name: "moneyOffAmount",
    deprecated: false

  field :get_this_quantity_discounted, 21,
    type: :int64,
    json_name: "getThisQuantityDiscounted",
    deprecated: false

  field :free_gift_value, 22,
    type: Google.Shopping.Type.Price,
    json_name: "freeGiftValue",
    deprecated: false

  field :free_gift_description, 23,
    type: :string,
    json_name: "freeGiftDescription",
    deprecated: false

  field :free_gift_item_id, 24, type: :string, json_name: "freeGiftItemId", deprecated: false

  field :promotion_effective_time_period, 25,
    type: Google.Type.Interval,
    json_name: "promotionEffectiveTimePeriod",
    deprecated: false

  field :promotion_display_time_period, 26,
    type: Google.Type.Interval,
    json_name: "promotionDisplayTimePeriod",
    deprecated: false

  field :store_applicability, 28,
    type: Google.Shopping.Merchant.Promotions.V1.StoreApplicability,
    json_name: "storeApplicability",
    enum: true,
    deprecated: false

  field :store_codes_inclusion, 29,
    repeated: true,
    type: :string,
    json_name: "storeCodesInclusion",
    deprecated: false

  field :store_codes_exclusion, 30,
    repeated: true,
    type: :string,
    json_name: "storeCodesExclusion",
    deprecated: false

  field :promotion_url, 31, type: :string, json_name: "promotionUrl", deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1.PromotionStatus.DestinationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reporting_context, 1,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true,
    deprecated: false

  field :status, 2,
    type: Google.Shopping.Merchant.Promotions.V1.PromotionStatus.DestinationStatus.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1.PromotionStatus.ItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string, deprecated: false

  field :severity, 2,
    type: Google.Shopping.Merchant.Promotions.V1.PromotionStatus.ItemLevelIssue.Severity,
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

  field :applicable_countries, 9,
    repeated: true,
    type: :string,
    json_name: "applicableCountries",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Promotions.V1.PromotionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_statuses, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Promotions.V1.PromotionStatus.DestinationStatus,
    json_name: "destinationStatuses",
    deprecated: false

  field :item_level_issues, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Promotions.V1.PromotionStatus.ItemLevelIssue,
    json_name: "itemLevelIssues",
    deprecated: false

  field :creation_date, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "creationDate",
    deprecated: false

  field :last_update_date, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateDate",
    deprecated: false
end
