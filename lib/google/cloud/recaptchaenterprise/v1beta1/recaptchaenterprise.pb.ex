defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ANNOTATION_UNSPECIFIED
          | :LEGITIMATE
          | :FRAUDULENT
          | :PASSWORD_CORRECT
          | :PASSWORD_INCORRECT

  field :ANNOTATION_UNSPECIFIED, 0
  field :LEGITIMATE, 1
  field :FRAUDULENT, 2
  field :PASSWORD_CORRECT, 3
  field :PASSWORD_INCORRECT, 4
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REASON_UNSPECIFIED
          | :CHARGEBACK
          | :CHARGEBACK_FRAUD
          | :CHARGEBACK_DISPUTE
          | :PAYMENT_HEURISTICS
          | :INITIATED_TWO_FACTOR
          | :PASSED_TWO_FACTOR
          | :FAILED_TWO_FACTOR
          | :CORRECT_PASSWORD
          | :INCORRECT_PASSWORD

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLASSIFICATION_REASON_UNSPECIFIED
          | :AUTOMATION
          | :UNEXPECTED_ENVIRONMENT
          | :TOO_MUCH_TRAFFIC
          | :UNEXPECTED_USAGE_PATTERNS
          | :LOW_CONFIDENCE_SCORE

  field :CLASSIFICATION_REASON_UNSPECIFIED, 0
  field :AUTOMATION, 1
  field :UNEXPECTED_ENVIRONMENT, 2
  field :TOO_MUCH_TRAFFIC, 3
  field :UNEXPECTED_USAGE_PATTERNS, 4
  field :LOW_CONFIDENCE_SCORE, 5
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.InvalidReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INVALID_REASON_UNSPECIFIED
          | :UNKNOWN_INVALID_REASON
          | :MALFORMED
          | :EXPIRED
          | :DUPE
          | :SITE_MISMATCH
          | :MISSING
          | :BROWSER_ERROR

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED
          | :PROFILE_MATCH
          | :SUSPICIOUS_LOGIN_ACTIVITY
          | :SUSPICIOUS_ACCOUNT_CREATION
          | :RELATED_ACCOUNTS_NUMBER_HIGH

  field :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED, 0
  field :PROFILE_MATCH, 1
  field :SUSPICIOUS_LOGIN_ACTIVITY, 2
  field :SUSPICIOUS_ACCOUNT_CREATION, 3
  field :RELATED_ACCOUNTS_NUMBER_HIGH, 4
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.CreateAssessmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          assessment: Google.Cloud.Recaptchaenterprise.V1beta1.Assessment.t() | nil
        }

  defstruct parent: "",
            assessment: nil

  field :parent, 1, type: :string, deprecated: false

  field :assessment, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.Assessment,
    deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          annotation:
            Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation.t(),
          reasons: [Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Reason.t()],
          hashed_account_id: binary
        }

  defstruct name: "",
            annotation: :ANNOTATION_UNSPECIFIED,
            reasons: [],
            hashed_account_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.PasswordLeakVerification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hashed_user_credentials: binary,
          credentials_leaked: boolean,
          canonicalized_username: String.t()
        }

  defstruct hashed_user_credentials: "",
            credentials_leaked: false,
            canonicalized_username: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          event: Google.Cloud.Recaptchaenterprise.V1beta1.Event.t() | nil,
          score: float | :infinity | :negative_infinity | :nan,
          token_properties: Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.t() | nil,
          reasons: [Google.Cloud.Recaptchaenterprise.V1beta1.Assessment.ClassificationReason.t()],
          password_leak_verification:
            Google.Cloud.Recaptchaenterprise.V1beta1.PasswordLeakVerification.t() | nil,
          account_defender_assessment:
            Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment.t() | nil
        }

  defstruct name: "",
            event: nil,
            score: 0.0,
            token_properties: nil,
            reasons: [],
            password_leak_verification: nil,
            account_defender_assessment: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          token: String.t(),
          site_key: String.t(),
          user_agent: String.t(),
          user_ip_address: String.t(),
          expected_action: String.t(),
          hashed_account_id: binary
        }

  defstruct token: "",
            site_key: "",
            user_agent: "",
            user_ip_address: "",
            expected_action: "",
            hashed_account_id: ""

  field :token, 1, type: :string, deprecated: false
  field :site_key, 2, type: :string, json_name: "siteKey", deprecated: false
  field :user_agent, 3, type: :string, json_name: "userAgent", deprecated: false
  field :user_ip_address, 4, type: :string, json_name: "userIpAddress", deprecated: false
  field :expected_action, 5, type: :string, json_name: "expectedAction", deprecated: false
  field :hashed_account_id, 6, type: :bytes, json_name: "hashedAccountId", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          valid: boolean,
          invalid_reason:
            Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.InvalidReason.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          hostname: String.t(),
          action: String.t()
        }

  defstruct valid: false,
            invalid_reason: :INVALID_REASON_UNSPECIFIED,
            create_time: nil,
            hostname: "",
            action: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: [
            Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment.AccountDefenderLabel.t()
          ]
        }

  defstruct labels: []

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AccountDefenderAssessment.AccountDefenderLabel,
    enum: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.recaptchaenterprise.v1beta1.RecaptchaEnterpriseServiceV1Beta1"

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
