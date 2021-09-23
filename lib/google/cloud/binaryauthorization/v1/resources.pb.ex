defmodule Google.Cloud.Binaryauthorization.V1.Policy.GlobalPolicyEvaluationMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED | :ENABLE | :DISABLE

  field :GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED, 0

  field :ENABLE, 1

  field :DISABLE, 2
end

defmodule Google.Cloud.Binaryauthorization.V1.AdmissionRule.EvaluationMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EVALUATION_MODE_UNSPECIFIED
          | :ALWAYS_ALLOW
          | :REQUIRE_ATTESTATION
          | :ALWAYS_DENY

  field :EVALUATION_MODE_UNSPECIFIED, 0

  field :ALWAYS_ALLOW, 1

  field :REQUIRE_ATTESTATION, 2

  field :ALWAYS_DENY, 3
end

defmodule Google.Cloud.Binaryauthorization.V1.AdmissionRule.EnforcementMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENFORCEMENT_MODE_UNSPECIFIED
          | :ENFORCED_BLOCK_AND_AUDIT_LOG
          | :DRYRUN_AUDIT_LOG_ONLY

  field :ENFORCEMENT_MODE_UNSPECIFIED, 0

  field :ENFORCED_BLOCK_AND_AUDIT_LOG, 1

  field :DRYRUN_AUDIT_LOG_ONLY, 2
end

defmodule Google.Cloud.Binaryauthorization.V1.PkixPublicKey.SignatureAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SIGNATURE_ALGORITHM_UNSPECIFIED
          | :RSA_PSS_2048_SHA256
          | :RSA_PSS_3072_SHA256
          | :RSA_PSS_4096_SHA256
          | :RSA_PSS_4096_SHA512
          | :RSA_SIGN_PKCS1_2048_SHA256
          | :RSA_SIGN_PKCS1_3072_SHA256
          | :RSA_SIGN_PKCS1_4096_SHA256
          | :RSA_SIGN_PKCS1_4096_SHA512
          | :ECDSA_P256_SHA256
          | :EC_SIGN_P256_SHA256
          | :ECDSA_P384_SHA384
          | :EC_SIGN_P384_SHA384
          | :ECDSA_P521_SHA512
          | :EC_SIGN_P521_SHA512

  field :SIGNATURE_ALGORITHM_UNSPECIFIED, 0

  field :RSA_PSS_2048_SHA256, 1

  field :RSA_PSS_3072_SHA256, 2

  field :RSA_PSS_4096_SHA256, 3

  field :RSA_PSS_4096_SHA512, 4

  field :RSA_SIGN_PKCS1_2048_SHA256, 5

  field :RSA_SIGN_PKCS1_3072_SHA256, 6

  field :RSA_SIGN_PKCS1_4096_SHA256, 7

  field :RSA_SIGN_PKCS1_4096_SHA512, 8

  field :ECDSA_P256_SHA256, 9

  field :EC_SIGN_P256_SHA256, 9

  field :ECDSA_P384_SHA384, 10

  field :EC_SIGN_P384_SHA384, 10

  field :ECDSA_P521_SHA512, 11

  field :EC_SIGN_P521_SHA512, 11
end

defmodule Google.Cloud.Binaryauthorization.V1.Policy.ClusterAdmissionRulesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1.Policy.KubernetesNamespaceAdmissionRulesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1.Policy.KubernetesServiceAccountAdmissionRulesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1.Policy.IstioServiceIdentityAdmissionRulesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1.Policy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          global_policy_evaluation_mode:
            Google.Cloud.Binaryauthorization.V1.Policy.GlobalPolicyEvaluationMode.t(),
          admission_whitelist_patterns: [
            Google.Cloud.Binaryauthorization.V1.AdmissionWhitelistPattern.t()
          ],
          cluster_admission_rules: %{
            String.t() => Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
          },
          kubernetes_namespace_admission_rules: %{
            String.t() => Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
          },
          kubernetes_service_account_admission_rules: %{
            String.t() => Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
          },
          istio_service_identity_admission_rules: %{
            String.t() => Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil
          },
          default_admission_rule: Google.Cloud.Binaryauthorization.V1.AdmissionRule.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :description,
    :global_policy_evaluation_mode,
    :admission_whitelist_patterns,
    :cluster_admission_rules,
    :kubernetes_namespace_admission_rules,
    :kubernetes_service_account_admission_rules,
    :istio_service_identity_admission_rules,
    :default_admission_rule,
    :update_time
  ]

  field :name, 1, type: :string
  field :description, 6, type: :string

  field :global_policy_evaluation_mode, 7,
    type: Google.Cloud.Binaryauthorization.V1.Policy.GlobalPolicyEvaluationMode,
    enum: true

  field :admission_whitelist_patterns, 2,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1.AdmissionWhitelistPattern

  field :cluster_admission_rules, 3,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1.Policy.ClusterAdmissionRulesEntry,
    map: true

  field :kubernetes_namespace_admission_rules, 10,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1.Policy.KubernetesNamespaceAdmissionRulesEntry,
    map: true

  field :kubernetes_service_account_admission_rules, 8,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1.Policy.KubernetesServiceAccountAdmissionRulesEntry,
    map: true

  field :istio_service_identity_admission_rules, 9,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1.Policy.IstioServiceIdentityAdmissionRulesEntry,
    map: true

  field :default_admission_rule, 4, type: Google.Cloud.Binaryauthorization.V1.AdmissionRule
  field :update_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Binaryauthorization.V1.AdmissionWhitelistPattern do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name_pattern: String.t()
        }

  defstruct [:name_pattern]

  field :name_pattern, 1, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1.AdmissionRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluation_mode: Google.Cloud.Binaryauthorization.V1.AdmissionRule.EvaluationMode.t(),
          require_attestations_by: [String.t()],
          enforcement_mode: Google.Cloud.Binaryauthorization.V1.AdmissionRule.EnforcementMode.t()
        }

  defstruct [:evaluation_mode, :require_attestations_by, :enforcement_mode]

  field :evaluation_mode, 1,
    type: Google.Cloud.Binaryauthorization.V1.AdmissionRule.EvaluationMode,
    enum: true

  field :require_attestations_by, 2, repeated: true, type: :string

  field :enforcement_mode, 3,
    type: Google.Cloud.Binaryauthorization.V1.AdmissionRule.EnforcementMode,
    enum: true
end

defmodule Google.Cloud.Binaryauthorization.V1.Attestor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestor_type: {atom, any},
          name: String.t(),
          description: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:attestor_type, :name, :description, :update_time]

  oneof :attestor_type, 0
  field :name, 1, type: :string
  field :description, 6, type: :string

  field :user_owned_grafeas_note, 3,
    type: Google.Cloud.Binaryauthorization.V1.UserOwnedGrafeasNote,
    oneof: 0

  field :update_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Binaryauthorization.V1.UserOwnedGrafeasNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          note_reference: String.t(),
          public_keys: [Google.Cloud.Binaryauthorization.V1.AttestorPublicKey.t()],
          delegation_service_account_email: String.t()
        }

  defstruct [:note_reference, :public_keys, :delegation_service_account_email]

  field :note_reference, 1, type: :string

  field :public_keys, 2,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1.AttestorPublicKey

  field :delegation_service_account_email, 3, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1.PkixPublicKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key_pem: String.t(),
          signature_algorithm:
            Google.Cloud.Binaryauthorization.V1.PkixPublicKey.SignatureAlgorithm.t()
        }

  defstruct [:public_key_pem, :signature_algorithm]

  field :public_key_pem, 1, type: :string

  field :signature_algorithm, 2,
    type: Google.Cloud.Binaryauthorization.V1.PkixPublicKey.SignatureAlgorithm,
    enum: true
end

defmodule Google.Cloud.Binaryauthorization.V1.AttestorPublicKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: {atom, any},
          comment: String.t(),
          id: String.t()
        }

  defstruct [:public_key, :comment, :id]

  oneof :public_key, 0
  field :comment, 1, type: :string
  field :id, 2, type: :string
  field :ascii_armored_pgp_public_key, 3, type: :string, oneof: 0
  field :pkix_public_key, 5, type: Google.Cloud.Binaryauthorization.V1.PkixPublicKey, oneof: 0
end
