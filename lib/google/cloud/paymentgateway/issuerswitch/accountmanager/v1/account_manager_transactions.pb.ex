defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACCOUNT_MANAGER_TRANSACTION_TYPE_UNSPECIFIED, 0
  field :CREDIT, 1
  field :CREDIT_REVERSAL, 2
  field :DEBIT, 3
  field :DEBIT_REVERSAL, 4
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerParticipant.Persona do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERSONA_UNSPECIFIED, 0
  field :ENTITY, 1
  field :PERSON, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionReconciliationInfo.ReconciliationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RECONCILIATION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :account_id, 2, type: :string, json_name: "accountId"

  field :info, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo

  field :payer, 4,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerSettlementParticipant

  field :payee, 5,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerSettlementParticipant

  field :reconciliation_info, 6,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionReconciliationInfo,
    json_name: "reconciliationInfo"

  field :amount, 7, type: Google.Type.Money
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo.AccountManagerTransactionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transaction_time, 1, type: Google.Protobuf.Timestamp, json_name: "transactionTime"

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :retrieval_reference_number, 4, type: :string, json_name: "retrievalReferenceNumber"
  field :initiation_mode, 5, type: :string, json_name: "initiationMode"
  field :purpose_code, 6, type: :string, json_name: "purposeCode"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo.AccountManagerTransactionErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_code, 1, type: :string, json_name: "errorCode", deprecated: false
  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string

  field :transaction_type, 3,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionType,
    json_name: "transactionType",
    enum: true

  field :state, 5,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo.State,
    enum: true,
    deprecated: false

  field :metadata, 6,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo.AccountManagerTransactionMetadata

  field :error_details, 7,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionInfo.AccountManagerTransactionErrorDetails,
    json_name: "errorDetails",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerSettlementParticipant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :participant, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerParticipant

  field :merchant_info, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerMerchantInfo,
    json_name: "merchantInfo"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerParticipant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :payment_address, 1, type: :string, json_name: "paymentAddress"

  field :persona, 2,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerParticipant.Persona,
    enum: true

  field :account, 3, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerMerchantInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :category_code, 1, type: :string, json_name: "categoryCode"
  field :id, 2, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionReconciliationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionReconciliationInfo.ReconciliationState,
    enum: true,
    deprecated: false

  field :reconciliation_time, 2, type: Google.Protobuf.Timestamp, json_name: "reconciliationTime"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ExportAccountManagerTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :transaction_type, 3,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactionType,
    json_name: "transactionType",
    enum: true,
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ListAccountManagerTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ListAccountManagerTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_manager_transactions, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransaction,
    json_name: "accountManagerTransactions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ReconcileAccountManagerTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transaction, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransaction,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileAccountManagerTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ReconcileAccountManagerTransactionsRequest,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileAccountManagerTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_manager_transactions, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransaction,
    json_name: "accountManagerTransactions"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.paymentgateway.issuerswitch.accountmanager.v1.AccountManagerTransactions",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ExportAccountManagerTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ExportAccountManagerTransactionsRequest,
      Google.Longrunning.Operation

  rpc :ListAccountManagerTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ListAccountManagerTransactionsRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.ListAccountManagerTransactionsResponse

  rpc :BatchReconcileAccountManagerTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileAccountManagerTransactionsRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.BatchReconcileAccountManagerTransactionsResponse
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactions.Stub do
  @moduledoc false

  use GRPC.Stub,
    service:
      Google.Cloud.Paymentgateway.Issuerswitch.Accountmanager.V1.AccountManagerTransactions.Service
end
