defmodule Google.Shopping.Merchant.Products.V1beta.SubscriptionPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SUBSCRIPTION_PERIOD_UNSPECIFIED, 0
  field :MONTH, 1
  field :YEAR, 2
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductStatus.ItemLevelIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :NOT_IMPACTED, 1
  field :DEMOTED, 2
  field :DISAPPROVED, 3
end

defmodule Google.Shopping.Merchant.Products.V1beta.Attributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :identifier_exists, 4, proto3_optional: true, type: :bool, json_name: "identifierExists"
  field :is_bundle, 5, proto3_optional: true, type: :bool, json_name: "isBundle"
  field :title, 6, proto3_optional: true, type: :string
  field :description, 7, proto3_optional: true, type: :string
  field :link, 8, proto3_optional: true, type: :string
  field :mobile_link, 9, proto3_optional: true, type: :string, json_name: "mobileLink"
  field :canonical_link, 10, proto3_optional: true, type: :string, json_name: "canonicalLink"
  field :image_link, 11, proto3_optional: true, type: :string, json_name: "imageLink"

  field :additional_image_links, 12,
    repeated: true,
    type: :string,
    json_name: "additionalImageLinks"

  field :expiration_date, 16, type: Google.Protobuf.Timestamp, json_name: "expirationDate"
  field :disclosure_date, 79, type: Google.Protobuf.Timestamp, json_name: "disclosureDate"
  field :adult, 17, proto3_optional: true, type: :bool
  field :age_group, 18, proto3_optional: true, type: :string, json_name: "ageGroup"
  field :availability, 19, proto3_optional: true, type: :string
  field :availability_date, 20, type: Google.Protobuf.Timestamp, json_name: "availabilityDate"
  field :brand, 21, proto3_optional: true, type: :string
  field :color, 22, proto3_optional: true, type: :string
  field :condition, 23, proto3_optional: true, type: :string
  field :gender, 24, proto3_optional: true, type: :string

  field :google_product_category, 25,
    proto3_optional: true,
    type: :string,
    json_name: "googleProductCategory"

  field :gtin, 26, repeated: true, type: :string
  field :item_group_id, 27, proto3_optional: true, type: :string, json_name: "itemGroupId"
  field :material, 28, proto3_optional: true, type: :string
  field :mpn, 29, proto3_optional: true, type: :string
  field :pattern, 30, proto3_optional: true, type: :string
  field :price, 31, type: Google.Shopping.Type.Price
  field :installment, 32, type: Google.Shopping.Merchant.Products.V1beta.Installment

  field :subscription_cost, 33,
    type: Google.Shopping.Merchant.Products.V1beta.SubscriptionCost,
    json_name: "subscriptionCost"

  field :loyalty_points, 34,
    type: Google.Shopping.Merchant.Products.V1beta.LoyaltyPoints,
    json_name: "loyaltyPoints"

  field :loyalty_programs, 136,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.LoyaltyProgram,
    json_name: "loyaltyPrograms"

  field :product_types, 35, repeated: true, type: :string, json_name: "productTypes"
  field :sale_price, 36, type: Google.Shopping.Type.Price, json_name: "salePrice"

  field :sale_price_effective_date, 37,
    type: Google.Type.Interval,
    json_name: "salePriceEffectiveDate"

  field :sell_on_google_quantity, 38,
    proto3_optional: true,
    type: :int64,
    json_name: "sellOnGoogleQuantity"

  field :product_height, 119,
    type: Google.Shopping.Merchant.Products.V1beta.ProductDimension,
    json_name: "productHeight"

  field :product_length, 120,
    type: Google.Shopping.Merchant.Products.V1beta.ProductDimension,
    json_name: "productLength"

  field :product_width, 121,
    type: Google.Shopping.Merchant.Products.V1beta.ProductDimension,
    json_name: "productWidth"

  field :product_weight, 122,
    type: Google.Shopping.Merchant.Products.V1beta.ProductWeight,
    json_name: "productWeight"

  field :shipping, 39, repeated: true, type: Google.Shopping.Merchant.Products.V1beta.Shipping

  field :free_shipping_threshold, 135,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.FreeShippingThreshold,
    json_name: "freeShippingThreshold"

  field :shipping_weight, 40,
    type: Google.Shopping.Merchant.Products.V1beta.ShippingWeight,
    json_name: "shippingWeight"

  field :shipping_length, 41,
    type: Google.Shopping.Merchant.Products.V1beta.ShippingDimension,
    json_name: "shippingLength"

  field :shipping_width, 42,
    type: Google.Shopping.Merchant.Products.V1beta.ShippingDimension,
    json_name: "shippingWidth"

  field :shipping_height, 43,
    type: Google.Shopping.Merchant.Products.V1beta.ShippingDimension,
    json_name: "shippingHeight"

  field :max_handling_time, 44, proto3_optional: true, type: :int64, json_name: "maxHandlingTime"
  field :min_handling_time, 45, proto3_optional: true, type: :int64, json_name: "minHandlingTime"
  field :shipping_label, 46, proto3_optional: true, type: :string, json_name: "shippingLabel"

  field :transit_time_label, 47,
    proto3_optional: true,
    type: :string,
    json_name: "transitTimeLabel"

  field :size, 48, proto3_optional: true, type: :string
  field :size_system, 49, proto3_optional: true, type: :string, json_name: "sizeSystem"
  field :size_types, 50, repeated: true, type: :string, json_name: "sizeTypes"
  field :taxes, 51, repeated: true, type: Google.Shopping.Merchant.Products.V1beta.Tax
  field :tax_category, 52, proto3_optional: true, type: :string, json_name: "taxCategory"

  field :energy_efficiency_class, 53,
    proto3_optional: true,
    type: :string,
    json_name: "energyEfficiencyClass"

  field :min_energy_efficiency_class, 54,
    proto3_optional: true,
    type: :string,
    json_name: "minEnergyEfficiencyClass"

  field :max_energy_efficiency_class, 55,
    proto3_optional: true,
    type: :string,
    json_name: "maxEnergyEfficiencyClass"

  field :unit_pricing_measure, 56,
    type: Google.Shopping.Merchant.Products.V1beta.UnitPricingMeasure,
    json_name: "unitPricingMeasure"

  field :unit_pricing_base_measure, 57,
    type: Google.Shopping.Merchant.Products.V1beta.UnitPricingBaseMeasure,
    json_name: "unitPricingBaseMeasure"

  field :multipack, 58, proto3_optional: true, type: :int64
  field :ads_grouping, 59, proto3_optional: true, type: :string, json_name: "adsGrouping"
  field :ads_labels, 60, repeated: true, type: :string, json_name: "adsLabels"
  field :ads_redirect, 61, proto3_optional: true, type: :string, json_name: "adsRedirect"
  field :cost_of_goods_sold, 62, type: Google.Shopping.Type.Price, json_name: "costOfGoodsSold"

  field :product_details, 63,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.ProductDetail,
    json_name: "productDetails"

  field :product_highlights, 64, repeated: true, type: :string, json_name: "productHighlights"
  field :display_ads_id, 65, proto3_optional: true, type: :string, json_name: "displayAdsId"

  field :display_ads_similar_ids, 66,
    repeated: true,
    type: :string,
    json_name: "displayAdsSimilarIds"

  field :display_ads_title, 67, proto3_optional: true, type: :string, json_name: "displayAdsTitle"
  field :display_ads_link, 68, proto3_optional: true, type: :string, json_name: "displayAdsLink"
  field :display_ads_value, 69, proto3_optional: true, type: :double, json_name: "displayAdsValue"
  field :promotion_ids, 70, repeated: true, type: :string, json_name: "promotionIds"
  field :pickup_method, 80, proto3_optional: true, type: :string, json_name: "pickupMethod"
  field :pickup_sla, 81, proto3_optional: true, type: :string, json_name: "pickupSla"
  field :link_template, 82, proto3_optional: true, type: :string, json_name: "linkTemplate"

  field :mobile_link_template, 83,
    proto3_optional: true,
    type: :string,
    json_name: "mobileLinkTemplate"

  field :custom_label_0, 71, proto3_optional: true, type: :string, json_name: "customLabel0"
  field :custom_label_1, 72, proto3_optional: true, type: :string, json_name: "customLabel1"
  field :custom_label_2, 73, proto3_optional: true, type: :string, json_name: "customLabel2"
  field :custom_label_3, 74, proto3_optional: true, type: :string, json_name: "customLabel3"
  field :custom_label_4, 75, proto3_optional: true, type: :string, json_name: "customLabel4"

  field :included_destinations, 76,
    repeated: true,
    type: :string,
    json_name: "includedDestinations"

  field :excluded_destinations, 77,
    repeated: true,
    type: :string,
    json_name: "excludedDestinations"

  field :shopping_ads_excluded_countries, 78,
    repeated: true,
    type: :string,
    json_name: "shoppingAdsExcludedCountries"

  field :external_seller_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "externalSellerId"

  field :pause, 13, proto3_optional: true, type: :string

  field :lifestyle_image_links, 14,
    repeated: true,
    type: :string,
    json_name: "lifestyleImageLinks"

  field :cloud_export_additional_properties, 84,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.CloudExportAdditionalProperties,
    json_name: "cloudExportAdditionalProperties"

  field :virtual_model_link, 130,
    proto3_optional: true,
    type: :string,
    json_name: "virtualModelLink"

  field :certifications, 123,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.Certification

  field :structured_title, 132,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1beta.ProductStructuredTitle,
    json_name: "structuredTitle"

  field :structured_description, 133,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1beta.ProductStructuredDescription,
    json_name: "structuredDescription"

  field :auto_pricing_min_price, 124,
    type: Google.Shopping.Type.Price,
    json_name: "autoPricingMinPrice"
end

defmodule Google.Shopping.Merchant.Products.V1beta.Tax do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rate, 1, type: :double
  field :country, 2, type: :string
  field :region, 3, type: :string
  field :tax_ship, 4, type: :bool, json_name: "taxShip"
  field :location_id, 5, type: :int64, json_name: "locationId"
  field :postal_code, 6, type: :string, json_name: "postalCode"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ShippingWeight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1beta.ShippingDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1beta.UnitPricingBaseMeasure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :int64
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1beta.UnitPricingMeasure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1beta.SubscriptionCost do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :period, 1, type: Google.Shopping.Merchant.Products.V1beta.SubscriptionPeriod, enum: true
  field :period_length, 2, type: :int64, json_name: "periodLength"
  field :amount, 3, type: Google.Shopping.Type.Price
end

defmodule Google.Shopping.Merchant.Products.V1beta.Installment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :months, 1, type: :int64
  field :amount, 2, type: Google.Shopping.Type.Price
  field :downpayment, 3, proto3_optional: true, type: Google.Shopping.Type.Price
  field :credit_type, 4, proto3_optional: true, type: :string, json_name: "creditType"
end

defmodule Google.Shopping.Merchant.Products.V1beta.LoyaltyPoints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :points_value, 2, type: :int64, json_name: "pointsValue"
  field :ratio, 3, type: :double
end

defmodule Google.Shopping.Merchant.Products.V1beta.LoyaltyProgram do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :program_label, 1, proto3_optional: true, type: :string, json_name: "programLabel"
  field :tier_label, 2, proto3_optional: true, type: :string, json_name: "tierLabel"
  field :price, 3, proto3_optional: true, type: Google.Shopping.Type.Price

  field :cashback_for_future_use, 4,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "cashbackForFutureUse"

  field :loyalty_points, 5, proto3_optional: true, type: :int64, json_name: "loyaltyPoints"

  field :member_price_effective_date, 6,
    proto3_optional: true,
    type: Google.Type.Interval,
    json_name: "memberPriceEffectiveDate"

  field :shipping_label, 7, proto3_optional: true, type: :string, json_name: "shippingLabel"
end

defmodule Google.Shopping.Merchant.Products.V1beta.Shipping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :price, 1, type: Google.Shopping.Type.Price
  field :country, 2, type: :string
  field :region, 3, type: :string
  field :service, 4, type: :string
  field :location_id, 5, type: :int64, json_name: "locationId"
  field :location_group_name, 6, type: :string, json_name: "locationGroupName"
  field :postal_code, 7, type: :string, json_name: "postalCode"
  field :min_handling_time, 8, proto3_optional: true, type: :int64, json_name: "minHandlingTime"
  field :max_handling_time, 9, proto3_optional: true, type: :int64, json_name: "maxHandlingTime"
  field :min_transit_time, 10, proto3_optional: true, type: :int64, json_name: "minTransitTime"
  field :max_transit_time, 11, proto3_optional: true, type: :int64, json_name: "maxTransitTime"
end

defmodule Google.Shopping.Merchant.Products.V1beta.FreeShippingThreshold do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :country, 1, proto3_optional: true, type: :string

  field :price_threshold, 2,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "priceThreshold"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :section_name, 1, type: :string, json_name: "sectionName"
  field :attribute_name, 2, type: :string, json_name: "attributeName"
  field :attribute_value, 3, type: :string, json_name: "attributeValue"
end

defmodule Google.Shopping.Merchant.Products.V1beta.Certification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certification_authority, 1,
    proto3_optional: true,
    type: :string,
    json_name: "certificationAuthority"

  field :certification_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "certificationName"

  field :certification_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "certificationCode"

  field :certification_value, 4,
    proto3_optional: true,
    type: :string,
    json_name: "certificationValue"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductStructuredTitle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :digital_source_type, 1,
    proto3_optional: true,
    type: :string,
    json_name: "digitalSourceType"

  field :content, 2, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductStructuredDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :digital_source_type, 1,
    proto3_optional: true,
    type: :string,
    json_name: "digitalSourceType"

  field :content, 2, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductWeight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductStatus.DestinationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reporting_context, 1,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true

  field :approved_countries, 2, repeated: true, type: :string, json_name: "approvedCountries"
  field :pending_countries, 3, repeated: true, type: :string, json_name: "pendingCountries"

  field :disapproved_countries, 4,
    repeated: true,
    type: :string,
    json_name: "disapprovedCountries"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductStatus.ItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string

  field :severity, 2,
    type: Google.Shopping.Merchant.Products.V1beta.ProductStatus.ItemLevelIssue.Severity,
    enum: true

  field :resolution, 3, type: :string
  field :attribute, 4, type: :string

  field :reporting_context, 5,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true

  field :description, 6, type: :string
  field :detail, 7, type: :string
  field :documentation, 8, type: :string
  field :applicable_countries, 9, repeated: true, type: :string, json_name: "applicableCountries"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destination_statuses, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.ProductStatus.DestinationStatus,
    json_name: "destinationStatuses"

  field :item_level_issues, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1beta.ProductStatus.ItemLevelIssue,
    json_name: "itemLevelIssues"

  field :creation_date, 5, type: Google.Protobuf.Timestamp, json_name: "creationDate"
  field :last_update_date, 6, type: Google.Protobuf.Timestamp, json_name: "lastUpdateDate"

  field :google_expiration_date, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "googleExpirationDate"
end

defmodule Google.Shopping.Merchant.Products.V1beta.CloudExportAdditionalProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :property_name, 1, proto3_optional: true, type: :string, json_name: "propertyName"
  field :text_value, 2, repeated: true, type: :string, json_name: "textValue"
  field :bool_value, 3, proto3_optional: true, type: :bool, json_name: "boolValue"
  field :int_value, 4, repeated: true, type: :int64, json_name: "intValue"
  field :float_value, 5, repeated: true, type: :float, json_name: "floatValue"
  field :min_value, 6, proto3_optional: true, type: :float, json_name: "minValue"
  field :max_value, 7, proto3_optional: true, type: :float, json_name: "maxValue"
  field :unit_code, 8, proto3_optional: true, type: :string, json_name: "unitCode"
end
