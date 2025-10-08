defmodule Google.Shopping.Merchant.Products.V1.SubscriptionPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUBSCRIPTION_PERIOD_UNSPECIFIED, 0
  field :MONTH, 1
  field :YEAR, 2
end

defmodule Google.Shopping.Merchant.Products.V1.AgeGroup do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AGE_GROUP_UNSPECIFIED, 0
  field :ADULT, 1
  field :KIDS, 2
  field :TODDLER, 3
  field :INFANT, 4
  field :NEWBORN, 5
end

defmodule Google.Shopping.Merchant.Products.V1.Availability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AVAILABILITY_UNSPECIFIED, 0
  field :IN_STOCK, 1
  field :OUT_OF_STOCK, 2
  field :PREORDER, 3
  field :LIMITED_AVAILABILITY, 4
  field :BACKORDER, 5
end

defmodule Google.Shopping.Merchant.Products.V1.Condition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONDITION_UNSPECIFIED, 0
  field :NEW, 1
  field :USED, 2
  field :REFURBISHED, 3
end

defmodule Google.Shopping.Merchant.Products.V1.Gender do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GENDER_UNSPECIFIED, 0
  field :MALE, 1
  field :FEMALE, 2
  field :UNISEX, 3
end

defmodule Google.Shopping.Merchant.Products.V1.CreditType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CREDIT_TYPE_UNSPECIFIED, 0
  field :FINANCE, 1
  field :LEASE, 2
end

defmodule Google.Shopping.Merchant.Products.V1.SizeSystem do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SIZE_SYSTEM_UNSPECIFIED, 0
  field :AU, 1
  field :BR, 2
  field :CN, 3
  field :DE, 4
  field :EU, 5
  field :FR, 6
  field :IT, 7
  field :JP, 8
  field :MEX, 9
  field :UK, 10
  field :US, 11
end

defmodule Google.Shopping.Merchant.Products.V1.SizeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SIZE_TYPE_UNSPECIFIED, 0
  field :REGULAR, 1
  field :PETITE, 2
  field :MATERNITY, 3
  field :BIG, 4
  field :TALL, 5
  field :PLUS, 6
end

defmodule Google.Shopping.Merchant.Products.V1.EnergyEfficiencyClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENERGY_EFFICIENCY_CLASS_UNSPECIFIED, 0
  field :APPP, 1
  field :APP, 2
  field :AP, 3
  field :A, 4
  field :B, 5
  field :C, 6
  field :D, 7
  field :E, 8
  field :F, 9
  field :G, 10
end

defmodule Google.Shopping.Merchant.Products.V1.PickupMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PICKUP_METHOD_UNSPECIFIED, 0
  field :NOT_SUPPORTED, 1
  field :BUY, 2
  field :RESERVE, 3
  field :SHIP_TO_STORE, 4
end

defmodule Google.Shopping.Merchant.Products.V1.PickupSla do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PICKUP_SLA_UNSPECIFIED, 0
  field :SAME_DAY, 1
  field :NEXT_DAY, 2
  field :TWO_DAY, 3
  field :THREE_DAY, 4
  field :FOUR_DAY, 5
  field :FIVE_DAY, 6
  field :SIX_DAY, 7
  field :MULTI_WEEK, 8
end

defmodule Google.Shopping.Merchant.Products.V1.Pause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PAUSE_UNSPECIFIED, 0
  field :ADS, 1
  field :ALL, 2
end

defmodule Google.Shopping.Merchant.Products.V1.CertificationAuthority do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CERTIFICATION_AUTHORITY_UNSPECIFIED, 0
  field :ADEME, 1
  field :BMWK, 2
  field :EPA, 3
  field :EC, 4
end

defmodule Google.Shopping.Merchant.Products.V1.CertificationName do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CERTIFICATION_NAME_UNSPECIFIED, 0
  field :ENERGY_STAR, 1
  field :ENERGY_STAR_MOST_EFFICIENT, 2
  field :EPREL, 3
  field :EU_ECOLABEL, 4
  field :VEHICLE_ENERGY_EFFICIENCY, 5
  field :VEHICLE_ENERGY_EFFICIENCY_DISCHARGED_BATTERY, 6
end

defmodule Google.Shopping.Merchant.Products.V1.DigitalSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DIGITAL_SOURCE_TYPE_UNSPECIFIED, 0
  field :TRAINED_ALGORITHMIC_MEDIA, 1
  field :DEFAULT, 2
end

defmodule Google.Shopping.Merchant.Products.V1.CarrierTransitTimeOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CARRIER_TRANSIT_TIME_OPTION_UNSPECIFIED, 0
  field :DHL_PAKET, 1
  field :DHL_PACKCHEN, 2
  field :DHL_EXPRESSEASY, 3
  field :DPD_EXPRESS, 4
  field :DPD_CLASSIC_PARCEL, 5
  field :HERMES_HAUSTUR, 6
  field :HERMES_PAKETSHOP, 7
  field :GLS_BUSINESS, 8
  field :GLS_EXPRESS, 9
  field :GLS_PRIVATE, 10
  field :COLISSIMO_DOMICILE, 11
  field :DHL_EXPRESS_12AM, 12
  field :DHL_EXPRESS_9AM, 13
  field :GEODIS_EXPRESS, 14
  field :GEODIS_PACK_30, 15
  field :GEODIS_SAME_DAY, 16
  field :GEODIS_TOP_24, 17
  field :TNT_ESSENTIEL_24H, 18
  field :TNT_ESSENTIEL_FLEXIBILITE, 19
  field :FEDEX_GROUND, 20
  field :FEDEX_HOME_DELIVERY, 21
  field :FEDEX_EXPRESS_SAVER, 22
  field :FEDEX_FIRST_OVERNIGHT, 23
  field :FEDEX_PRIORITY_OVERNIGHT, 24
  field :FEDEX_STANDARD_OVERNIGHT, 25
  field :FEDEX_2DAY, 26
  field :UPS_2ND_DAY_AIR, 27
  field :UPS_2ND_DAY_AM, 28
  field :UPS_3_DAY_SELECT, 29
  field :UPS_GROUND, 30
  field :UPS_NEXT_DAY_AIR, 31
  field :UPS_NEXT_DAY_AIR_EARLY_AM, 32
  field :UPS_NEXT_DAY_AIR_SAVER, 33
  field :USPS_PRIORITY_MAIL_EXPRESS, 34
  field :USPS_MEDIA_MAIL, 35
  field :USPS_GROUND_ADVANTAGE_RETAIL, 36
  field :USPS_PRIORITY_MAIL, 37
  field :USPS_GROUND_ADVANTAGE_COMMERCIAL, 38
  field :USPS_FIRST_CLASS_MAIL, 39
end

defmodule Google.Shopping.Merchant.Products.V1.ProductAttributes.CarrierPriceOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CARRIER_PRICE_OPTION_UNSPECIFIED, 0
  field :AUSTRALIA_POST_REGULAR, 1
  field :AUSTRALIA_POST_EXPRESS, 2
  field :AUSTRALIA_POST_REGULAR_S, 3
  field :AUSTRALIA_POST_REGULAR_M, 4
  field :AUSTRALIA_POST_REGULAR_L, 5
  field :AUSTRALIA_POST_REGULAR_XL, 6
  field :AUSTRALIA_POST_EXPRESS_S, 7
  field :AUSTRALIA_POST_EXPRESS_M, 8
  field :AUSTRALIA_POST_EXPRESS_L, 9
  field :AUSTRALIA_POST_EXPRESS_XL, 10
  field :TNT_ROAD_EXPRESS, 11
  field :TNT_OVERNIGHT_EXPRESS, 12
  field :TOLL_ROAD_DELIVERY, 13
  field :TOLL_OVERNIGHT_PRIORITY, 14
  field :DHL_PAKET, 15
  field :DHL_PACKCHEN, 16
  field :DPD_EXPRESS_12, 17
  field :DPD_EXPRESS, 18
  field :DPD_CLASSIC_PARCEL, 19
  field :HERMES_PACKCHEN, 20
  field :HERMES_PAKETKLASSE_S, 21
  field :HERMES_PAKETKLASSE_M, 22
  field :HERMES_PAKETKLASSE_L, 23
  field :UPS_EXPRESS, 24
  field :UPS_EXPRESS_SAVER, 25
  field :UPS_EXPRESS_STANDARD, 26
  field :DHL_EXPRESS, 27
  field :DHL_EXPRESS_12, 28
  field :DPD_NEXT_DAY, 29
  field :DPD_STANDARD_NEXT_DAY, 30
  field :DPD_STANDARD_TWO_DAY, 31
  field :RMG_1ST_CLASS_SMALL, 32
  field :RMG_1ST_CLASS_MEDIUM, 33
  field :RMG_2ND_CLASS_SMALL, 34
  field :RMG_2ND_CLASS_MEDIUM, 35
  field :TNT_EXPRESS, 36
  field :TNT_EXPRESS_10, 37
  field :TNT_EXPRESS_12, 38
  field :YODEL_B2C_48HR, 39
  field :YODEL_B2C_72HR, 40
  field :YODEL_B2C_PACKET, 41
  field :FEDEX_GROUND, 42
  field :FEDEX_HOME_DELIVERY, 43
  field :FEDEX_EXPRESS_SAVER, 44
  field :FEDEX_FIRST_OVERNIGHT, 45
  field :FEDEX_PRIORITY_OVERNIGHT, 46
  field :FEDEX_STANDARD_OVERNIGHT, 47
  field :FEDEX_2DAY, 48
  field :UPS_STANDARD, 49
  field :UPS_2ND_DAY_AIR, 50
  field :UPS_2ND_DAY_AM, 51
  field :UPS_3_DAY_SELECT, 52
  field :UPS_GROUND, 53
  field :UPS_NEXT_DAY_AIR, 54
  field :UPS_NEXT_DAY_AIR_EARLY_AM, 55
  field :UPS_NEXT_DAY_AIR_SAVER, 56
  field :USPS_PRIORITY_MAIL_EXPRESS, 57
  field :USPS_MEDIA_MAIL, 58
  field :USPS_GROUND_ADVANTAGE_RETAIL, 59
  field :USPS_PRIORITY_MAIL, 60
  field :USPS_GROUND_ADVANTAGE_COMMERCIAL, 61
end

defmodule Google.Shopping.Merchant.Products.V1.ProductStatus.ItemLevelIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :NOT_IMPACTED, 1
  field :DEMOTED, 2
  field :DISAPPROVED, 3
end

defmodule Google.Shopping.Merchant.Products.V1.ProductSustainabilityIncentive.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EV_TAX_CREDIT, 1
  field :EV_PRICE_DISCOUNT, 2
end

defmodule Google.Shopping.Merchant.Products.V1.ProductAttributes.CarrierShipping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country, 1, proto3_optional: true, type: :string
  field :region, 2, proto3_optional: true, type: :string
  field :postal_code, 3, proto3_optional: true, type: :string, json_name: "postalCode"

  field :origin_postal_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "originPostalCode"

  field :flat_price, 5,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "flatPrice"

  field :carrier_price, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.ProductAttributes.CarrierPriceOption,
    json_name: "carrierPrice",
    enum: true

  field :carrier_price_flat_adjustment, 7,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "carrierPriceFlatAdjustment"

  field :carrier_price_percentage_adjustment, 8,
    proto3_optional: true,
    type: :double,
    json_name: "carrierPricePercentageAdjustment"

  field :min_handling_time, 9, proto3_optional: true, type: :int64, json_name: "minHandlingTime"
  field :max_handling_time, 10, proto3_optional: true, type: :int64, json_name: "maxHandlingTime"

  field :fixed_min_transit_time, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "fixedMinTransitTime"

  field :fixed_max_transit_time, 12,
    proto3_optional: true,
    type: :int64,
    json_name: "fixedMaxTransitTime"

  field :carrier_transit_time, 13,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.CarrierTransitTimeOption,
    json_name: "carrierTransitTime",
    enum: true
end

defmodule Google.Shopping.Merchant.Products.V1.ProductAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :age_group, 18,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.AgeGroup,
    json_name: "ageGroup",
    enum: true

  field :availability, 19,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.Availability,
    enum: true

  field :availability_date, 20, type: Google.Protobuf.Timestamp, json_name: "availabilityDate"
  field :brand, 21, proto3_optional: true, type: :string
  field :color, 22, proto3_optional: true, type: :string

  field :condition, 23,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.Condition,
    enum: true

  field :gender, 24,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.Gender,
    enum: true

  field :google_product_category, 25,
    proto3_optional: true,
    type: :string,
    json_name: "googleProductCategory"

  field :gtins, 140, repeated: true, type: :string
  field :item_group_id, 27, proto3_optional: true, type: :string, json_name: "itemGroupId"
  field :material, 28, proto3_optional: true, type: :string
  field :mpn, 29, proto3_optional: true, type: :string
  field :pattern, 30, proto3_optional: true, type: :string
  field :price, 31, type: Google.Shopping.Type.Price

  field :maximum_retail_price, 139,
    type: Google.Shopping.Type.Price,
    json_name: "maximumRetailPrice"

  field :installment, 32, type: Google.Shopping.Merchant.Products.V1.ProductInstallment

  field :subscription_cost, 33,
    type: Google.Shopping.Merchant.Products.V1.SubscriptionCost,
    json_name: "subscriptionCost"

  field :loyalty_points, 34,
    type: Google.Shopping.Merchant.Products.V1.LoyaltyPoints,
    json_name: "loyaltyPoints"

  field :loyalty_programs, 136,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.LoyaltyProgram,
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
    type: Google.Shopping.Merchant.Products.V1.ProductDimension,
    json_name: "productHeight"

  field :product_length, 120,
    type: Google.Shopping.Merchant.Products.V1.ProductDimension,
    json_name: "productLength"

  field :product_width, 121,
    type: Google.Shopping.Merchant.Products.V1.ProductDimension,
    json_name: "productWidth"

  field :product_weight, 122,
    type: Google.Shopping.Merchant.Products.V1.ProductWeight,
    json_name: "productWeight"

  field :shipping, 39, repeated: true, type: Google.Shopping.Merchant.Products.V1.Shipping

  field :carrier_shipping, 142,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.ProductAttributes.CarrierShipping,
    json_name: "carrierShipping"

  field :free_shipping_threshold, 135,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.FreeShippingThreshold,
    json_name: "freeShippingThreshold"

  field :shipping_weight, 40,
    type: Google.Shopping.Merchant.Products.V1.ShippingWeight,
    json_name: "shippingWeight"

  field :shipping_length, 41,
    type: Google.Shopping.Merchant.Products.V1.ShippingDimension,
    json_name: "shippingLength"

  field :shipping_width, 42,
    type: Google.Shopping.Merchant.Products.V1.ShippingDimension,
    json_name: "shippingWidth"

  field :shipping_height, 43,
    type: Google.Shopping.Merchant.Products.V1.ShippingDimension,
    json_name: "shippingHeight"

  field :max_handling_time, 44, proto3_optional: true, type: :int64, json_name: "maxHandlingTime"
  field :min_handling_time, 45, proto3_optional: true, type: :int64, json_name: "minHandlingTime"
  field :shipping_label, 46, proto3_optional: true, type: :string, json_name: "shippingLabel"

  field :transit_time_label, 47,
    proto3_optional: true,
    type: :string,
    json_name: "transitTimeLabel"

  field :size, 48, proto3_optional: true, type: :string

  field :size_system, 49,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.SizeSystem,
    json_name: "sizeSystem",
    enum: true

  field :size_types, 50,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.SizeType,
    json_name: "sizeTypes",
    enum: true

  field :energy_efficiency_class, 53,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.EnergyEfficiencyClass,
    json_name: "energyEfficiencyClass",
    enum: true

  field :min_energy_efficiency_class, 54,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.EnergyEfficiencyClass,
    json_name: "minEnergyEfficiencyClass",
    enum: true

  field :max_energy_efficiency_class, 55,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.EnergyEfficiencyClass,
    json_name: "maxEnergyEfficiencyClass",
    enum: true

  field :unit_pricing_measure, 56,
    type: Google.Shopping.Merchant.Products.V1.UnitPricingMeasure,
    json_name: "unitPricingMeasure"

  field :unit_pricing_base_measure, 57,
    type: Google.Shopping.Merchant.Products.V1.UnitPricingBaseMeasure,
    json_name: "unitPricingBaseMeasure"

  field :multipack, 58, proto3_optional: true, type: :int64
  field :ads_grouping, 59, proto3_optional: true, type: :string, json_name: "adsGrouping"
  field :ads_labels, 60, repeated: true, type: :string, json_name: "adsLabels"
  field :ads_redirect, 61, proto3_optional: true, type: :string, json_name: "adsRedirect"
  field :cost_of_goods_sold, 62, type: Google.Shopping.Type.Price, json_name: "costOfGoodsSold"

  field :product_details, 63,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.ProductDetail,
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

  field :pickup_method, 80,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.PickupMethod,
    json_name: "pickupMethod",
    enum: true

  field :pickup_sla, 81,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.PickupSla,
    json_name: "pickupSla",
    enum: true

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
    type: Google.Shopping.Type.Destination.DestinationEnum,
    json_name: "includedDestinations",
    enum: true

  field :excluded_destinations, 77,
    repeated: true,
    type: Google.Shopping.Type.Destination.DestinationEnum,
    json_name: "excludedDestinations",
    enum: true

  field :shopping_ads_excluded_countries, 78,
    repeated: true,
    type: :string,
    json_name: "shoppingAdsExcludedCountries"

  field :external_seller_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "externalSellerId"

  field :pause, 13,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.Pause,
    enum: true

  field :lifestyle_image_links, 14,
    repeated: true,
    type: :string,
    json_name: "lifestyleImageLinks"

  field :cloud_export_additional_properties, 84,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.CloudExportAdditionalProperties,
    json_name: "cloudExportAdditionalProperties"

  field :virtual_model_link, 130,
    proto3_optional: true,
    type: :string,
    json_name: "virtualModelLink"

  field :certifications, 123,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.ProductCertification

  field :structured_title, 132,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.StructuredTitle,
    json_name: "structuredTitle"

  field :structured_description, 133,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.StructuredDescription,
    json_name: "structuredDescription"

  field :auto_pricing_min_price, 124,
    type: Google.Shopping.Type.Price,
    json_name: "autoPricingMinPrice"

  field :sustainability_incentives, 138,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.ProductSustainabilityIncentive,
    json_name: "sustainabilityIncentives"
end

defmodule Google.Shopping.Merchant.Products.V1.ShippingWeight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1.ShippingDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1.UnitPricingBaseMeasure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :int64
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1.UnitPricingMeasure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double
  field :unit, 2, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1.SubscriptionCost do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :period, 1, type: Google.Shopping.Merchant.Products.V1.SubscriptionPeriod, enum: true
  field :period_length, 2, type: :int64, json_name: "periodLength"
  field :amount, 3, type: Google.Shopping.Type.Price
end

defmodule Google.Shopping.Merchant.Products.V1.ProductInstallment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :months, 1, type: :int64
  field :amount, 2, type: Google.Shopping.Type.Price
  field :downpayment, 3, proto3_optional: true, type: Google.Shopping.Type.Price

  field :credit_type, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.CreditType,
    json_name: "creditType",
    enum: true
end

defmodule Google.Shopping.Merchant.Products.V1.LoyaltyPoints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :points_value, 2, type: :int64, json_name: "pointsValue"
  field :ratio, 3, type: :double
end

defmodule Google.Shopping.Merchant.Products.V1.LoyaltyProgram do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Shopping.Merchant.Products.V1.Shipping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Shopping.Merchant.Products.V1.FreeShippingThreshold do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country, 1, proto3_optional: true, type: :string

  field :price_threshold, 2,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "priceThreshold"
end

defmodule Google.Shopping.Merchant.Products.V1.ProductDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :section_name, 1, type: :string, json_name: "sectionName"
  field :attribute_name, 2, type: :string, json_name: "attributeName"
  field :attribute_value, 3, type: :string, json_name: "attributeValue"
end

defmodule Google.Shopping.Merchant.Products.V1.ProductCertification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certification_authority, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.CertificationAuthority,
    json_name: "certificationAuthority",
    enum: true

  field :certification_name, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.CertificationName,
    json_name: "certificationName",
    enum: true

  field :certification_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "certificationCode"

  field :certification_value, 4,
    proto3_optional: true,
    type: :string,
    json_name: "certificationValue"
end

defmodule Google.Shopping.Merchant.Products.V1.StructuredTitle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :digital_source_type, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.DigitalSourceType,
    json_name: "digitalSourceType",
    enum: true

  field :content, 2, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1.StructuredDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :digital_source_type, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.DigitalSourceType,
    json_name: "digitalSourceType",
    enum: true

  field :content, 2, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Products.V1.ProductDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1.ProductWeight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1.ProductStatus.DestinationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Shopping.Merchant.Products.V1.ProductStatus.ItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string

  field :severity, 2,
    type: Google.Shopping.Merchant.Products.V1.ProductStatus.ItemLevelIssue.Severity,
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

defmodule Google.Shopping.Merchant.Products.V1.ProductStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_statuses, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.ProductStatus.DestinationStatus,
    json_name: "destinationStatuses"

  field :item_level_issues, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Products.V1.ProductStatus.ItemLevelIssue,
    json_name: "itemLevelIssues"

  field :creation_date, 5, type: Google.Protobuf.Timestamp, json_name: "creationDate"
  field :last_update_date, 6, type: Google.Protobuf.Timestamp, json_name: "lastUpdateDate"

  field :google_expiration_date, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "googleExpirationDate"
end

defmodule Google.Shopping.Merchant.Products.V1.CloudExportAdditionalProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :property_name, 1, proto3_optional: true, type: :string, json_name: "propertyName"
  field :text_value, 2, repeated: true, type: :string, json_name: "textValue"
  field :bool_value, 3, proto3_optional: true, type: :bool, json_name: "boolValue"
  field :int_value, 4, repeated: true, type: :int64, json_name: "intValue"
  field :float_value, 5, repeated: true, type: :float, json_name: "floatValue"
  field :min_value, 6, proto3_optional: true, type: :float, json_name: "minValue"
  field :max_value, 7, proto3_optional: true, type: :float, json_name: "maxValue"
  field :unit_code, 8, proto3_optional: true, type: :string, json_name: "unitCode"
end

defmodule Google.Shopping.Merchant.Products.V1.ProductSustainabilityIncentive do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :amount, 2, type: Google.Shopping.Type.Price, oneof: 0
  field :percentage, 3, type: :double, oneof: 0

  field :type, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Products.V1.ProductSustainabilityIncentive.Type,
    enum: true
end

defmodule Google.Shopping.Merchant.Products.V1.AutomatedDiscounts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :prior_price, 1, type: Google.Shopping.Type.Price, json_name: "priorPrice"

  field :prior_price_progressive, 2,
    type: Google.Shopping.Type.Price,
    json_name: "priorPriceProgressive"

  field :gad_price, 3, type: Google.Shopping.Type.Price, json_name: "gadPrice"
end
