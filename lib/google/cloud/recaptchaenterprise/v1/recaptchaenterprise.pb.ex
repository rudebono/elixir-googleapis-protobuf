defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionEvent.TransactionEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Annotation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ANNOTATION_UNSPECIFIED, 0
  field :LEGITIMATE, 1
  field :FRAUDULENT, 2
  field :PASSWORD_CORRECT, 3
  field :PASSWORD_INCORRECT, 4
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

defmodule Google.Cloud.Recaptchaenterprise.V1.AccountVerificationInfo.Result do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESULT_UNSPECIFIED, 0
  field :SUCCESS_USER_VERIFIED, 1
  field :ERROR_USER_NOT_VERIFIED, 2
  field :ERROR_SITE_ONBOARDING_INCOMPLETE, 3
  field :ERROR_RECIPIENT_NOT_ALLOWED, 4
  field :ERROR_RECIPIENT_ABUSE_LIMIT_EXHAUSTED, 5
  field :ERROR_CRITICAL_INTERNAL, 6
  field :ERROR_CUSTOMER_QUOTA_EXHAUSTED, 7
  field :ERROR_VERIFICATION_BYPASSED, 8
  field :ERROR_VERDICT_MISMATCH, 9
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Event.FraudPrevention do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FRAUD_PREVENTION_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CLASSIFICATION_REASON_UNSPECIFIED, 0
  field :AUTOMATION, 1
  field :UNEXPECTED_ENVIRONMENT, 2
  field :TOO_MUCH_TRAFFIC, 3
  field :UNEXPECTED_USAGE_PATTERNS, 4
  field :LOW_CONFIDENCE_SCORE, 5
  field :SUSPECTED_CARDING, 6
  field :SUSPECTED_CHARGEBACK, 7
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.Challenge do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CHALLENGE_UNSPECIFIED, 0
  field :NOCAPTCHA, 1
  field :PASSED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INVALID_REASON_UNSPECIFIED, 0
  field :UNKNOWN_INVALID_REASON, 1
  field :MALFORMED, 2
  field :EXPIRED, 3
  field :DUPE, 4
  field :MISSING, 5
  field :BROWSER_ERROR, 6
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudSignals.CardSignals.CardLabel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CARD_LABEL_UNSPECIFIED, 0
  field :PREPAID, 1
  field :VIRTUAL, 2
  field :UNEXPECTED_LOCATION, 3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.SmsTollFraudVerdict.SmsTollFraudReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SMS_TOLL_FRAUD_REASON_UNSPECIFIED, 0
  field :INVALID_PHONE_NUMBER, 1
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment.AccountDefenderLabel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED, 0
  field :PROFILE_MATCH, 1
  field :SUSPICIOUS_LOGIN_ACTIVITY, 2
  field :SUSPICIOUS_ACCOUNT_CREATION, 3
  field :RELATED_ACCOUNTS_NUMBER_HIGH, 4
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TestingOptions.TestingChallenge do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TESTING_CHALLENGE_UNSPECIFIED, 0
  field :NOCAPTCHA, 1
  field :UNSOLVABLE_CHALLENGE, 2
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INTEGRATION_TYPE_UNSPECIFIED, 0
  field :SCORE, 1
  field :CHECKBOX, 2
  field :INVISIBLE, 3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, 0
  field :USABILITY, 1
  field :BALANCE, 2
  field :SECURITY, 3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WafSettings.WafFeature do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :WAF_FEATURE_UNSPECIFIED, 0
  field :CHALLENGE_PAGE, 1
  field :SESSION_TOKEN, 2
  field :ACTION_TOKEN, 3
  field :EXPRESS, 5
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WafSettings.WafService do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :WAF_SERVICE_UNSPECIFIED, 0
  field :CA, 1
  field :FASTLY, 3
  field :CLOUDFLARE, 4
  field :AKAMAI, 5
end

defmodule Google.Cloud.Recaptchaenterprise.V1.IpOverrideData.OverrideType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OVERRIDE_TYPE_UNSPECIFIED, 0
  field :ALLOW, 1
end

defmodule Google.Cloud.Recaptchaenterprise.V1.CreateAssessmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :assessment, 2, type: Google.Cloud.Recaptchaenterprise.V1.Assessment, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :event_type, 1,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionEvent.TransactionEventType,
    json_name: "eventType",
    enum: true,
    deprecated: false

  field :reason, 2, type: :string, deprecated: false
  field :value, 3, type: :double, deprecated: false
  field :event_time, 4, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :annotation, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Annotation,
    enum: true,
    deprecated: false

  field :reasons, 3,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Reason,
    enum: true,
    deprecated: false

  field :account_id, 7, type: :string, json_name: "accountId", deprecated: false
  field :hashed_account_id, 4, type: :bytes, json_name: "hashedAccountId", deprecated: false

  field :transaction_event, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionEvent,
    json_name: "transactionEvent",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.EndpointVerificationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :endpoint, 0

  field :email_address, 1, type: :string, json_name: "emailAddress", oneof: 0
  field :phone_number, 2, type: :string, json_name: "phoneNumber", oneof: 0
  field :request_token, 3, type: :string, json_name: "requestToken", deprecated: false

  field :last_verification_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastVerificationTime",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AccountVerificationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :endpoints, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.EndpointVerificationInfo,
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :latest_verification_result, 7,
    type: Google.Cloud.Recaptchaenterprise.V1.AccountVerificationInfo.Result,
    json_name: "latestVerificationResult",
    enum: true,
    deprecated: false

  field :username, 2, type: :string, deprecated: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.PrivatePasswordLeakVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :lookup_hash_prefix, 1, type: :bytes, json_name: "lookupHashPrefix", deprecated: false

  field :encrypted_user_credentials_hash, 2,
    type: :bytes,
    json_name: "encryptedUserCredentialsHash",
    deprecated: false

  field :encrypted_leak_match_prefixes, 3,
    repeated: true,
    type: :bytes,
    json_name: "encryptedLeakMatchPrefixes",
    deprecated: false

  field :reencrypted_user_credentials_hash, 4,
    type: :bytes,
    json_name: "reencryptedUserCredentialsHash",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Assessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event, 2, type: Google.Cloud.Recaptchaenterprise.V1.Event, deprecated: false

  field :risk_analysis, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis,
    json_name: "riskAnalysis",
    deprecated: false

  field :token_properties, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.TokenProperties,
    json_name: "tokenProperties",
    deprecated: false

  field :account_verification, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.AccountVerificationInfo,
    json_name: "accountVerification",
    deprecated: false

  field :account_defender_assessment, 6,
    type: Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment,
    json_name: "accountDefenderAssessment",
    deprecated: false

  field :private_password_leak_verification, 8,
    type: Google.Cloud.Recaptchaenterprise.V1.PrivatePasswordLeakVerification,
    json_name: "privatePasswordLeakVerification",
    deprecated: false

  field :firewall_policy_assessment, 10,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallPolicyAssessment,
    json_name: "firewallPolicyAssessment",
    deprecated: false

  field :fraud_prevention_assessment, 11,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment,
    json_name: "fraudPreventionAssessment",
    deprecated: false

  field :fraud_signals, 13,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudSignals,
    json_name: "fraudSignals",
    deprecated: false

  field :phone_fraud_assessment, 12,
    type: Google.Cloud.Recaptchaenterprise.V1.PhoneFraudAssessment,
    json_name: "phoneFraudAssessment",
    deprecated: false

  field :assessment_environment, 14,
    type: Google.Cloud.Recaptchaenterprise.V1.AssessmentEnvironment,
    json_name: "assessmentEnvironment",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :token, 1, type: :string, deprecated: false
  field :site_key, 2, type: :string, json_name: "siteKey", deprecated: false
  field :user_agent, 3, type: :string, json_name: "userAgent", deprecated: false
  field :user_ip_address, 4, type: :string, json_name: "userIpAddress", deprecated: false
  field :expected_action, 5, type: :string, json_name: "expectedAction", deprecated: false
  field :hashed_account_id, 6, type: :bytes, json_name: "hashedAccountId", deprecated: true
  field :express, 14, type: :bool, deprecated: false
  field :requested_uri, 8, type: :string, json_name: "requestedUri", deprecated: false
  field :waf_token_assessment, 9, type: :bool, json_name: "wafTokenAssessment", deprecated: false
  field :ja3, 10, type: :string, deprecated: false
  field :headers, 11, repeated: true, type: :string, deprecated: false

  field :firewall_policy_evaluation, 12,
    type: :bool,
    json_name: "firewallPolicyEvaluation",
    deprecated: false

  field :transaction_data, 13,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData,
    json_name: "transactionData",
    deprecated: false

  field :user_info, 15,
    type: Google.Cloud.Recaptchaenterprise.V1.UserInfo,
    json_name: "userInfo",
    deprecated: false

  field :fraud_prevention, 17,
    type: Google.Cloud.Recaptchaenterprise.V1.Event.FraudPrevention,
    json_name: "fraudPrevention",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionData.Address do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :recipient, 1, type: :string, deprecated: false
  field :address, 2, repeated: true, type: :string, deprecated: false
  field :locality, 3, type: :string, deprecated: false
  field :administrative_area, 4, type: :string, json_name: "administrativeArea", deprecated: false
  field :region_code, 5, type: :string, json_name: "regionCode", deprecated: false
  field :postal_code, 6, type: :string, json_name: "postalCode", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionData.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 6, type: :string, json_name: "accountId", deprecated: false
  field :creation_ms, 1, type: :int64, json_name: "creationMs", deprecated: false
  field :email, 2, type: :string, deprecated: false
  field :email_verified, 3, type: :bool, json_name: "emailVerified", deprecated: false
  field :phone_number, 4, type: :string, json_name: "phoneNumber", deprecated: false
  field :phone_verified, 5, type: :bool, json_name: "phoneVerified", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionData.Item do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :value, 2, type: :double, deprecated: false
  field :quantity, 3, type: :int64, deprecated: false
  field :merchant_account_id, 4, type: :string, json_name: "merchantAccountId", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionData.GatewayInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :gateway_response_code, 2,
    type: :string,
    json_name: "gatewayResponseCode",
    deprecated: false

  field :avs_response_code, 3, type: :string, json_name: "avsResponseCode", deprecated: false
  field :cvv_response_code, 4, type: :string, json_name: "cvvResponseCode", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TransactionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transaction_id, 11, proto3_optional: true, type: :string, json_name: "transactionId"
  field :payment_method, 1, type: :string, json_name: "paymentMethod", deprecated: false
  field :card_bin, 2, type: :string, json_name: "cardBin", deprecated: false
  field :card_last_four, 3, type: :string, json_name: "cardLastFour", deprecated: false
  field :currency_code, 4, type: :string, json_name: "currencyCode", deprecated: false
  field :value, 5, type: :double, deprecated: false
  field :shipping_value, 12, type: :double, json_name: "shippingValue", deprecated: false

  field :shipping_address, 6,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData.Address,
    json_name: "shippingAddress",
    deprecated: false

  field :billing_address, 7,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData.Address,
    json_name: "billingAddress",
    deprecated: false

  field :user, 8,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData.User,
    deprecated: false

  field :merchants, 13,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData.User,
    deprecated: false

  field :items, 14,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData.Item,
    deprecated: false

  field :gateway_info, 10,
    type: Google.Cloud.Recaptchaenterprise.V1.TransactionData.GatewayInfo,
    json_name: "gatewayInfo",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.UserInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_account_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createAccountTime",
    deprecated: false

  field :account_id, 2, type: :string, json_name: "accountId", deprecated: false

  field :user_ids, 3,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.UserId,
    json_name: "userIds",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.UserId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :id_oneof, 0

  field :email, 1, type: :string, oneof: 0, deprecated: false
  field :phone_number, 2, type: :string, json_name: "phoneNumber", oneof: 0, deprecated: false
  field :username, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :score, 1, type: :float, deprecated: false

  field :reasons, 2,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason,
    enum: true,
    deprecated: false

  field :extended_verdict_reasons, 3,
    repeated: true,
    type: :string,
    json_name: "extendedVerdictReasons",
    deprecated: false

  field :challenge, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.Challenge,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TokenProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :valid, 1, type: :bool, deprecated: false

  field :invalid_reason, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason,
    json_name: "invalidReason",
    enum: true,
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :hostname, 4, type: :string, deprecated: false

  field :android_package_name, 8,
    type: :string,
    json_name: "androidPackageName",
    deprecated: false

  field :ios_bundle_id, 9, type: :string, json_name: "iosBundleId", deprecated: false
  field :action, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment.StolenInstrumentVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :risk, 1, type: :float, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment.CardTestingVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :risk, 1, type: :float, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment.BehavioralTrustVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :trust, 1, type: :float, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transaction_risk, 1, type: :float, json_name: "transactionRisk", deprecated: false

  field :stolen_instrument_verdict, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment.StolenInstrumentVerdict,
    json_name: "stolenInstrumentVerdict",
    deprecated: false

  field :card_testing_verdict, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment.CardTestingVerdict,
    json_name: "cardTestingVerdict",
    deprecated: false

  field :behavioral_trust_verdict, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudPreventionAssessment.BehavioralTrustVerdict,
    json_name: "behavioralTrustVerdict",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudSignals.UserSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :active_days_lower_bound, 1,
    type: :int32,
    json_name: "activeDaysLowerBound",
    deprecated: false

  field :synthetic_risk, 2, type: :float, json_name: "syntheticRisk", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudSignals.CardSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :card_labels, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudSignals.CardSignals.CardLabel,
    json_name: "cardLabels",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FraudSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_signals, 1,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudSignals.UserSignals,
    json_name: "userSignals",
    deprecated: false

  field :card_signals, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.FraudSignals.CardSignals,
    json_name: "cardSignals",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.SmsTollFraudVerdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :risk, 1, type: :float, deprecated: false

  field :reasons, 2,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.SmsTollFraudVerdict.SmsTollFraudReason,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.PhoneFraudAssessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sms_toll_fraud_verdict, 1,
    type: Google.Cloud.Recaptchaenterprise.V1.SmsTollFraudVerdict,
    json_name: "smsTollFraudVerdict",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment.AccountDefenderLabel,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.CreateKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :key, 2, type: Google.Cloud.Recaptchaenterprise.V1.Key, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Cloud.Recaptchaenterprise.V1.Key
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RetrieveLegacySecretKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.GetKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.UpdateKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: Google.Cloud.Recaptchaenterprise.V1.Key, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.DeleteKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.CreateFirewallPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :firewall_policy, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy,
    json_name: "firewallPolicy",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListFirewallPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListFirewallPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :firewall_policies, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy,
    json_name: "firewallPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.GetFirewallPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.UpdateFirewallPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :firewall_policy, 1,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy,
    json_name: "firewallPolicy",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.DeleteFirewallPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ReorderFirewallPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ReorderFirewallPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.MigrateKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :skip_billing_check, 2, type: :bool, json_name: "skipBillingCheck", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.GetMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false
  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :score_metrics, 2,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.ScoreMetrics,
    json_name: "scoreMetrics"

  field :challenge_metrics, 3,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.ChallengeMetrics,
    json_name: "challengeMetrics"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RetrieveLegacySecretKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :legacy_secret_key, 1, type: :string, json_name: "legacySecretKey"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Key.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Key do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :platform_settings, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :web_settings, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings,
    json_name: "webSettings",
    oneof: 0

  field :android_settings, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.AndroidKeySettings,
    json_name: "androidSettings",
    oneof: 0

  field :ios_settings, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.IOSKeySettings,
    json_name: "iosSettings",
    oneof: 0

  field :express_settings, 11,
    type: Google.Cloud.Recaptchaenterprise.V1.ExpressKeySettings,
    json_name: "expressSettings",
    oneof: 0

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.Key.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :testing_options, 9,
    type: Google.Cloud.Recaptchaenterprise.V1.TestingOptions,
    json_name: "testingOptions",
    deprecated: false

  field :waf_settings, 10,
    type: Google.Cloud.Recaptchaenterprise.V1.WafSettings,
    json_name: "wafSettings",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TestingOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :testing_score, 1, type: :float, json_name: "testingScore", deprecated: false

  field :testing_challenge, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.TestingOptions.TestingChallenge,
    json_name: "testingChallenge",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allow_all_domains, 3, type: :bool, json_name: "allowAllDomains", deprecated: false

  field :allowed_domains, 1,
    repeated: true,
    type: :string,
    json_name: "allowedDomains",
    deprecated: false

  field :allow_amp_traffic, 2, type: :bool, json_name: "allowAmpTraffic", deprecated: false

  field :integration_type, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType,
    json_name: "integrationType",
    enum: true,
    deprecated: false

  field :challenge_security_preference, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference,
    json_name: "challengeSecurityPreference",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AndroidKeySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allow_all_package_names, 2,
    type: :bool,
    json_name: "allowAllPackageNames",
    deprecated: false

  field :allowed_package_names, 1,
    repeated: true,
    type: :string,
    json_name: "allowedPackageNames",
    deprecated: false

  field :support_non_google_app_store_distribution, 3,
    type: :bool,
    json_name: "supportNonGoogleAppStoreDistribution",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.IOSKeySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allow_all_bundle_ids, 2, type: :bool, json_name: "allowAllBundleIds", deprecated: false

  field :allowed_bundle_ids, 1,
    repeated: true,
    type: :string,
    json_name: "allowedBundleIds",
    deprecated: false

  field :apple_developer_id, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.AppleDeveloperId,
    json_name: "appleDeveloperId",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ExpressKeySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AppleDeveloperId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :private_key, 1, type: :string, json_name: "privateKey", deprecated: false
  field :key_id, 2, type: :string, json_name: "keyId", deprecated: false
  field :team_id, 3, type: :string, json_name: "teamId", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution.ScoreBucketsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :score_buckets, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution.ScoreBucketsEntry,
    json_name: "scoreBuckets",
    map: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreMetrics.ActionMetricsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :overall_metrics, 1,
    type: Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution,
    json_name: "overallMetrics"

  field :action_metrics, 2,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.ScoreMetrics.ActionMetricsEntry,
    json_name: "actionMetrics",
    map: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ChallengeMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pageload_count, 1, type: :int64, json_name: "pageloadCount"
  field :nocaptcha_count, 2, type: :int64, json_name: "nocaptchaCount"
  field :failed_count, 3, type: :int64, json_name: "failedCount"
  field :passed_count, 4, type: :int64, json_name: "passedCount"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallPolicyAssessment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error, 5, type: Google.Rpc.Status, deprecated: false

  field :firewall_policy, 8,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy,
    json_name: "firewallPolicy",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction.AllowAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction.BlockAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction.IncludeRecaptchaScriptAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction.RedirectAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction.SubstituteAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction.SetHeaderAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :firewall_action_oneof, 0

  field :allow, 1, type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction.AllowAction, oneof: 0
  field :block, 2, type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction.BlockAction, oneof: 0

  field :include_recaptcha_script, 6,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction.IncludeRecaptchaScriptAction,
    json_name: "includeRecaptchaScript",
    oneof: 0

  field :redirect, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction.RedirectAction,
    oneof: 0

  field :substitute, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction.SubstituteAction,
    oneof: 0

  field :set_header, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction.SetHeaderAction,
    json_name: "setHeader",
    oneof: 0
end

defmodule Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :path, 4, type: :string, deprecated: false
  field :condition, 5, type: :string, deprecated: false

  field :actions, 6,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.FirewallAction,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupMembershipsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupMembershipsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :related_account_group_memberships, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroupMembership,
    json_name: "relatedAccountGroupMemberships"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :related_account_groups, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroup,
    json_name: "relatedAccountGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.SearchRelatedAccountGroupMembershipsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :account_id, 5, type: :string, json_name: "accountId", deprecated: false
  field :hashed_account_id, 2, type: :bytes, json_name: "hashedAccountId", deprecated: true
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.SearchRelatedAccountGroupMembershipsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :related_account_group_memberships, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroupMembership,
    json_name: "relatedAccountGroupMemberships"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AddIpOverrideRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ip_override_data, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.IpOverrideData,
    json_name: "ipOverrideData",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AddIpOverrideResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RemoveIpOverrideRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ip_override_data, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.IpOverrideData,
    json_name: "ipOverrideData",
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RemoveIpOverrideResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListIpOverridesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListIpOverridesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ip_overrides, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.IpOverrideData,
    json_name: "ipOverrides"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroupMembership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account_id, 4, type: :string, json_name: "accountId"
  field :hashed_account_id, 2, type: :bytes, json_name: "hashedAccountId", deprecated: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WafSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :waf_service, 1,
    type: Google.Cloud.Recaptchaenterprise.V1.WafSettings.WafService,
    json_name: "wafService",
    enum: true,
    deprecated: false

  field :waf_feature, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.WafSettings.WafFeature,
    json_name: "wafFeature",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AssessmentEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :client, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.IpOverrideData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ip, 1, type: :string, deprecated: false

  field :override_type, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.IpOverrideData.OverrideType,
    json_name: "overrideType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RecaptchaEnterpriseService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.recaptchaenterprise.v1.RecaptchaEnterpriseService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateAssessment,
      Google.Cloud.Recaptchaenterprise.V1.CreateAssessmentRequest,
      Google.Cloud.Recaptchaenterprise.V1.Assessment

  rpc :AnnotateAssessment,
      Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest,
      Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentResponse

  rpc :CreateKey,
      Google.Cloud.Recaptchaenterprise.V1.CreateKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1.Key

  rpc :ListKeys,
      Google.Cloud.Recaptchaenterprise.V1.ListKeysRequest,
      Google.Cloud.Recaptchaenterprise.V1.ListKeysResponse

  rpc :RetrieveLegacySecretKey,
      Google.Cloud.Recaptchaenterprise.V1.RetrieveLegacySecretKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1.RetrieveLegacySecretKeyResponse

  rpc :GetKey,
      Google.Cloud.Recaptchaenterprise.V1.GetKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1.Key

  rpc :UpdateKey,
      Google.Cloud.Recaptchaenterprise.V1.UpdateKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1.Key

  rpc :DeleteKey, Google.Cloud.Recaptchaenterprise.V1.DeleteKeyRequest, Google.Protobuf.Empty

  rpc :MigrateKey,
      Google.Cloud.Recaptchaenterprise.V1.MigrateKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1.Key

  rpc :AddIpOverride,
      Google.Cloud.Recaptchaenterprise.V1.AddIpOverrideRequest,
      Google.Cloud.Recaptchaenterprise.V1.AddIpOverrideResponse

  rpc :RemoveIpOverride,
      Google.Cloud.Recaptchaenterprise.V1.RemoveIpOverrideRequest,
      Google.Cloud.Recaptchaenterprise.V1.RemoveIpOverrideResponse

  rpc :ListIpOverrides,
      Google.Cloud.Recaptchaenterprise.V1.ListIpOverridesRequest,
      Google.Cloud.Recaptchaenterprise.V1.ListIpOverridesResponse

  rpc :GetMetrics,
      Google.Cloud.Recaptchaenterprise.V1.GetMetricsRequest,
      Google.Cloud.Recaptchaenterprise.V1.Metrics

  rpc :CreateFirewallPolicy,
      Google.Cloud.Recaptchaenterprise.V1.CreateFirewallPolicyRequest,
      Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy

  rpc :ListFirewallPolicies,
      Google.Cloud.Recaptchaenterprise.V1.ListFirewallPoliciesRequest,
      Google.Cloud.Recaptchaenterprise.V1.ListFirewallPoliciesResponse

  rpc :GetFirewallPolicy,
      Google.Cloud.Recaptchaenterprise.V1.GetFirewallPolicyRequest,
      Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy

  rpc :UpdateFirewallPolicy,
      Google.Cloud.Recaptchaenterprise.V1.UpdateFirewallPolicyRequest,
      Google.Cloud.Recaptchaenterprise.V1.FirewallPolicy

  rpc :DeleteFirewallPolicy,
      Google.Cloud.Recaptchaenterprise.V1.DeleteFirewallPolicyRequest,
      Google.Protobuf.Empty

  rpc :ReorderFirewallPolicies,
      Google.Cloud.Recaptchaenterprise.V1.ReorderFirewallPoliciesRequest,
      Google.Cloud.Recaptchaenterprise.V1.ReorderFirewallPoliciesResponse

  rpc :ListRelatedAccountGroups,
      Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupsRequest,
      Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupsResponse

  rpc :ListRelatedAccountGroupMemberships,
      Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupMembershipsRequest,
      Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupMembershipsResponse

  rpc :SearchRelatedAccountGroupMemberships,
      Google.Cloud.Recaptchaenterprise.V1.SearchRelatedAccountGroupMembershipsRequest,
      Google.Cloud.Recaptchaenterprise.V1.SearchRelatedAccountGroupMembershipsResponse
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RecaptchaEnterpriseService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Recaptchaenterprise.V1.RecaptchaEnterpriseService.Service
end