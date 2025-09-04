defmodule Google.Cloud.Universalledger.V1.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :account_details, 0

  field :user_details, 6,
    type: Google.Cloud.Universalledger.V1.UserDetails,
    json_name: "userDetails",
    oneof: 0,
    deprecated: false

  field :account_manager_details, 4,
    type: Google.Cloud.Universalledger.V1.AccountManagerDetails,
    json_name: "accountManagerDetails",
    oneof: 0,
    deprecated: false

  field :token_manager_details, 5,
    type: Google.Cloud.Universalledger.V1.TokenManagerDetails,
    json_name: "tokenManagerDetails",
    oneof: 0,
    deprecated: false

  field :contract_details, 11,
    type: Google.Cloud.Universalledger.V1.ContractDetails,
    json_name: "contractDetails",
    oneof: 0,
    deprecated: false

  field :clearinghouse_details, 10,
    type: Google.Cloud.Universalledger.V1.ClearingHouseDetails,
    json_name: "clearinghouseDetails",
    oneof: 0,
    deprecated: false

  field :currency_operator_details, 7,
    type: Google.Cloud.Universalledger.V1.CurrencyOperatorDetails,
    json_name: "currencyOperatorDetails",
    oneof: 0,
    deprecated: false

  field :platform_operator_details, 8,
    type: Google.Cloud.Universalledger.V1.PlatformOperatorDetails,
    json_name: "platformOperatorDetails",
    oneof: 0,
    deprecated: false

  field :sequence_number, 1, type: :int64, json_name: "sequenceNumber", deprecated: false
  field :public_key, 2, type: :bytes, json_name: "publicKey", deprecated: false
  field :round_id, 3, type: :int64, json_name: "roundId", deprecated: false
  field :comment, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.AccountManagerDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token_manager, 1,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "tokenManager",
    deprecated: false

  field :num_accounts, 2, type: :int32, json_name: "numAccounts", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.TokenManagerDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issuance_limit, 1,
    type: Google.Cloud.Universalledger.V1.CurrencyValue,
    json_name: "issuanceLimit",
    deprecated: false

  field :issued_tokens, 2,
    type: Google.Cloud.Universalledger.V1.CurrencyValue,
    json_name: "issuedTokens",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.UserDetails.AccountFieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Universalledger.V1.Fields
end

defmodule Google.Cloud.Universalledger.V1.UserDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_manager, 1,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "accountManager",
    deprecated: false

  field :token_manager, 2,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "tokenManager",
    deprecated: false

  field :roles, 3,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.Role,
    enum: true,
    deprecated: false

  field :account_status, 4,
    type: Google.Cloud.Universalledger.V1.AccountStatus,
    json_name: "accountStatus",
    enum: true,
    deprecated: false

  field :balance, 5, type: Google.Cloud.Universalledger.V1.CurrencyValue, deprecated: false

  field :account_fields, 6,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.UserDetails.AccountFieldsEntry,
    json_name: "accountFields",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CurrencyOperatorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :currency, 1, type: :string, deprecated: false

  field :account_status, 2,
    type: Google.Cloud.Universalledger.V1.AccountStatus,
    json_name: "accountStatus",
    enum: true,
    deprecated: false

  field :previous_entity_id, 3,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "previousEntityId",
    deprecated: false

  field :platform_operator_entity_id, 4,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "platformOperatorEntityId",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.PlatformOperatorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_status, 1,
    type: Google.Cloud.Universalledger.V1.AccountStatus,
    json_name: "accountStatus",
    enum: true,
    deprecated: false

  field :previous_entity_id, 2,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "previousEntityId",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ClearingHouseDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_status, 1,
    type: Google.Cloud.Universalledger.V1.AccountStatus,
    json_name: "accountStatus",
    enum: true,
    deprecated: false

  field :balances, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.BalanceToSettle,
    deprecated: false

  field :settlement_mode, 3,
    type: Google.Cloud.Universalledger.V1.SettlementMode,
    json_name: "settlementMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ContractDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :owner, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
  field :code, 2, type: :bytes, deprecated: false

  field :contract_fields, 3,
    type: Google.Cloud.Universalledger.V1.Fields,
    json_name: "contractFields",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.BalanceToSettle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :balance_payer, 1,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "balancePayer",
    deprecated: false

  field :balance_receiver, 2,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "balanceReceiver",
    deprecated: false

  field :balance, 3, type: Google.Cloud.Universalledger.V1.CurrencyValue, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.Fields.FieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Universalledger.V1.Value
end

defmodule Google.Cloud.Universalledger.V1.Fields do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.Fields.FieldsEntry,
    map: true,
    deprecated: false
end
