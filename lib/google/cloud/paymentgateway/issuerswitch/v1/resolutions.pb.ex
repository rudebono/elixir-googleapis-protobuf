defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionSubType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSACTION_SUB_TYPE_UNSPECIFIED, 0
  field :TRANSACTION_SUB_TYPE_BENEFICIARY, 1
  field :TRANSACTION_SUB_TYPE_REMITTER, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseResponse.Result do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESULT_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :FAILURE, 2
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseComplaintAdjustment.AdjustmentFlag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ADJUSTMENT_FLAG_UNSPECIFIED, 0
  field :RAISE, 1
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseComplaintAdjustment.ReasonCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REASON_CODE_UNSPECIFIED, 0
  field :CUSTOMER_ACCOUNT_NOT_REVERSED, 1
  field :GOODS_SERVICES_NOT_PROVIDED, 2
  field :CUSTOMER_ACCOUNT_NOT_CREDITED_BACK, 3
  field :BENEFICIARY_ACCOUNT_NOT_CREDITED, 4
  field :GOODS_SERVICES_CREDIT_NOT_PROCESSED, 5
  field :MERCHANT_NOT_RECEIVED_CONFIRMATION, 6
  field :PAID_BY_ALTERNATE_MEANS, 7
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintAdjustment.AdjustmentFlag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ADJUSTMENT_FLAG_UNSPECIFIED, 0
  field :DEBIT_REVERSAL_CONFIRMATION, 1
  field :RETURN, 2
  field :REFUND_REVERSAL_CONFIRMATION, 3
  field :TRANSACTION_CREDIT_CONFIRMATION, 4
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintAdjustment.ReasonCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REASON_CODE_UNSPECIFIED, 0
  field :COMPLAINT_RESOLVED_ONLINE, 1
  field :COMPLAINT_RESOLVED_NOW_OR_MANUALLY, 2
  field :ORIGINAL_TRANSACTION_NOT_DONE, 3
  field :RET_ACCOUNT_CLOSED, 4
  field :RET_ACCOUNT_DOES_NOT_EXIST, 5
  field :RET_PARTY_INSTRUCTIONS, 6
  field :RET_NRI_ACCOUNT, 7
  field :RET_CREDIT_FREEZED, 8
  field :RET_INVALID_BENEFICIARY_DETAILS, 9
  field :RET_ANY_OTHER_REASON, 10
  field :RET_BENEFICIARY_CANNOT_CREDIT, 11
  field :RET_MERCHANT_NOT_RECEIVED_CONFIRMATION, 12
  field :RRC_CUSTOMER_ACCOUNT_CREDITED, 13
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseDisputeAdjustment.AdjustmentFlag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ADJUSTMENT_FLAG_UNSPECIFIED, 0
  field :CHARGEBACK_RAISE, 1
  field :FRAUD_CHARGEBACK_RAISE, 2
  field :WRONG_CREDIT_CHARGEBACK_RAISE, 3
  field :DEFERRED_CHARGEBACK_RAISE, 4
  field :PRE_ARBITRATION_RAISE, 5
  field :DEFERRED_PRE_ARBITRATION_RAISE, 6
  field :ARBITRATION_RAISE, 7
  field :DEFERRED_ARBITRATION_RAISE, 8
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseDisputeAdjustment.ReasonCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REASON_CODE_UNSPECIFIED, 0
  field :CHARGEBACK_RAISE_REMITTER_DEBITED_BENEFICIARY_NOT_CREDITED, 1
  field :PRE_ARBITRATION_RAISE_BENEFICIARY_NOT_CREDITED, 2
  field :DEFERRED_CHARGEBACK_RAISE_BENEFICIARY_NOT_CREDITED, 3
  field :DEFERRED_PRE_ARBITRATION_RAISE_BENEFICIARY_NOT_CREDITED, 4
  field :DEFERRED_ARBITRATION_RAISE_DEFERRED_CHARGEBACK_PRE_ARBITRATION_REJECTED, 5
  field :CHARGEBACK_ON_FRAUD, 6
  field :GOODS_SERVICES_CREDIT_NOT_PROCESSED, 7
  field :GOODS_SERVICES_DEFECTIVE, 8
  field :PAID_BY_ALTERNATE_MEANS, 9
  field :GOODS_SERVICES_NOT_RECEIVED, 10
  field :MERCHANT_NOT_RECEIVED_CONFIRMATION, 11
  field :TRANSACTION_NOT_STEELED, 12
  field :DUPLICATE_TRANSACTION, 13
  field :CHARGEBACK_CARD_HOLDER_CHARGED_MORE, 14
  field :CUSTOMER_CLAIMING_GOODS_SERVICES_NOT_DELIVERED, 15
  field :PARTIES_DENIED, 16
  field :FUNDS_TRANSFERRED_TO_UNINTENDED_BENEFICIARY, 17
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeAdjustment.AdjustmentFlag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ADJUSTMENT_FLAG_UNSPECIFIED, 0
  field :RE_PRESENTMENT_RAISE, 1
  field :DEFERRED_RE_PRESENTMENT_RAISE, 2
  field :CHARGEBACK_ACCEPTANCE, 3
  field :DEFERRED_CHARGEBACK_ACCEPTANCE, 4
  field :PRE_ARBITRATION_ACCEPTANCE, 5
  field :DEFERRED_PRE_ARBITRATION_ACCEPTANCE, 6
  field :PRE_ARBITRATION_DECLINED, 7
  field :DEFERRED_PRE_ARBITRATION_DECLINED, 8
  field :ARBITRATION_ACCEPTANCE, 9
  field :ARBITRATION_CONTINUATION, 10
  field :ARBITRATION_WITHDRAWN, 11
  field :ARBITRATION_VERDICT, 12
  field :CREDIT_ADJUSTMENT, 13
  field :FRAUD_CHARGEBACK_REPRESENTMENT, 14
  field :FRAUD_CHARGEBACK_ACCEPT, 15
  field :WRONG_CREDIT_REPRESENTMENT, 16
  field :WRONG_CREDIT_CHARGEBACK_ACCEPTANCE, 17
  field :MANUAL_ADJUSTMENT, 18
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeAdjustment.ReasonCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REASON_CODE_UNSPECIFIED, 0
  field :CHARGEBACK_BENEFICIARY_CANNOT_CREDIT_OR_PRE_ARBITRATION_DUPLICATE_PROCESS, 1
  field :PRE_ARBITRATION_DECLINED_BENEFICIARY_CREDITED_ONLINE, 3
  field :PRE_ARBITRATION_DECLINED_BENEFICIARY_CREDITED_MANUALLY, 4
  field :DEFERRED_CHARGEBACK_ACCEPTANCE_ACCOUNT_NOT_CREDITED_TCC_RAISED, 5
  field :DEFERRED_RE_PRESENTMENT_RAISE_ACCOUNT_CREDITED_TCC_RAISED, 6
  field :DEFERRED_PRE_ARBITRATION_ACCEPTANCE_ACCOUNT_NOT_CREDITED, 7
  field :DEFERRED_PRE_ARBITRATION_DECLINED_ACCOUNT_CREDITED, 8
  field :FRAUD_CHARGEBACK_ACCEPT_AMOUNT_RECOVERED_FROM_FRAUDULENT_ACCOUNT, 9
  field :FRAUD_CHARGEBACK_REPRESENTMENT_LIEN_MARKED_INSUFFICIENT_BALANCE, 10
  field :FRAUD_CHARGEBACK_REPRESENTMENT_FIR_NOT_PROVIDED, 11
  field :FRAUD_CHARGEBACK_REPRESENTMENT_REASON_OTHERS, 12
  field :RE_PRESENTMENT_RAISE_BENEFICIARY_CREDITED_ONLINE, 13
  field :RE_PRESENTMENT_RAISE_BENEFICIARY_CREDITED_MANUALLY, 14
  field :CREDIT_ADJUSTMENT_GOODS_SERVICES_CREDIT_NOT_PROCESSED, 15
  field :CREDIT_ADJUSTMENT_GOODS_SERVICES_DEFECTIVE, 16
  field :CREDIT_ADJUSTMENT_PAID_BY_ALTERNATE_MEANS, 17
  field :CREDIT_ADJUSTMENT_GOODS_SERVICES_NOT_RECEIVED, 18
  field :CREDIT_ADJUSTMENT_MERCHANT_NOT_RECEIVED_CONFIRMATION, 19
  field :CREDIT_ADJUSTMENT_DUPLICATE_TRANSACTION, 20
  field :CREDIT_ADJUSTMENT_REASON_OTHERS, 21
  field :CREDIT_ADJUSTMENT_NON_MATCHING_ACCOUNT_NUMBER, 22
  field :CREDIT_ADJUSTMENT_CARD_HOLDER_CHARGED_MORE, 23
  field :CREDIT_ADJUSTMENT_CREDIT_NOT_PROCESSED, 24
  field :CREDIT_ADJUSTMENT_BENEFICIARY_CANNOT_CREDIT, 25
  field :CHARGEBACK_ACCEPTANCE_MERCHANT_CANNOT_PROVIDE_SERVICE, 26
  field :RE_PRESENTMENT_RAISE_GOODS_SERVICES_PROVIDED, 27
  field :PRE_ARBITRATION_DECLINED_SERVICES_PROVIDED_LATER, 28
  field :PRE_ARBITRATION_ACCEPTANCE_SERVICES_NOT_PROVIDED_BY_MERCHANT, 29
  field :ARBITRATION_ACCEPTANCE_ILLEGIBLE_FULFILMENT, 30
  field :ARBITRATION_CONTINUATION_CUSTOMER_STILL_NOT_RECEIVED_SERVICE, 31
  field :ARBITRATION_WITHDRAWN_CUSTOMER_RECEIVED_SERVICE_LATER, 32
  field :ARBITRATION_VERDICT_PANEL_VERDICT, 33
  field :MANUAL_ADJUSTMENT_REASON, 34
  field :ATTRIBUTING_CUSTOMER, 35
  field :ATTRIBUTING_TECHNICAL_ISSUE, 36
  field :WRONG_CREDIT_CHARGEBACK_ACCEPTANCE_AMOUNT_RECOVERED, 37
  field :WRONG_CREDIT_REPRESENTMENT_LIEN_MARKED_INSUFFICIENT_BALANCE, 38
  field :WRONG_CREDIT_REPRESENTMENT_CUSTOMER_INACCESSIBLE, 39
  field :WRONG_CREDIT_REPRESENTMENT_REASON_OTHERS, 40
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Complaint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :raise_complaint_adjustment, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseComplaintAdjustment,
    json_name: "raiseComplaintAdjustment"

  field :details, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseDetails,
    deprecated: false

  field :response, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseResponse,
    deprecated: false

  field :resolve_complaint_adjustment, 6,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintAdjustment,
    json_name: "resolveComplaintAdjustment"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateComplaintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :complaint, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Complaint,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :complaint, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Complaint,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Dispute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :raise_dispute_adjustment, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseDisputeAdjustment,
    json_name: "raiseDisputeAdjustment"

  field :details, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseDetails,
    deprecated: false

  field :response, 5,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseResponse,
    deprecated: false

  field :resolve_dispute_adjustment, 6,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeAdjustment,
    json_name: "resolveDisputeAdjustment"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateDisputeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dispute, 2, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Dispute, deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dispute, 1, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Dispute, deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.OriginalTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId", deprecated: false

  field :retrieval_reference_number, 2,
    type: :string,
    json_name: "retrievalReferenceNumber",
    deprecated: false

  field :request_time, 3, type: Google.Protobuf.Timestamp, json_name: "requestTime"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_transaction, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.OriginalTransaction,
    json_name: "originalTransaction",
    deprecated: false

  field :transaction_sub_type, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionSubType,
    json_name: "transactionSubType",
    enum: true,
    deprecated: false

  field :amount, 3, type: Google.Type.Money, deprecated: false

  field :original_settlement_response_code, 4,
    type: :string,
    json_name: "originalSettlementResponseCode"

  field :current_cycle, 5, type: :bool, json_name: "currentCycle", deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :participant, 0

  field :complaint_reference_number, 1, type: :string, json_name: "complaintReferenceNumber"
  field :amount, 2, type: Google.Type.Money
  field :adjustment_flag, 3, type: :string, json_name: "adjustmentFlag"
  field :adjustment_code, 4, type: :string, json_name: "adjustmentCode"
  field :adjustment_reference_id, 5, type: :string, json_name: "adjustmentReferenceId"
  field :adjustment_remarks, 6, type: :string, json_name: "adjustmentRemarks"
  field :approval_number, 7, type: :string, json_name: "approvalNumber"
  field :process_status, 8, type: :string, json_name: "processStatus"
  field :adjustment_time, 9, type: Google.Protobuf.Timestamp, json_name: "adjustmentTime"
  field :payer, 10, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant, oneof: 0
  field :payee, 11, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Participant, oneof: 0

  field :result, 12,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.CaseResponse.Result,
    enum: true
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseComplaintAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :adjustment_flag, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseComplaintAdjustment.AdjustmentFlag,
    json_name: "adjustmentFlag",
    enum: true,
    deprecated: false

  field :adjustment_code, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseComplaintAdjustment.ReasonCode,
    json_name: "adjustmentCode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :adjustment_flag, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintAdjustment.AdjustmentFlag,
    json_name: "adjustmentFlag",
    enum: true,
    deprecated: false

  field :adjustment_code, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintAdjustment.ReasonCode,
    json_name: "adjustmentCode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseDisputeAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :adjustment_flag, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseDisputeAdjustment.AdjustmentFlag,
    json_name: "adjustmentFlag",
    enum: true,
    deprecated: false

  field :adjustment_code, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RaiseDisputeAdjustment.ReasonCode,
    json_name: "adjustmentCode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :adjustment_flag, 1,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeAdjustment.AdjustmentFlag,
    json_name: "adjustmentFlag",
    enum: true,
    deprecated: false

  field :adjustment_code, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeAdjustment.ReasonCode,
    json_name: "adjustmentCode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateComplaintMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateDisputeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchResolutions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.paymentgateway.issuerswitch.v1.IssuerSwitchResolutions",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateComplaint,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateComplaintRequest,
      Google.Longrunning.Operation

  rpc :ResolveComplaint,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveComplaintRequest,
      Google.Longrunning.Operation

  rpc :CreateDispute,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateDisputeRequest,
      Google.Longrunning.Operation

  rpc :ResolveDispute,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ResolveDisputeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchResolutions.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchResolutions.Service
end
