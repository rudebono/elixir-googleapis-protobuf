defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :TIMED_OUT, 3
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionSubType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSACTION_SUB_TYPE_UNSPECIFIED, 0
  field :COLLECT, 1
  field :DEBIT, 2
  field :PAY, 3
  field :BENEFICIARY, 4
  field :REMITTER, 5
  field :REFUND, 6
  field :CREDIT, 7
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.FinancialTransaction.PaymentRule.PaymentRuleName do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PAYMENT_RULE_NAME_UNSPECIFIED, 0
  field :EXPIRE_AFTER, 1
  field :MIN_AMOUNT, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction.RecurrencePatternType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RECURRENCE_PATTERN_TYPE_UNSPECIFIED, 0
  field :AS_PRESENTED, 1
  field :BIMONTHLY, 2
  field :DAILY, 3
  field :FORTNIGHTLY, 4
  field :HALF_YEARLY, 5
  field :MONTHLY, 6
  field :ONE_TIME, 7
  field :QUARTERLY, 8
  field :WEEKLY, 9
  field :YEARLY, 10
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction.RecurrenceRuleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RECURRENCE_RULE_TYPE_UNSPECIFIED, 0
  field :AFTER, 1
  field :BEFORE, 2
  field :ON, 3
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction.AmountRuleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AMOUNT_RULE_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :MAX, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :reference_id, 3, type: :string, json_name: "referenceId", deprecated: false
  field :reference_uri, 4, type: :string, json_name: "referenceUri", deprecated: false
  field :description, 5, type: :string, deprecated: false
  field :initiation_mode, 6, type: :string, json_name: "initiationMode", deprecated: false
  field :purpose_code, 7, type: :string, json_name: "purposeCode", deprecated: false
  field :reference_category, 8, type: :string, json_name: "referenceCategory", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error_code, 1, type: :string, json_name: "errorCode", deprecated: false
  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false
  field :upi_error_code, 3, type: :string, json_name: "upiErrorCode", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.AdapterInfo.ResponseMetadata.ValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.AdapterInfo.ResponseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.AdapterInfo.ResponseMetadata.ValuesEntry,
    map: true
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.AdapterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :request_ids, 1, type: :string, json_name: "requestIds", deprecated: false

  field :response_metadata, 2,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.AdapterInfo.ResponseMetadata,
    json_name: "responseMetadata",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionRiskInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provider, 1, type: :string
  field :type, 2, type: :string
  field :value, 3, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :api_type, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ApiType,
    json_name: "apiType",
    enum: true,
    deprecated: false

  field :transaction_type, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType,
    json_name: "transactionType",
    enum: true,
    deprecated: false

  field :transaction_sub_type, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionSubType,
    json_name: "transactionSubType",
    enum: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.State,
    enum: true,
    deprecated: false

  field :metadata, 6,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionMetadata

  field :error_details, 7,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionErrorDetails,
    json_name: "errorDetails",
    deprecated: false

  field :adapter_info, 8,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.AdapterInfo,
    json_name: "adapterInfo",
    deprecated: false

  field :risk_info, 9,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo.TransactionRiskInfo,
    json_name: "riskInfo"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MetadataTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :info, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo

  field :initiator, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.FinancialTransaction.PaymentRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :payment_rule, 1,
    type:
      Google.Cloud.Paymentgateway.Issuerswitch.V1.FinancialTransaction.PaymentRule.PaymentRuleName,
    json_name: "paymentRule",
    enum: true

  field :value, 2, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.FinancialTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :info, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo

  field :retrieval_reference_number, 3,
    type: :string,
    json_name: "retrievalReferenceNumber",
    deprecated: false

  field :payer, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant,
    deprecated: false

  field :payee, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant,
    deprecated: false

  field :amount, 6, type: Google.Type.Money, deprecated: false

  field :payment_rules, 7,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.FinancialTransaction.PaymentRule,
    json_name: "paymentRules"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :transaction_info, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo,
    json_name: "transactionInfo"

  field :unique_mandate_number, 3,
    type: :string,
    json_name: "uniqueMandateNumber",
    deprecated: false

  field :payer, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant,
    deprecated: false

  field :payee, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.SettlementParticipant,
    deprecated: false

  field :recurrence_pattern, 6,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction.RecurrencePatternType,
    json_name: "recurrencePattern",
    enum: true,
    deprecated: false

  field :recurrence_rule_type, 7,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction.RecurrenceRuleType,
    json_name: "recurrenceRuleType",
    enum: true,
    deprecated: false

  field :recurrence_rule_value, 8,
    type: :int32,
    json_name: "recurrenceRuleValue",
    deprecated: false

  field :start_date, 9, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 10, type: Google.Type.Date, json_name: "endDate", deprecated: false
  field :revokable, 11, type: :bool, deprecated: false
  field :amount, 12, type: :double, deprecated: false

  field :amount_rule, 13,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction.AmountRuleType,
    json_name: "amountRule",
    enum: true,
    deprecated: false

  field :approval_reference, 14, type: :string, json_name: "approvalReference", deprecated: false
  field :block_funds, 15, type: :bool, json_name: "blockFunds", deprecated: false
  field :mandate_name, 16, type: :string, json_name: "mandateName", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ComplaintTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :case, 0

  field :name, 1, type: :string
  field :info, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionInfo

  field :complaint, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Complaint,
    oneof: 0,
    deprecated: false

  field :dispute, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Dispute,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMetadataTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListFinancialTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMandateTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListComplaintTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMetadataTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metadata_transactions, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MetadataTransaction,
    json_name: "metadataTransactions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListFinancialTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :financial_transactions, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.FinancialTransaction,
    json_name: "financialTransactions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMandateTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mandate_transactions, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.MandateTransaction,
    json_name: "mandateTransactions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListComplaintTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :complaint_transactions, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ComplaintTransaction,
    json_name: "complaintTransactions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportFinancialTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :transaction_type, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType,
    json_name: "transactionType",
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMetadataTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :api_type, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ApiType,
    json_name: "apiType",
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMandateTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :transaction_type, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType,
    json_name: "transactionType",
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportComplaintTransactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :transaction_type, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType,
    json_name: "transactionType",
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportFinancialTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_uri, 1, type: :string, json_name: "targetUri"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMetadataTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_uri, 1, type: :string, json_name: "targetUri"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMandateTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_uri, 1, type: :string, json_name: "targetUri"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportComplaintTransactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_uri, 1, type: :string, json_name: "targetUri"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportFinancialTransactionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMandateTransactionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMetadataTransactionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportComplaintTransactionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchTransactions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.paymentgateway.issuerswitch.v1.IssuerSwitchTransactions",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListMetadataTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMetadataTransactionsRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMetadataTransactionsResponse

  rpc :ListFinancialTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListFinancialTransactionsRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListFinancialTransactionsResponse

  rpc :ListMandateTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMandateTransactionsRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListMandateTransactionsResponse

  rpc :ListComplaintTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListComplaintTransactionsRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListComplaintTransactionsResponse

  rpc :ExportFinancialTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportFinancialTransactionsRequest,
      Google.Longrunning.Operation

  rpc :ExportMetadataTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMetadataTransactionsRequest,
      Google.Longrunning.Operation

  rpc :ExportMandateTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportMandateTransactionsRequest,
      Google.Longrunning.Operation

  rpc :ExportComplaintTransactions,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ExportComplaintTransactionsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchTransactions.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchTransactions.Service
end