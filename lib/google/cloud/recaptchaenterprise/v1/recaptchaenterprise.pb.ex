defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Annotation do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ANNOTATION_UNSPECIFIED, 0
  field :LEGITIMATE, 1
  field :FRAUDULENT, 2
  field :PASSWORD_CORRECT, 3
  field :PASSWORD_INCORRECT, 4
end
defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :CHARGEBACK, 1
  field :CHARGEBACK_FRAUD, 8
  field :CHARGEBACK_DISPUTE, 9
  field :PAYMENT_HEURISTICS, 2
  field :INITIATED_TWO_FACTOR, 7
  field :PASSED_TWO_FACTOR, 3
  field :FAILED_TWO_FACTOR, 4
  field :CORRECT_PASSWORD, 5
  field :INCORRECT_PASSWORD, 6
end
defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CLASSIFICATION_REASON_UNSPECIFIED, 0
  field :AUTOMATION, 1
  field :UNEXPECTED_ENVIRONMENT, 2
  field :TOO_MUCH_TRAFFIC, 3
  field :UNEXPECTED_USAGE_PATTERNS, 4
  field :LOW_CONFIDENCE_SCORE, 5
end
defmodule Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INVALID_REASON_UNSPECIFIED, 0
  field :UNKNOWN_INVALID_REASON, 1
  field :MALFORMED, 2
  field :EXPIRED, 3
  field :DUPE, 4
  field :MISSING, 5
  field :BROWSER_ERROR, 6
end
defmodule Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment.AccountDefenderLabel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED, 0
  field :PROFILE_MATCH, 1
  field :SUSPICIOUS_LOGIN_ACTIVITY, 2
  field :SUSPICIOUS_ACCOUNT_CREATION, 3
  field :RELATED_ACCOUNTS_NUMBER_HIGH, 4
end
defmodule Google.Cloud.Recaptchaenterprise.V1.TestingOptions.TestingChallenge do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TESTING_CHALLENGE_UNSPECIFIED, 0
  field :NOCAPTCHA, 1
  field :UNSOLVABLE_CHALLENGE, 2
end
defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INTEGRATION_TYPE_UNSPECIFIED, 0
  field :SCORE, 1
  field :CHECKBOX, 2
  field :INVISIBLE, 3
end
defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, 0
  field :USABILITY, 1
  field :BALANCE, 2
  field :SECURITY, 3
end
defmodule Google.Cloud.Recaptchaenterprise.V1.WafSettings.WafFeature do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :WAF_FEATURE_UNSPECIFIED, 0
  field :CHALLENGE_PAGE, 1
  field :SESSION_TOKEN, 2
  field :ACTION_TOKEN, 3
end
defmodule Google.Cloud.Recaptchaenterprise.V1.WafSettings.WafService do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :WAF_SERVICE_UNSPECIFIED, 0
  field :CA, 1
end
defmodule Google.Cloud.Recaptchaenterprise.V1.CreateAssessmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :assessment, 2, type: Google.Cloud.Recaptchaenterprise.V1.Assessment, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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

  field :hashed_account_id, 4, type: :bytes, json_name: "hashedAccountId", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Recaptchaenterprise.V1.Assessment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event, 2, type: Google.Cloud.Recaptchaenterprise.V1.Event

  field :risk_analysis, 3,
    type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis,
    json_name: "riskAnalysis",
    deprecated: false

  field :token_properties, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.TokenProperties,
    json_name: "tokenProperties",
    deprecated: false

  field :account_defender_assessment, 6,
    type: Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment,
    json_name: "accountDefenderAssessment"

  field :private_password_leak_verification, 8,
    type: Google.Cloud.Recaptchaenterprise.V1.PrivatePasswordLeakVerification,
    json_name: "privatePasswordLeakVerification"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :token, 1, type: :string, deprecated: false
  field :site_key, 2, type: :string, json_name: "siteKey", deprecated: false
  field :user_agent, 3, type: :string, json_name: "userAgent", deprecated: false
  field :user_ip_address, 4, type: :string, json_name: "userIpAddress", deprecated: false
  field :expected_action, 5, type: :string, json_name: "expectedAction", deprecated: false
  field :hashed_account_id, 6, type: :bytes, json_name: "hashedAccountId", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :score, 1, type: :float

  field :reasons, 2,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason,
    enum: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1.TokenProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :valid, 1, type: :bool

  field :invalid_reason, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason,
    json_name: "invalidReason",
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :hostname, 4, type: :string
  field :action, 5, type: :string
end
defmodule Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.AccountDefenderAssessment.AccountDefenderLabel,
    enum: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1.PrivatePasswordLeakVerification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Recaptchaenterprise.V1.CreateKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :key, 2, type: Google.Cloud.Recaptchaenterprise.V1.Key, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ListKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ListKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Cloud.Recaptchaenterprise.V1.Key
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.GetKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.UpdateKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: Google.Cloud.Recaptchaenterprise.V1.Key, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.DeleteKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.MigrateKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.GetMetricsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.Metrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Recaptchaenterprise.V1.Key.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Recaptchaenterprise.V1.Key do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :platform_settings, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

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

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.Key.LabelsEntry,
    map: true

  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :testing_options, 9,
    type: Google.Cloud.Recaptchaenterprise.V1.TestingOptions,
    json_name: "testingOptions"

  field :waf_settings, 10,
    type: Google.Cloud.Recaptchaenterprise.V1.WafSettings,
    json_name: "wafSettings"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.TestingOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :testing_score, 1, type: :float, json_name: "testingScore"

  field :testing_challenge, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.TestingOptions.TestingChallenge,
    json_name: "testingChallenge",
    enum: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allow_all_domains, 3, type: :bool, json_name: "allowAllDomains"
  field :allowed_domains, 1, repeated: true, type: :string, json_name: "allowedDomains"
  field :allow_amp_traffic, 2, type: :bool, json_name: "allowAmpTraffic"

  field :integration_type, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType,
    json_name: "integrationType",
    enum: true,
    deprecated: false

  field :challenge_security_preference, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference,
    json_name: "challengeSecurityPreference",
    enum: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1.AndroidKeySettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allow_all_package_names, 2, type: :bool, json_name: "allowAllPackageNames"
  field :allowed_package_names, 1, repeated: true, type: :string, json_name: "allowedPackageNames"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.IOSKeySettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allow_all_bundle_ids, 2, type: :bool, json_name: "allowAllBundleIds"
  field :allowed_bundle_ids, 1, repeated: true, type: :string, json_name: "allowedBundleIds"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution.ScoreBucketsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int64
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :score_buckets, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution.ScoreBucketsEntry,
    json_name: "scoreBuckets",
    map: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreMetrics.ActionMetricsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Recaptchaenterprise.V1.ScoreDistribution
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ScoreMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :pageload_count, 1, type: :int64, json_name: "pageloadCount"
  field :nocaptcha_count, 2, type: :int64, json_name: "nocaptchaCount"
  field :failed_count, 3, type: :int64, json_name: "failedCount"
  field :passed_count, 4, type: :int64, json_name: "passedCount"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupMembershipsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupMembershipsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :related_account_group_memberships, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroupMembership,
    json_name: "relatedAccountGroupMemberships"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.ListRelatedAccountGroupsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :related_account_groups, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroup,
    json_name: "relatedAccountGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.SearchRelatedAccountGroupMembershipsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :hashed_account_id, 2, type: :bytes, json_name: "hashedAccountId", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.SearchRelatedAccountGroupMembershipsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :related_account_group_memberships, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroupMembership,
    json_name: "relatedAccountGroupMemberships"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroupMembership do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :hashed_account_id, 2, type: :bytes, json_name: "hashedAccountId"
end
defmodule Google.Cloud.Recaptchaenterprise.V1.RelatedAccountGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1.WafSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Recaptchaenterprise.V1.RecaptchaEnterpriseService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.recaptchaenterprise.v1.RecaptchaEnterpriseService",
    protoc_gen_elixir_version: "0.10.0"

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

  rpc :GetMetrics,
      Google.Cloud.Recaptchaenterprise.V1.GetMetricsRequest,
      Google.Cloud.Recaptchaenterprise.V1.Metrics

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
