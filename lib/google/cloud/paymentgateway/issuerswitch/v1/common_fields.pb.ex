defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ApiType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :API_TYPE_UNSPECIFIED, 0
  field :BALANCE, 1
  field :CHECK_STATUS, 2
  field :COMPLAINT, 3
  field :HEART_BEAT, 4
  field :INITIATE_REGISTRATION, 5
  field :LIST_ACCOUNTS, 6
  field :MANDATE, 7
  field :SETTLE_PAYMENT, 8
  field :UPDATE_CREDENTIALS, 9
  field :VALIDATE_REGISTRATION, 10
  field :VOUCHER_CONFIRMATION, 11
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TRANSACTION_TYPE_UNSPECIFIED, 0
  field :TRANSACTION_TYPE_AUTOUPDATE, 1
  field :TRANSACTION_TYPE_BALANCE_CHECK, 3
  field :TRANSACTION_TYPE_BALANCE_ENQUIRY, 4
  field :TRANSACTION_TYPE_CHECK_STATUS, 5
  field :TRANSACTION_TYPE_CHECK_TRANSACTION, 6
  field :TRANSACTION_TYPE_COMPLAINT, 7
  field :TRANSACTION_TYPE_CREATE, 8
  field :TRANSACTION_TYPE_CREDIT, 9
  field :TRANSACTION_TYPE_DEBIT, 10
  field :TRANSACTION_TYPE_DISPUTE, 11
  field :TRANSACTION_TYPE_HEART_BEAT, 12
  field :TRANSACTION_TYPE_LIST_ACCOUNTS, 13
  field :TRANSACTION_TYPE_OTP, 14
  field :TRANSACTION_TYPE_REGISTER_MOBILE, 15
  field :TRANSACTION_TYPE_REFUND, 16
  field :TRANSACTION_TYPE_REVERSAL, 17
  field :TRANSACTION_TYPE_REVOKE, 18
  field :TRANSACTION_TYPE_STATUS_UPDATE, 19
  field :TRANSACTION_TYPE_UPDATE, 20
  field :TRANSACTION_TYPE_UPDATE_CREDENTIALS, 21
  field :TRANSACTION_TYPE_REDEEM, 22
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant.Persona do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PERSONA_UNSPECIFIED, 0
  field :ENTITY, 1
  field :PERSON, 2
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :LARGE, 1
  field :SMALL, 2
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.Genre do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :GENRE_UNSPECIFIED, 0
  field :OFFLINE, 1
  field :ONLINE, 2
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.OnboardingType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ONBOARDING_TYPE_UNSPECIFIED, 0
  field :AGGREGATOR, 1
  field :BANK, 2
  field :NETWORK, 3
  field :TPAP, 4
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.OwnershipType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OWNERSHIP_TYPE_UNSPECIFIED, 0
  field :PROPRIETARY, 1
  field :PARTNERSHIP, 2
  field :PUBLIC, 3
  field :PRIVATE, 4
  field :OTHERS, 5
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ifsc_code, 1, type: :string, json_name: "ifscCode"
  field :account_type, 2, type: :string, json_name: "accountType"
  field :account_number, 3, type: :string, json_name: "accountNumber"
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :participant, 1, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant
  field :account, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference

  field :merchant_info, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantInfo,
    json_name: "merchantInfo"

  field :mobile, 4, type: :string, deprecated: false
  field :device_id, 5, type: :string, json_name: "deviceId", deprecated: false
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :virtual_payment_address, 1, type: :string, json_name: "virtualPaymentAddress"

  field :persona, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant.Persona,
    enum: true

  field :user, 3, type: :string
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string
  field :merchant, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantName

  field :additional_info, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo,
    json_name: "additionalInfo"
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :brand, 1, type: :string
  field :legal, 2, type: :string
  field :franchise, 3, type: :string
end
defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :category_code, 1, type: :string, json_name: "categoryCode"
  field :store_id, 2, type: :string, json_name: "storeId"
  field :terminal_id, 3, type: :string, json_name: "terminalId"

  field :type, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.Type,
    enum: true

  field :genre, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.Genre,
    enum: true

  field :onboarding_type, 6,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.OnboardingType,
    json_name: "onboardingType",
    enum: true

  field :ownership_type, 7,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.OwnershipType,
    json_name: "ownershipType",
    enum: true
end
