defmodule Google.Shopping.Css.V1.SubscriptionPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUBSCRIPTION_PERIOD_UNSPECIFIED, 0
  field :MONTH, 1
  field :YEAR, 2
end

defmodule Google.Shopping.Css.V1.Attributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpp_link, 1, proto3_optional: true, type: :string, json_name: "cppLink"
  field :cpp_mobile_link, 2, proto3_optional: true, type: :string, json_name: "cppMobileLink"
  field :cpp_ads_redirect, 42, proto3_optional: true, type: :string, json_name: "cppAdsRedirect"
  field :low_price, 3, type: Google.Shopping.Type.Price, json_name: "lowPrice"
  field :high_price, 4, type: Google.Shopping.Type.Price, json_name: "highPrice"
  field :number_of_offers, 5, proto3_optional: true, type: :int64, json_name: "numberOfOffers"

  field :headline_offer_condition, 6,
    proto3_optional: true,
    type: :string,
    json_name: "headlineOfferCondition"

  field :headline_offer_price, 7,
    type: Google.Shopping.Type.Price,
    json_name: "headlineOfferPrice"

  field :headline_offer_link, 8,
    proto3_optional: true,
    type: :string,
    json_name: "headlineOfferLink"

  field :headline_offer_mobile_link, 9,
    proto3_optional: true,
    type: :string,
    json_name: "headlineOfferMobileLink"

  field :headline_offer_shipping_price, 41,
    type: Google.Shopping.Type.Price,
    json_name: "headlineOfferShippingPrice"

  field :title, 10, proto3_optional: true, type: :string
  field :image_link, 11, proto3_optional: true, type: :string, json_name: "imageLink"

  field :additional_image_links, 12,
    repeated: true,
    type: :string,
    json_name: "additionalImageLinks"

  field :description, 13, proto3_optional: true, type: :string
  field :brand, 14, proto3_optional: true, type: :string
  field :mpn, 15, proto3_optional: true, type: :string
  field :gtin, 16, proto3_optional: true, type: :string
  field :product_types, 36, repeated: true, type: :string, json_name: "productTypes"

  field :google_product_category, 17,
    proto3_optional: true,
    type: :string,
    json_name: "googleProductCategory"

  field :adult, 18, proto3_optional: true, type: :bool
  field :multipack, 19, proto3_optional: true, type: :int64
  field :is_bundle, 20, proto3_optional: true, type: :bool, json_name: "isBundle"
  field :age_group, 21, proto3_optional: true, type: :string, json_name: "ageGroup"
  field :color, 22, proto3_optional: true, type: :string
  field :gender, 23, proto3_optional: true, type: :string
  field :material, 24, proto3_optional: true, type: :string
  field :pattern, 25, proto3_optional: true, type: :string
  field :size, 26, proto3_optional: true, type: :string
  field :size_system, 27, proto3_optional: true, type: :string, json_name: "sizeSystem"
  field :size_types, 28, repeated: true, type: :string, json_name: "sizeTypes"
  field :item_group_id, 29, proto3_optional: true, type: :string, json_name: "itemGroupId"

  field :product_details, 30,
    repeated: true,
    type: Google.Shopping.Css.V1.ProductDetail,
    json_name: "productDetails"

  field :product_weight, 31,
    type: Google.Shopping.Css.V1.ProductWeight,
    json_name: "productWeight"

  field :product_length, 32,
    type: Google.Shopping.Css.V1.ProductDimension,
    json_name: "productLength"

  field :product_width, 33,
    type: Google.Shopping.Css.V1.ProductDimension,
    json_name: "productWidth"

  field :product_height, 34,
    type: Google.Shopping.Css.V1.ProductDimension,
    json_name: "productHeight"

  field :product_highlights, 35, repeated: true, type: :string, json_name: "productHighlights"
  field :certifications, 39, repeated: true, type: Google.Shopping.Css.V1.Certification
  field :expiration_date, 40, type: Google.Protobuf.Timestamp, json_name: "expirationDate"

  field :included_destinations, 43,
    repeated: true,
    type: :string,
    json_name: "includedDestinations"

  field :excluded_destinations, 44,
    repeated: true,
    type: :string,
    json_name: "excludedDestinations"

  field :pause, 45, proto3_optional: true, type: :string
  field :custom_label_0, 46, proto3_optional: true, type: :string, json_name: "customLabel0"
  field :custom_label_1, 47, proto3_optional: true, type: :string, json_name: "customLabel1"
  field :custom_label_2, 48, proto3_optional: true, type: :string, json_name: "customLabel2"
  field :custom_label_3, 49, proto3_optional: true, type: :string, json_name: "customLabel3"
  field :custom_label_4, 50, proto3_optional: true, type: :string, json_name: "customLabel4"

  field :headline_offer_installment, 51,
    type: Google.Shopping.Css.V1.HeadlineOfferInstallment,
    json_name: "headlineOfferInstallment"

  field :headline_offer_subscription_cost, 52,
    type: Google.Shopping.Css.V1.HeadlineOfferSubscriptionCost,
    json_name: "headlineOfferSubscriptionCost"
end

defmodule Google.Shopping.Css.V1.Certification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :authority, 2, type: :string
  field :code, 3, type: :string
end

defmodule Google.Shopping.Css.V1.ProductDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :section_name, 1, type: :string, json_name: "sectionName"
  field :attribute_name, 2, type: :string, json_name: "attributeName"
  field :attribute_value, 3, type: :string, json_name: "attributeValue"
end

defmodule Google.Shopping.Css.V1.ProductDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.ProductWeight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.CssProductStatus.DestinationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination, 1, type: :string
  field :approved_countries, 2, repeated: true, type: :string, json_name: "approvedCountries"
  field :pending_countries, 3, repeated: true, type: :string, json_name: "pendingCountries"

  field :disapproved_countries, 4,
    repeated: true,
    type: :string,
    json_name: "disapprovedCountries"
end

defmodule Google.Shopping.Css.V1.CssProductStatus.ItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string
  field :servability, 2, type: :string
  field :resolution, 3, type: :string
  field :attribute, 4, type: :string
  field :destination, 5, type: :string
  field :description, 6, type: :string
  field :detail, 7, type: :string
  field :documentation, 8, type: :string
  field :applicable_countries, 9, repeated: true, type: :string, json_name: "applicableCountries"
end

defmodule Google.Shopping.Css.V1.CssProductStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_statuses, 3,
    repeated: true,
    type: Google.Shopping.Css.V1.CssProductStatus.DestinationStatus,
    json_name: "destinationStatuses"

  field :item_level_issues, 4,
    repeated: true,
    type: Google.Shopping.Css.V1.CssProductStatus.ItemLevelIssue,
    json_name: "itemLevelIssues"

  field :creation_date, 5, type: Google.Protobuf.Timestamp, json_name: "creationDate"
  field :last_update_date, 6, type: Google.Protobuf.Timestamp, json_name: "lastUpdateDate"

  field :google_expiration_date, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "googleExpirationDate"
end

defmodule Google.Shopping.Css.V1.HeadlineOfferSubscriptionCost do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :period, 1, type: Google.Shopping.Css.V1.SubscriptionPeriod, enum: true
  field :period_length, 2, type: :int64, json_name: "periodLength"
  field :amount, 3, type: Google.Shopping.Type.Price
end

defmodule Google.Shopping.Css.V1.HeadlineOfferInstallment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :months, 1, type: :int64
  field :amount, 2, type: Google.Shopping.Type.Price
  field :downpayment, 3, type: Google.Shopping.Type.Price
end
