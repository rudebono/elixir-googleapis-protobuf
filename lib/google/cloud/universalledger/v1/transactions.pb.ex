defmodule Google.Cloud.Universalledger.V1.FeePayer do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FEE_PAYER_UNSPECIFIED, 0
  field :FEE_PAYER_SENDER, 1
  field :FEE_PAYER_RECEIVER, 2
  field :FEE_PAYER_OTHER, 3
end

defmodule Google.Cloud.Universalledger.V1.SettlementMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SETTLEMENT_MODE_UNSPECIFIED, 0
  field :SETTLEMENT_MODE_DEFERRED, 1
  field :SETTLEMENT_MODE_INSTANT, 2
end

defmodule Google.Cloud.Universalledger.V1.FractionalFee do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :amount, 1, type: :int64, deprecated: false

  field :fee_payer, 2,
    type: Google.Cloud.Universalledger.V1.FeePayer,
    json_name: "feePayer",
    enum: true,
    deprecated: false

  field :fee_account, 3,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "feeAccount",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.SettlementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :payer, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
  field :beneficiary, 2, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
  field :balance, 3, type: Google.Cloud.Universalledger.V1.CurrencyValue, deprecated: false
  field :round_id, 5, type: :int64, json_name: "roundId", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CreateAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false

  field :roles, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.Role,
    enum: true,
    deprecated: false

  field :account_status, 3,
    type: Google.Cloud.Universalledger.V1.AccountStatus,
    json_name: "accountStatus",
    enum: true,
    deprecated: false

  field :account_comment, 4, type: :string, json_name: "accountComment", deprecated: false

  field :token_manager, 5,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "tokenManager",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.DeactivateAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ActivateAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.AddRoles do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false

  field :roles, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.Role,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.RemoveRoles do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false

  field :roles, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.Role,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ChangeAccountManager do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false

  field :next_manager, 2,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "nextManager",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.IncreaseTokenIssuanceLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token_manager, 1,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "tokenManager",
    deprecated: false

  field :amount, 2, type: Google.Cloud.Universalledger.V1.CurrencyValue, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.DecreaseTokenIssuanceLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token_manager, 1,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "tokenManager",
    deprecated: false

  field :amount, 2, type: Google.Cloud.Universalledger.V1.CurrencyValue, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.Mint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mint_amount, 1,
    type: Google.Cloud.Universalledger.V1.CurrencyValue,
    json_name: "mintAmount",
    deprecated: false

  field :beneficiary, 2, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.Burn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :burn_amount, 1,
    type: Google.Cloud.Universalledger.V1.CurrencyValue,
    json_name: "burnAmount",
    deprecated: false

  field :payer, 2, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.Transfer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :beneficiary, 1, type: Google.Cloud.Universalledger.V1.Entity, deprecated: false
  field :amount, 2, type: Google.Cloud.Universalledger.V1.CurrencyValue, deprecated: false

  field :fractional_fee, 3,
    type: Google.Cloud.Universalledger.V1.FractionalFee,
    json_name: "fractionalFee",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CreateTokenManager do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :account_comment, 4, type: :string, json_name: "accountComment", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CreateAccountManager do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey"

  field :default_token_manager, 2,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "defaultTokenManager"

  field :account_comment, 4, type: :string, json_name: "accountComment", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CreateClearinghouse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :account_comment, 4, type: :string, json_name: "accountComment", deprecated: false

  field :settlement_mode, 5,
    type: Google.Cloud.Universalledger.V1.SettlementMode,
    json_name: "settlementMode",
    enum: true
end

defmodule Google.Cloud.Universalledger.V1.TransferPlatformOperator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :account_comment, 2, type: :string, json_name: "accountComment", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CreateCurrencyOperator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :account_comment, 2, type: :string, json_name: "accountComment", deprecated: false
  field :currency, 3, type: :string
end

defmodule Google.Cloud.Universalledger.V1.TransferCurrencyOperator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :account_comment, 2, type: :string, json_name: "accountComment", deprecated: false

  field :currency_operator, 4,
    type: Google.Cloud.Universalledger.V1.Entity,
    json_name: "currencyOperator"
end

defmodule Google.Cloud.Universalledger.V1.CreateSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Universalledger.V1.CreateContract.ArgumentsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Universalledger.V1.Value
end

defmodule Google.Cloud.Universalledger.V1.CreateContract do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contract_bytes, 1, type: :bytes, json_name: "contractBytes"

  field :arguments, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.CreateContract.ArgumentsEntry,
    map: true

  field :contract_comment, 3, type: :string, json_name: "contractComment"
end

defmodule Google.Cloud.Universalledger.V1.GrantContractPermissions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contract, 1, type: Google.Cloud.Universalledger.V1.Entity

  field :permissions, 2,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.ContractPermission,
    enum: true
end

defmodule Google.Cloud.Universalledger.V1.InvokeContractMethod.ArgumentsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Universalledger.V1.Value
end

defmodule Google.Cloud.Universalledger.V1.InvokeContractMethod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contract, 1, type: Google.Cloud.Universalledger.V1.Entity
  field :method_name, 2, type: :string, json_name: "methodName"

  field :arguments, 3,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.InvokeContractMethod.ArgumentsEntry,
    map: true

  field :payment, 4, type: Google.Cloud.Universalledger.V1.CurrencyValue
end
