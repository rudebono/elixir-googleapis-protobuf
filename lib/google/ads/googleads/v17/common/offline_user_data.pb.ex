defmodule Google.Ads.Googleads.V17.Common.OfflineUserAddressInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hashed_first_name, 7, proto3_optional: true, type: :string, json_name: "hashedFirstName"
  field :hashed_last_name, 8, proto3_optional: true, type: :string, json_name: "hashedLastName"
  field :city, 9, proto3_optional: true, type: :string
  field :state, 10, proto3_optional: true, type: :string
  field :country_code, 11, proto3_optional: true, type: :string, json_name: "countryCode"
  field :postal_code, 12, proto3_optional: true, type: :string, json_name: "postalCode"

  field :hashed_street_address, 13,
    proto3_optional: true,
    type: :string,
    json_name: "hashedStreetAddress"
end

defmodule Google.Ads.Googleads.V17.Common.UserIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V17.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    json_name: "userIdentifierSource",
    enum: true

  field :hashed_email, 7, type: :string, json_name: "hashedEmail", oneof: 0
  field :hashed_phone_number, 8, type: :string, json_name: "hashedPhoneNumber", oneof: 0
  field :mobile_id, 9, type: :string, json_name: "mobileId", oneof: 0
  field :third_party_user_id, 10, type: :string, json_name: "thirdPartyUserId", oneof: 0

  field :address_info, 5,
    type: Google.Ads.Googleads.V17.Common.OfflineUserAddressInfo,
    json_name: "addressInfo",
    oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.TransactionAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :transaction_date_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "transactionDateTime"

  field :transaction_amount_micros, 9,
    proto3_optional: true,
    type: :double,
    json_name: "transactionAmountMicros"

  field :currency_code, 10, proto3_optional: true, type: :string, json_name: "currencyCode"

  field :conversion_action, 11,
    proto3_optional: true,
    type: :string,
    json_name: "conversionAction"

  field :order_id, 12, proto3_optional: true, type: :string, json_name: "orderId"

  field :store_attribute, 6,
    type: Google.Ads.Googleads.V17.Common.StoreAttribute,
    json_name: "storeAttribute"

  field :custom_value, 13, proto3_optional: true, type: :string, json_name: "customValue"

  field :item_attribute, 14,
    type: Google.Ads.Googleads.V17.Common.ItemAttribute,
    json_name: "itemAttribute"
end

defmodule Google.Ads.Googleads.V17.Common.StoreAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :store_code, 2, proto3_optional: true, type: :string, json_name: "storeCode"
end

defmodule Google.Ads.Googleads.V17.Common.ItemAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :item_id, 1, type: :string, json_name: "itemId"
  field :merchant_id, 2, proto3_optional: true, type: :int64, json_name: "merchantId"
  field :country_code, 3, type: :string, json_name: "countryCode"
  field :language_code, 4, type: :string, json_name: "languageCode"
  field :quantity, 5, type: :int64
end

defmodule Google.Ads.Googleads.V17.Common.UserData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :user_identifiers, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.UserIdentifier,
    json_name: "userIdentifiers"

  field :transaction_attribute, 2,
    type: Google.Ads.Googleads.V17.Common.TransactionAttribute,
    json_name: "transactionAttribute"

  field :user_attribute, 3,
    type: Google.Ads.Googleads.V17.Common.UserAttribute,
    json_name: "userAttribute"

  field :consent, 4, proto3_optional: true, type: Google.Ads.Googleads.V17.Common.Consent
end

defmodule Google.Ads.Googleads.V17.Common.UserAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :lifetime_value_micros, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "lifetimeValueMicros"

  field :lifetime_value_bucket, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "lifetimeValueBucket"

  field :last_purchase_date_time, 3, type: :string, json_name: "lastPurchaseDateTime"
  field :average_purchase_count, 4, type: :int32, json_name: "averagePurchaseCount"
  field :average_purchase_value_micros, 5, type: :int64, json_name: "averagePurchaseValueMicros"
  field :acquisition_date_time, 6, type: :string, json_name: "acquisitionDateTime"

  field :shopping_loyalty, 7,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.ShoppingLoyalty,
    json_name: "shoppingLoyalty"

  field :lifecycle_stage, 8, type: :string, json_name: "lifecycleStage", deprecated: false

  field :first_purchase_date_time, 9,
    type: :string,
    json_name: "firstPurchaseDateTime",
    deprecated: false

  field :event_attribute, 10,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.EventAttribute,
    json_name: "eventAttribute",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.EventAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :event, 1, type: :string, deprecated: false
  field :event_date_time, 2, type: :string, json_name: "eventDateTime", deprecated: false

  field :item_attribute, 3,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.EventItemAttribute,
    json_name: "itemAttribute",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.EventItemAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :item_id, 1, type: :string, json_name: "itemId", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.ShoppingLoyalty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :loyalty_tier, 1, proto3_optional: true, type: :string, json_name: "loyaltyTier"
end

defmodule Google.Ads.Googleads.V17.Common.CustomerMatchUserListMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :user_list, 2, proto3_optional: true, type: :string, json_name: "userList"
  field :consent, 3, proto3_optional: true, type: Google.Ads.Googleads.V17.Common.Consent
end

defmodule Google.Ads.Googleads.V17.Common.StoreSalesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :loyalty_fraction, 5, proto3_optional: true, type: :double, json_name: "loyaltyFraction"

  field :transaction_upload_fraction, 6,
    proto3_optional: true,
    type: :double,
    json_name: "transactionUploadFraction"

  field :custom_key, 7, proto3_optional: true, type: :string, json_name: "customKey"

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V17.Common.StoreSalesThirdPartyMetadata,
    json_name: "thirdPartyMetadata"
end

defmodule Google.Ads.Googleads.V17.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :advertiser_upload_date_time, 7,
    proto3_optional: true,
    type: :string,
    json_name: "advertiserUploadDateTime"

  field :valid_transaction_fraction, 8,
    proto3_optional: true,
    type: :double,
    json_name: "validTransactionFraction"

  field :partner_match_fraction, 9,
    proto3_optional: true,
    type: :double,
    json_name: "partnerMatchFraction"

  field :partner_upload_fraction, 10,
    proto3_optional: true,
    type: :double,
    json_name: "partnerUploadFraction"

  field :bridge_map_version_id, 11,
    proto3_optional: true,
    type: :string,
    json_name: "bridgeMapVersionId"

  field :partner_id, 12, proto3_optional: true, type: :int64, json_name: "partnerId"
end
