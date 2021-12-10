defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ANNOTATION_UNSPECIFIED | :LEGITIMATE | :FRAUDULENT

  field :ANNOTATION_UNSPECIFIED, 0
  field :LEGITIMATE, 1
  field :FRAUDULENT, 2
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

  field :INVALID_REASON_UNSPECIFIED, 0
  field :UNKNOWN_INVALID_REASON, 1
  field :MALFORMED, 2
  field :EXPIRED, 3
  field :DUPE, 4
  field :SITE_MISMATCH, 5
  field :MISSING, 6
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.IntegrationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INTEGRATION_TYPE_UNSPECIFIED
          | :SCORE_ONLY
          | :CHECKBOX_CHALLENGE
          | :INVISIBLE_CHALLENGE

  field :INTEGRATION_TYPE_UNSPECIFIED, 0
  field :SCORE_ONLY, 1
  field :CHECKBOX_CHALLENGE, 2
  field :INVISIBLE_CHALLENGE, 3
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.ChallengeSecurityPreference do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED
          | :USABILITY
          | :BALANCED
          | :SECURITY

  field :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, 0
  field :USABILITY, 1
  field :BALANCED, 2
  field :SECURITY, 3
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
            Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation.t()
        }

  defstruct name: "",
            annotation: :ANNOTATION_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :annotation, 2,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentRequest.Annotation,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AnnotateAssessmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Assessment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          event: Google.Cloud.Recaptchaenterprise.V1beta1.Event.t() | nil,
          score: float | :infinity | :negative_infinity | :nan,
          token_properties: Google.Cloud.Recaptchaenterprise.V1beta1.TokenProperties.t() | nil,
          reasons: [Google.Cloud.Recaptchaenterprise.V1beta1.Assessment.ClassificationReason.t()]
        }

  defstruct name: "",
            event: nil,
            score: 0.0,
            token_properties: nil,
            reasons: []

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
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          token: String.t(),
          site_key: String.t(),
          user_agent: String.t(),
          user_ip_address: String.t(),
          expected_action: String.t()
        }

  defstruct token: "",
            site_key: "",
            user_agent: "",
            user_ip_address: "",
            expected_action: ""

  field :token, 1, type: :string, deprecated: false
  field :site_key, 2, type: :string, json_name: "siteKey", deprecated: false
  field :user_agent, 3, type: :string, json_name: "userAgent", deprecated: false
  field :user_ip_address, 4, type: :string, json_name: "userIpAddress", deprecated: false
  field :expected_action, 5, type: :string, json_name: "expectedAction", deprecated: false
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
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.CreateKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          key: Google.Cloud.Recaptchaenterprise.V1beta1.Key.t() | nil
        }

  defstruct parent: "",
            key: nil

  field :parent, 1, type: :string, deprecated: false
  field :key, 2, type: Google.Cloud.Recaptchaenterprise.V1beta1.Key, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.ListKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.ListKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Cloud.Recaptchaenterprise.V1beta1.Key.t()],
          next_page_token: String.t()
        }

  defstruct keys: [],
            next_page_token: ""

  field :keys, 1, repeated: true, type: Google.Cloud.Recaptchaenterprise.V1beta1.Key
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.GetKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.UpdateKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Cloud.Recaptchaenterprise.V1beta1.Key.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct key: nil,
            update_mask: nil

  field :key, 1, type: Google.Cloud.Recaptchaenterprise.V1beta1.Key, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.DeleteKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.Key do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          platform_settings:
            {:web_settings, Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.t() | nil}
            | {:android_settings,
               Google.Cloud.Recaptchaenterprise.V1beta1.AndroidKeySettings.t() | nil}
            | {:ios_settings, Google.Cloud.Recaptchaenterprise.V1beta1.IOSKeySettings.t() | nil},
          name: String.t(),
          display_name: String.t()
        }

  defstruct platform_settings: nil,
            name: "",
            display_name: ""

  oneof :platform_settings, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :web_settings, 3,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings,
    json_name: "webSettings",
    oneof: 0

  field :android_settings, 4,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.AndroidKeySettings,
    json_name: "androidSettings",
    oneof: 0

  field :ios_settings, 5,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.IOSKeySettings,
    json_name: "iosSettings",
    oneof: 0
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enforce_allowed_domains: boolean,
          allowed_domains: [String.t()],
          allow_amp_traffic: boolean,
          integration_type:
            Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.IntegrationType.t(),
          challenge_security_preference:
            Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.ChallengeSecurityPreference.t()
        }

  defstruct enforce_allowed_domains: false,
            allowed_domains: [],
            allow_amp_traffic: false,
            integration_type: :INTEGRATION_TYPE_UNSPECIFIED,
            challenge_security_preference: :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED

  field :enforce_allowed_domains, 3, type: :bool, json_name: "enforceAllowedDomains"
  field :allowed_domains, 1, repeated: true, type: :string, json_name: "allowedDomains"
  field :allow_amp_traffic, 2, type: :bool, json_name: "allowAmpTraffic"

  field :integration_type, 4,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.IntegrationType,
    json_name: "integrationType",
    enum: true,
    deprecated: false

  field :challenge_security_preference, 5,
    type: Google.Cloud.Recaptchaenterprise.V1beta1.WebKeySettings.ChallengeSecurityPreference,
    json_name: "challengeSecurityPreference",
    enum: true
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.AndroidKeySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_package_names: [String.t()]
        }

  defstruct allowed_package_names: []

  field :allowed_package_names, 1, repeated: true, type: :string, json_name: "allowedPackageNames"
end
defmodule Google.Cloud.Recaptchaenterprise.V1beta1.IOSKeySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_bundle_ids: [String.t()]
        }

  defstruct allowed_bundle_ids: []

  field :allowed_bundle_ids, 1, repeated: true, type: :string, json_name: "allowedBundleIds"
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

  rpc :CreateKey,
      Google.Cloud.Recaptchaenterprise.V1beta1.CreateKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1beta1.Key

  rpc :ListKeys,
      Google.Cloud.Recaptchaenterprise.V1beta1.ListKeysRequest,
      Google.Cloud.Recaptchaenterprise.V1beta1.ListKeysResponse

  rpc :GetKey,
      Google.Cloud.Recaptchaenterprise.V1beta1.GetKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1beta1.Key

  rpc :UpdateKey,
      Google.Cloud.Recaptchaenterprise.V1beta1.UpdateKeyRequest,
      Google.Cloud.Recaptchaenterprise.V1beta1.Key

  rpc :DeleteKey, Google.Cloud.Recaptchaenterprise.V1beta1.DeleteKeyRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Recaptchaenterprise.V1beta1.RecaptchaEnterpriseServiceV1Beta1.Service
end
