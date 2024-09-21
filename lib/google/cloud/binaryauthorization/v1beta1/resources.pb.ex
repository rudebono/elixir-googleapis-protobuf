defmodule Google.Cloud.Binaryauthorization.V1beta1.Policy.GlobalPolicyEvaluationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED, 0
  field :ENABLE, 1
  field :DISABLE, 2
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule.EvaluationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EVALUATION_MODE_UNSPECIFIED, 0
  field :ALWAYS_ALLOW, 1
  field :REQUIRE_ATTESTATION, 2
  field :ALWAYS_DENY, 3
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule.EnforcementMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENFORCEMENT_MODE_UNSPECIFIED, 0
  field :ENFORCED_BLOCK_AND_AUDIT_LOG, 1
  field :DRYRUN_AUDIT_LOG_ONLY, 2
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.PkixPublicKey.SignatureAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

defmodule Google.Cloud.Binaryauthorization.V1beta1.Policy.ClusterAdmissionRulesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.Policy.KubernetesNamespaceAdmissionRulesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.Policy.KubernetesServiceAccountAdmissionRulesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.Policy.IstioServiceIdentityAdmissionRulesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.Policy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 6, type: :string, deprecated: false

  field :global_policy_evaluation_mode, 7,
    type: Google.Cloud.Binaryauthorization.V1beta1.Policy.GlobalPolicyEvaluationMode,
    json_name: "globalPolicyEvaluationMode",
    enum: true,
    deprecated: false

  field :admission_whitelist_patterns, 2,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionWhitelistPattern,
    json_name: "admissionWhitelistPatterns",
    deprecated: false

  field :cluster_admission_rules, 3,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1beta1.Policy.ClusterAdmissionRulesEntry,
    json_name: "clusterAdmissionRules",
    map: true,
    deprecated: false

  field :kubernetes_namespace_admission_rules, 10,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1beta1.Policy.KubernetesNamespaceAdmissionRulesEntry,
    json_name: "kubernetesNamespaceAdmissionRules",
    map: true,
    deprecated: false

  field :kubernetes_service_account_admission_rules, 8,
    repeated: true,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.Policy.KubernetesServiceAccountAdmissionRulesEntry,
    json_name: "kubernetesServiceAccountAdmissionRules",
    map: true,
    deprecated: false

  field :istio_service_identity_admission_rules, 9,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1beta1.Policy.IstioServiceIdentityAdmissionRulesEntry,
    json_name: "istioServiceIdentityAdmissionRules",
    map: true,
    deprecated: false

  field :default_admission_rule, 4,
    type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule,
    json_name: "defaultAdmissionRule",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.AdmissionWhitelistPattern do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name_pattern, 1, type: :string, json_name: "namePattern"
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :evaluation_mode, 1,
    type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule.EvaluationMode,
    json_name: "evaluationMode",
    enum: true,
    deprecated: false

  field :require_attestations_by, 2,
    repeated: true,
    type: :string,
    json_name: "requireAttestationsBy",
    deprecated: false

  field :enforcement_mode, 3,
    type: Google.Cloud.Binaryauthorization.V1beta1.AdmissionRule.EnforcementMode,
    json_name: "enforcementMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.Attestor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :attestor_type, 0

  field :name, 1, type: :string, deprecated: false
  field :description, 6, type: :string, deprecated: false

  field :user_owned_drydock_note, 3,
    type: Google.Cloud.Binaryauthorization.V1beta1.UserOwnedDrydockNote,
    json_name: "userOwnedDrydockNote",
    oneof: 0

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.UserOwnedDrydockNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :note_reference, 1, type: :string, json_name: "noteReference", deprecated: false

  field :public_keys, 2,
    repeated: true,
    type: Google.Cloud.Binaryauthorization.V1beta1.AttestorPublicKey,
    json_name: "publicKeys",
    deprecated: false

  field :delegation_service_account_email, 3,
    type: :string,
    json_name: "delegationServiceAccountEmail",
    deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.PkixPublicKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :public_key_pem, 1, type: :string, json_name: "publicKeyPem"

  field :signature_algorithm, 2,
    type: Google.Cloud.Binaryauthorization.V1beta1.PkixPublicKey.SignatureAlgorithm,
    json_name: "signatureAlgorithm",
    enum: true
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.AttestorPublicKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :public_key, 0

  field :comment, 1, type: :string, deprecated: false
  field :id, 2, type: :string

  field :ascii_armored_pgp_public_key, 3,
    type: :string,
    json_name: "asciiArmoredPgpPublicKey",
    oneof: 0

  field :pkix_public_key, 5,
    type: Google.Cloud.Binaryauthorization.V1beta1.PkixPublicKey,
    json_name: "pkixPublicKey",
    oneof: 0
end