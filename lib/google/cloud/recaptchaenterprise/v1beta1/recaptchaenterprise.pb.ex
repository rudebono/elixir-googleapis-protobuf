defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ANNOTATION_UNSPECIFIED, 0
  field :LEGITIMATE, 1
  field :FRAUDULENT, 2
  field :PASSWORD_CORRECT, 3
  field :PASSWORD_INCORRECT, 4
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Assessment.ClassificationReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CLASSIFICATION_REASON_UNSPECIFIED, 0
  field :AUTOMATION, 1
  field :UNEXPECTED_ENVIRONMENT, 2
  field :TOO_MUCH_TRAFFIC, 3
  field :UNEXPECTED_USAGE_PATTERNS, 4
  field :LOW_CONFIDENCE_SCORE, 5
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.InvalidReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED, 0
  field :PROFILE_MATCH, 1
  field :SUSPICIOUS_LOGIN_ACTIVITY, 2
  field :SUSPICIOUS_ACCOUNT_CREATION, 3
  field :RELATED_ACCOUNTS_NUMBER_HIGH, 4
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.CreateAssessmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :assessment, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.Assessment,
    deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.PasswordLeakVerification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :token, 1, type: :string, deprecated: false
  field :site_key, 2, type: :string, json_name: "siteKey", deprecated: false
  field :user_agent, 3, type: :string, json_name: "userAgent", deprecated: false
  field :user_ip_address, 4, type: :string, json_name: "userIpAddress", deprecated: false
  field :expected_action, 5, type: :string, json_name: "expectedAction", deprecated: false
  field :hashed_account_id, 6, type: :bytes, json_name: "hashedAccountId", deprecated: false
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :valid, 1, type: :bool

  field :invalid_reason, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.InvalidReason,
    json_name: "invalidReason",
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :hostname, 4, type: :string
  field :action, 5, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment.AccountDefenderLabel,
    enum: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.recaptchaenterprise.v1beta1.RecaptchaEnterpriseServiceV1Beta1",
    protoc_gen_elixir_version: "0.11.0"

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