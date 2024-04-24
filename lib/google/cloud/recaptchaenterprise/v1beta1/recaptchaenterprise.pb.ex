defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionEvent.TransactionEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSACTION_EVENT_TYPE_UNSPECIFIED, 0
  field :MERCHANT_APPROVE, 1
  field :MERCHANT_DENY, 2
  field :MANUAL_REVIEW, 3
  field :AUTHORIZATION, 4
  field :AUTHORIZATION_DECLINE, 5
  field :PAYMENT_CAPTURE, 6
  field :PAYMENT_CAPTURE_DECLINE, 7
  field :CANCEL, 8
  field :CHARGEBACK_INQUIRY, 9
  field :CHARGEBACK_ALERT, 10
  field :FRAUD_NOTIFICATION, 11
  field :CHARGEBACK, 12
  field :CHARGEBACK_REPRESENTMENT, 13
  field :CHARGEBACK_REVERSE, 14
  field :REFUND_REQUEST, 15
  field :REFUND_DECLINE, 16
  field :REFUND, 17
  field :REFUND_REVERSE, 18
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANNOTATION_UNSPECIFIED, 0
  field :LEGITIMATE, 1
  field :FRAUDULENT, 2
  field :PASSWORD_CORRECT, 3
  field :PASSWORD_INCORRECT, 4
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :CHARGEBACK, 1
  field :CHARGEBACK_FRAUD, 8
  field :CHARGEBACK_DISPUTE, 9
  field :REFUND, 10
  field :REFUND_FRAUD, 11
  field :TRANSACTION_ACCEPTED, 12
  field :TRANSACTION_DECLINED, 13
  field :PAYMENT_HEURISTICS, 2
  field :INITIATED_TWO_FACTOR, 7
  field :PASSED_TWO_FACTOR, 3
  field :FAILED_TWO_FACTOR, 4
  field :CORRECT_PASSWORD, 5
  field :INCORRECT_PASSWORD, 6
  field :SOCIAL_SPAM, 14
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Assessment.ClassificationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLASSIFICATION_REASON_UNSPECIFIED, 0
  field :AUTOMATION, 1
  field :UNEXPECTED_ENVIRONMENT, 2
  field :TOO_MUCH_TRAFFIC, 3
  field :UNEXPECTED_USAGE_PATTERNS, 4
  field :LOW_CONFIDENCE_SCORE, 5
  field :SUSPECTED_CARDING, 6
  field :SUSPECTED_CHARGEBACK, 7
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Event.FraudPrevention do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FRAUD_PREVENTION_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.InvalidReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INVALID_REASON_UNSPECIFIED, 0
  field :UNKNOWN_INVALID_REASON, 1
  field :MALFORMED, 2
  field :EXPIRED, 3
  field :DUPE, 4
  field :SITE_MISMATCH, 5
  field :MISSING, 6
  field :BROWSER_ERROR, 7
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment.AccountDefenderLabel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED, 0
  field :PROFILE_MATCH, 1
  field :SUSPICIOUS_LOGIN_ACTIVITY, 2
  field :SUSPICIOUS_ACCOUNT_CREATION, 3
  field :RELATED_ACCOUNTS_NUMBER_HIGH, 4
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.CreateAssessmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :assessment, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.Assessment,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :event_type, 1,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionEvent.TransactionEventType,
    json_name: "eventType",
    enum: true,
    deprecated: false

  field :reason, 2, type: :string, deprecated: false
  field :value, 3, type: :double, deprecated: false
  field :event_time, 4, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :annotation, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation,
    enum: true,
    deprecated: false

  field :reasons, 3,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Reason,
    enum: true,
    deprecated: false

  field :hashed_account_id, 4, type: :bytes, json_name: "hashedAccountId", deprecated: false

  field :transaction_event, 5,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionEvent,
    json_name: "transactionEvent",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.PasswordLeakVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hashed_user_credentials, 1,
    type: :bytes,
    json_name: "hashedUserCredentials",
    deprecated: false

  field :credentials_leaked, 2, type: :bool, json_name: "credentialsLeaked", deprecated: false

  field :canonicalized_username, 3,
    type: :string,
    json_name: "canonicalizedUsername",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Assessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event, 2, type: Google.Cloud.Recaptchaenterprise.V1beta1.Event
  field :score, 3, type: :float, deprecated: false

  field :token_properties, 4,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties,
    json_name: "tokenProperties",
    deprecated: false

  field :reasons, 5,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.Assessment.ClassificationReason,
    enum: true,
    deprecated: false

  field :password_leak_verification, 7,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.PasswordLeakVerification,
    json_name: "passwordLeakVerification"

  field :account_defender_assessment, 8,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment,
    json_name: "accountDefenderAssessment"

  field :fraud_prevention_assessment, 11,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment,
    json_name: "fraudPreventionAssessment"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :token, 1, type: :string, deprecated: false
  field :site_key, 2, type: :string, json_name: "siteKey", deprecated: false
  field :user_agent, 3, type: :string, json_name: "userAgent", deprecated: false
  field :user_ip_address, 4, type: :string, json_name: "userIpAddress", deprecated: false
  field :expected_action, 5, type: :string, json_name: "expectedAction", deprecated: false
  field :hashed_account_id, 6, type: :bytes, json_name: "hashedAccountId", deprecated: false

  field :transaction_data, 13,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData,
    json_name: "transactionData",
    deprecated: false

  field :fraud_prevention, 17,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.Event.FraudPrevention,
    json_name: "fraudPrevention",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.Address do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recipient, 1, type: :string
  field :address, 2, repeated: true, type: :string
  field :locality, 3, type: :string
  field :administrative_area, 4, type: :string, json_name: "administrativeArea"
  field :region_code, 5, type: :string, json_name: "regionCode"
  field :postal_code, 6, type: :string, json_name: "postalCode"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :account_id, 6, type: :string, json_name: "accountId"
  field :creation_ms, 1, type: :int64, json_name: "creationMs"
  field :email, 2, type: :string
  field :email_verified, 3, type: :bool, json_name: "emailVerified"
  field :phone_number, 4, type: :string, json_name: "phoneNumber"
  field :phone_verified, 5, type: :bool, json_name: "phoneVerified"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.Item do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :double
  field :quantity, 3, type: :int64
  field :merchant_account_id, 4, type: :string, json_name: "merchantAccountId"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.GatewayInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :gateway_response_code, 2, type: :string, json_name: "gatewayResponseCode"
  field :avs_response_code, 3, type: :string, json_name: "avsResponseCode"
  field :cvv_response_code, 4, type: :string, json_name: "cvvResponseCode"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transaction_id, 11, proto3_optional: true, type: :string, json_name: "transactionId"
  field :payment_method, 1, type: :string, json_name: "paymentMethod"
  field :card_bin, 2, type: :string, json_name: "cardBin"
  field :card_last_four, 3, type: :string, json_name: "cardLastFour"
  field :currency_code, 4, type: :string, json_name: "currencyCode"
  field :value, 5, type: :double
  field :shipping_value, 12, type: :double, json_name: "shippingValue"

  field :shipping_address, 6,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.Address,
    json_name: "shippingAddress"

  field :billing_address, 7,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.Address,
    json_name: "billingAddress"

  field :user, 8, type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.User

  field :merchants, 13,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.User

  field :items, 14,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.Item

  field :gateway_info, 10,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TransactionData.GatewayInfo,
    json_name: "gatewayInfo"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :valid, 1, type: :bool

  field :invalid_reason, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.InvalidReason,
    json_name: "invalidReason",
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :hostname, 4, type: :string
  field :action, 5, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment.StolenInstrumentVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :risk, 1, type: :float
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment.CardTestingVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :risk, 1, type: :float
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment.BehavioralTrustVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :trust, 1, type: :float
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transaction_risk, 1, type: :float, json_name: "transactionRisk"

  field :stolen_instrument_verdict, 2,
    type:
      Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment.StolenInstrumentVerdict,
    json_name: "stolenInstrumentVerdict"

  field :card_testing_verdict, 3,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment.CardTestingVerdict,
    json_name: "cardTestingVerdict"

  field :behavioral_trust_verdict, 4,
    type:
      Google.Cloud.Recaptchaenterprise.V1beta1.FraudPreventionAssessment.BehavioralTrustVerdict,
    json_name: "behavioralTrustVerdict"
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment.AccountDefenderLabel,
    enum: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.recaptchaenterprise.v1beta1.RecaptchaEnterpriseServiceV1Beta1",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateAssessment,
      Google.Cloud.Recaptchaenterprise.V1beta1.CreateAssessmentRequest,
      Google.Cloud.Recaptchaenterprise.V1beta1.Assessment

  rpc :AnnotateAssessment,
      Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest,
      Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentResponse
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Service
end