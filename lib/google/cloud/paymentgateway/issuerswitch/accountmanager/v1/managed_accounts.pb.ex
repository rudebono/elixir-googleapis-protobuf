defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DEACTIVATED, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount.AccountReconciliationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACCOUNT_RECONCILIATION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :account_reference, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference,
    json_name: "accountReference",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount.State,
    enum: true,
    deprecated: false

  field :balance, 4, type: Google.Type.Money, deprecated: false

  field :last_reconciliation_state, 5,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount.AccountReconciliationState,
    json_name: "lastReconciliationState",
    enum: true,
    deprecated: false

  field :last_reconciliation_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "lastReconciliationTime",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ReconcileManagedAccountBalanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount,
    deprecated: false

  field :expected_balance, 2,
    type: Google.Type.Money,
    json_name: "expectedBalance",
    deprecated: false

  field :reference_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "referenceTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileManagedAccountBalanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ReconcileManagedAccountBalanceRequest,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileManagedAccountBalanceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :accounts, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.GetManagedAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccounts.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.paymentgateway.issuerswitch.accountmanager.v1.ManagedAccounts",
    protoc_gen_elixir_version: "0.14.1"

  rpc :BatchReconcileManagedAccountBalance,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileManagedAccountBalanceRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileManagedAccountBalanceResponse

  rpc :GetManagedAccount,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.GetManagedAccountRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccount
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccounts.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ManagedAccounts.Service
end
