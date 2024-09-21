defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ApiType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :API_TYPE_UNSPECIFIED, 0
  field :BALANCE, 1
  field :CHECK_STATUS, 2
  field :COMPLAINT, 3
  field :HEART_BEAT, 4
  field :INITIATE_REGISTRATION, 5
  field :LIST_ACCOUNTS, 6
  field :MANDATE, 7
  field :MANDATE_CONFIRMATION, 8
  field :SETTLE_PAYMENT, 9
  field :UPDATE_CREDENTIALS, 10
  field :VALIDATE_REGISTRATION, 11
  field :VALIDATE_CUSTOMER, 12
  field :VOUCHER, 13
  field :VOUCHER_CONFIRMATION, 14
  field :ACTIVATION, 15
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRANSACTION_TYPE_UNSPECIFIED, 0
  field :TRANSACTION_TYPE_AUTOUPDATE, 1
  field :TRANSACTION_TYPE_BALANCE_CHECK, 2
  field :TRANSACTION_TYPE_BALANCE_ENQUIRY, 3
  field :TRANSACTION_TYPE_CHECK_STATUS, 4
  field :TRANSACTION_TYPE_CHECK_TRANSACTION, 5
  field :TRANSACTION_TYPE_COMPLAINT, 6
  field :TRANSACTION_TYPE_CREATE, 7
  field :TRANSACTION_TYPE_CREDIT, 8
  field :TRANSACTION_TYPE_DEBIT, 9
  field :TRANSACTION_TYPE_DISPUTE, 10
  field :TRANSACTION_TYPE_HEART_BEAT, 11
  field :TRANSACTION_TYPE_LIST_ACCOUNTS, 12
  field :TRANSACTION_TYPE_MANDATE_NOTIFICATION, 13
  field :TRANSACTION_TYPE_OTP, 14
  field :TRANSACTION_TYPE_PAUSE, 15
  field :TRANSACTION_TYPE_REDEEM, 16
  field :TRANSACTION_TYPE_REFUND, 17
  field :TRANSACTION_TYPE_REGISTER_MOBILE, 18
  field :TRANSACTION_TYPE_REVERSAL, 19
  field :TRANSACTION_TYPE_REVOKE, 20
  field :TRANSACTION_TYPE_STATUS_UPDATE, 21
  field :TRANSACTION_TYPE_UNPAUSE, 22
  field :TRANSACTION_TYPE_UPDATE, 23
  field :TRANSACTION_TYPE_UPDATE_CREDENTIALS, 24
  field :TRANSACTION_TYPE_VALIDATE_CUSTOMER, 25
  field :TRANSACTION_TYPE_ACTIVATION_INTERNATIONAL, 26
  field :TRANSACTION_TYPE_ACTIVATION_UPI_SERVICES, 27
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.XmlApiType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :XML_API_TYPE_UNSPECIFIED, 0
  field :REQ_BAL_ENQ, 1
  field :REQ_CHK_TXN, 2
  field :REQ_COMPLAINT, 3
  field :REQ_HBT, 4
  field :REQ_LIST_ACCOUNT, 5
  field :REQ_MANDATE, 6
  field :REQ_MANDATE_CONFIRMATION, 7
  field :REQ_OTP, 8
  field :REQ_PAY, 9
  field :REQ_REG_MOB, 10
  field :REQ_SET_CRE, 11
  field :REQ_VAL_CUST, 12
  field :REQ_VOUCHER, 13
  field :REQ_VOUCHER_CONFIRMATION, 14
  field :REQ_TXN_CONFIRMATION, 15
  field :RESP_BAL_ENQ, 16
  field :RESP_CHK_TXN, 17
  field :RESP_COMPLAINT, 18
  field :RESP_HBT, 19
  field :RESP_LIST_ACCOUNT, 20
  field :RESP_MANDATE, 21
  field :RESP_MANDATE_CONFIRMATION, 22
  field :RESP_OTP, 23
  field :RESP_PAY, 24
  field :RESP_REG_MOB, 25
  field :RESP_SET_CRE, 26
  field :RESP_VAL_CUST, 27
  field :RESP_VOUCHER, 28
  field :RESP_VOUCHER_CONFIRMATION, 29
  field :RESP_TXN_CONFIRMATION, 30
  field :REQ_ACTIVATION, 31
  field :RESP_ACTIVATION, 32
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant.Persona do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PERSONA_UNSPECIFIED, 0
  field :ENTITY, 1
  field :PERSON, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :LARGE, 1
  field :SMALL, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.Genre do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :GENRE_UNSPECIFIED, 0
  field :OFFLINE, 1
  field :ONLINE, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.OnboardingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ONBOARDING_TYPE_UNSPECIFIED, 0
  field :AGGREGATOR, 1
  field :BANK, 2
  field :NETWORK, 3
  field :TPAP, 4
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo.OwnershipType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OWNERSHIP_TYPE_UNSPECIFIED, 0
  field :PROPRIETARY, 1
  field :PARTNERSHIP, 2
  field :PUBLIC, 3
  field :PRIVATE, 4
  field :OTHERS, 5
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ifsc, 1, type: :string
  field :account_type, 2, type: :string, json_name: "accountType", deprecated: false
  field :account_number, 3, type: :string, json_name: "accountNumber"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant.SettlementDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backend_settlement_id, 1,
    type: :string,
    json_name: "backendSettlementId",
    deprecated: false

  field :code, 2, type: :string, deprecated: false
  field :reversal_code, 3, type: :string, json_name: "reversalCode", deprecated: false
  field :settled_amount, 4, type: Google.Type.Money, json_name: "settledAmount", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :participant, 1, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant

  field :merchant_info, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantInfo,
    json_name: "merchantInfo"

  field :mobile, 3, type: :string, deprecated: true

  field :details, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant.SettlementDetails,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.DeviceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :payment_app, 1, type: :string, json_name: "paymentApp"
  field :capability, 2, type: :string
  field :geo_code, 3, type: Google.Type.LatLng, json_name: "geoCode"
  field :id, 4, type: :string
  field :ip_address, 5, type: :string, json_name: "ipAddress"
  field :location, 6, type: :string
  field :operating_system, 7, type: :string, json_name: "operatingSystem"
  field :telecom_provider, 8, type: :string, json_name: "telecomProvider"
  field :type, 9, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :payment_address, 1, type: :string, json_name: "paymentAddress"

  field :persona, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant.Persona,
    enum: true

  field :user, 3, type: :string

  field :account, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference,
    deprecated: false

  field :device_details, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.DeviceDetails,
    json_name: "deviceDetails",
    deprecated: false

  field :mobile_number, 6, type: :string, json_name: "mobileNumber", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :merchant, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantName

  field :additional_info, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo,
    json_name: "additionalInfo"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantName do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :brand, 1, type: :string
  field :legal, 2, type: :string
  field :franchise, 3, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MerchantAdditionalInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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