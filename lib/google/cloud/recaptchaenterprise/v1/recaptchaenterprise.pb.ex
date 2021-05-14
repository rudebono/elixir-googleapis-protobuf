defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Annotation do
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

defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason do
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

defmodule Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INVALID_REASON_UNSPECIFIED
          | :UNKNOWN_INVALID_REASON
          | :MALFORMED
          | :EXPIRED
          | :DUPE
          | :MISSING

  field :INVALID_REASON_UNSPECIFIED, 0

  field :UNKNOWN_INVALID_REASON, 1

  field :MALFORMED, 2

  field :EXPIRED, 3

  field :DUPE, 4

  field :MISSING, 5
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INTEGRATION_TYPE_UNSPECIFIED | :SCORE | :CHECKBOX | :INVISIBLE

  field :INTEGRATION_TYPE_UNSPECIFIED, 0

  field :SCORE, 1

  field :CHECKBOX, 2

  field :INVISIBLE, 3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED | :USABILITY | :BALANCE | :SECURITY

  field :CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, 0

  field :USABILITY, 1

  field :BALANCE, 2

  field :SECURITY, 3
end

defmodule Google.Cloud.Recaptchaenterprise.V1.CreateAssessmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          assessment: Google.Cloud.Recaptchaenterprise.V1.Assessment.t() | nil
        }

  defstruct [:parent, :assessment]

  field :parent, 1, type: :string
  field :assessment, 2, type: Google.Cloud.Recaptchaenterprise.V1.Assessment
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          annotation: Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Annotation.t()
        }

  defstruct [:name, :annotation]

  field :name, 1, type: :string

  field :annotation, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentRequest.Annotation,
    enum: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AnnotateAssessmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Assessment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          event: Google.Cloud.Recaptchaenterprise.V1.Event.t() | nil,
          risk_analysis: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.t() | nil,
          token_properties: Google.Cloud.Recaptchaenterprise.V1.TokenProperties.t() | nil
        }

  defstruct [:name, :event, :risk_analysis, :token_properties]

  field :name, 1, type: :string
  field :event, 2, type: Google.Cloud.Recaptchaenterprise.V1.Event
  field :risk_analysis, 3, type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis
  field :token_properties, 4, type: Google.Cloud.Recaptchaenterprise.V1.TokenProperties
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          token: String.t(),
          site_key: String.t(),
          user_agent: String.t(),
          user_ip_address: String.t(),
          expected_action: String.t()
        }

  defstruct [:token, :site_key, :user_agent, :user_ip_address, :expected_action]

  field :token, 1, type: :string
  field :site_key, 2, type: :string
  field :user_agent, 3, type: :string
  field :user_ip_address, 4, type: :string
  field :expected_action, 5, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          reasons: [[Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason.t()]]
        }

  defstruct [:score, :reasons]

  field :score, 1, type: :float

  field :reasons, 2,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.RiskAnalysis.ClassificationReason,
    enum: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.TokenProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          valid: boolean,
          invalid_reason: Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          hostname: String.t(),
          action: String.t()
        }

  defstruct [:valid, :invalid_reason, :create_time, :hostname, :action]

  field :valid, 1, type: :bool

  field :invalid_reason, 2,
    type: Google.Cloud.Recaptchaenterprise.V1.TokenProperties.InvalidReason,
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :hostname, 4, type: :string
  field :action, 5, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.CreateKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          key: Google.Cloud.Recaptchaenterprise.V1.Key.t() | nil
        }

  defstruct [:parent, :key]

  field :parent, 1, type: :string
  field :key, 2, type: Google.Cloud.Recaptchaenterprise.V1.Key
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.ListKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Cloud.Recaptchaenterprise.V1.Key.t()],
          next_page_token: String.t()
        }

  defstruct [:keys, :next_page_token]

  field :keys, 1, repeated: true, type: Google.Cloud.Recaptchaenterprise.V1.Key
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.GetKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.UpdateKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Cloud.Recaptchaenterprise.V1.Key.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:key, :update_mask]

  field :key, 1, type: Google.Cloud.Recaptchaenterprise.V1.Key
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Recaptchaenterprise.V1.DeleteKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Key.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.Key do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          platform_settings: {atom, any},
          name: String.t(),
          display_name: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:platform_settings, :name, :display_name, :labels, :create_time]

  oneof :platform_settings, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :web_settings, 3, type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings, oneof: 0

  field :android_settings, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.AndroidKeySettings,
    oneof: 0

  field :ios_settings, 5, type: Google.Cloud.Recaptchaenterprise.V1.IOSKeySettings, oneof: 0

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Recaptchaenterprise.V1.Key.LabelsEntry,
    map: true

  field :create_time, 7, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Recaptchaenterprise.V1.WebKeySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allow_all_domains: boolean,
          allowed_domains: [String.t()],
          allow_amp_traffic: boolean,
          integration_type:
            Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType.t(),
          challenge_security_preference:
            Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference.t()
        }

  defstruct [
    :allow_all_domains,
    :allowed_domains,
    :allow_amp_traffic,
    :integration_type,
    :challenge_security_preference
  ]

  field :allow_all_domains, 3, type: :bool
  field :allowed_domains, 1, repeated: true, type: :string
  field :allow_amp_traffic, 2, type: :bool

  field :integration_type, 4,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.IntegrationType,
    enum: true

  field :challenge_security_preference, 5,
    type: Google.Cloud.Recaptchaenterprise.V1.WebKeySettings.ChallengeSecurityPreference,
    enum: true
end

defmodule Google.Cloud.Recaptchaenterprise.V1.AndroidKeySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_package_names: [String.t()]
        }

  defstruct [:allowed_package_names]

  field :allowed_package_names, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Recaptchaenterprise.V1.IOSKeySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_bundle_ids: [String.t()]
        }

  defstruct [:allowed_bundle_ids]

  field :allowed_bundle_ids, 1, repeated: true, type: :string
end
