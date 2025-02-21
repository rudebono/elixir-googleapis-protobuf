defmodule Google.Cloud.Confidentialcomputing.V1.SigningAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SIGNING_ALGORITHM_UNSPECIFIED, 0
  field :RSASSA_PSS_SHA256, 1
  field :RSASSA_PKCS1V15_SHA256, 2
  field :ECDSA_P256_SHA256, 3
end

defmodule Google.Cloud.Confidentialcomputing.V1.TokenType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TOKEN_TYPE_UNSPECIFIED, 0
  field :TOKEN_TYPE_OIDC, 1
  field :TOKEN_TYPE_PKI, 2
  field :TOKEN_TYPE_LIMITED_AWS, 3
  field :TOKEN_TYPE_AWS_PRINCIPALTAGS, 4
end

defmodule Google.Cloud.Confidentialcomputing.V1.Challenge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :expire_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :used, 4, type: :bool, deprecated: false
  field :tpm_nonce, 6, type: :string, json_name: "tpmNonce", deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.CreateChallengeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :challenge, 2, type: Google.Cloud.Confidentialcomputing.V1.Challenge, deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.VerifyAttestationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :tee_attestation, 0

  field :td_ccel, 6,
    type: Google.Cloud.Confidentialcomputing.V1.TdxCcelAttestation,
    json_name: "tdCcel",
    oneof: 0,
    deprecated: false

  field :sev_snp_attestation, 7,
    type: Google.Cloud.Confidentialcomputing.V1.SevSnpAttestation,
    json_name: "sevSnpAttestation",
    oneof: 0,
    deprecated: false

  field :challenge, 1, type: :string, deprecated: false

  field :gcp_credentials, 2,
    type: Google.Cloud.Confidentialcomputing.V1.GcpCredentials,
    json_name: "gcpCredentials",
    deprecated: false

  field :tpm_attestation, 3,
    type: Google.Cloud.Confidentialcomputing.V1.TpmAttestation,
    json_name: "tpmAttestation",
    deprecated: false

  field :confidential_space_info, 4,
    type: Google.Cloud.Confidentialcomputing.V1.ConfidentialSpaceInfo,
    json_name: "confidentialSpaceInfo",
    deprecated: false

  field :token_options, 5,
    type: Google.Cloud.Confidentialcomputing.V1.TokenOptions,
    json_name: "tokenOptions",
    deprecated: false

  field :attester, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.TdxCcelAttestation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ccel_acpi_table, 1, type: :bytes, json_name: "ccelAcpiTable", deprecated: false
  field :ccel_data, 2, type: :bytes, json_name: "ccelData", deprecated: false
  field :canonical_event_log, 3, type: :bytes, json_name: "canonicalEventLog", deprecated: false
  field :td_quote, 4, type: :bytes, json_name: "tdQuote", deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.SevSnpAttestation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report, 1, type: :bytes, deprecated: false
  field :aux_blob, 2, type: :bytes, json_name: "auxBlob", deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.VerifyAttestationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :oidc_claims_token, 2, type: :string, json_name: "oidcClaimsToken", deprecated: false

  field :partial_errors, 3,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialErrors",
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.GcpCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_account_id_tokens, 2,
    repeated: true,
    type: :string,
    json_name: "serviceAccountIdTokens"
end

defmodule Google.Cloud.Confidentialcomputing.V1.TokenOptions.AwsPrincipalTagsOptions.AllowedPrincipalTags.ContainerImageSignatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_ids, 1, repeated: true, type: :string, json_name: "keyIds", deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.TokenOptions.AwsPrincipalTagsOptions.AllowedPrincipalTags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :container_image_signatures, 1,
    type:
      Google.Cloud.Confidentialcomputing.V1.TokenOptions.AwsPrincipalTagsOptions.AllowedPrincipalTags.ContainerImageSignatures,
    json_name: "containerImageSignatures",
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.TokenOptions.AwsPrincipalTagsOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allowed_principal_tags, 1,
    type:
      Google.Cloud.Confidentialcomputing.V1.TokenOptions.AwsPrincipalTagsOptions.AllowedPrincipalTags,
    json_name: "allowedPrincipalTags",
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.TokenOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :token_type_options, 0

  field :aws_principal_tags_options, 4,
    type: Google.Cloud.Confidentialcomputing.V1.TokenOptions.AwsPrincipalTagsOptions,
    json_name: "awsPrincipalTagsOptions",
    oneof: 0,
    deprecated: false

  field :audience, 1, type: :string, deprecated: false
  field :nonce, 2, repeated: true, type: :string, deprecated: false

  field :token_type, 3,
    type: Google.Cloud.Confidentialcomputing.V1.TokenType,
    json_name: "tokenType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote.PcrValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :bytes
end

defmodule Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hash_algo, 1, type: :int32, json_name: "hashAlgo"

  field :pcr_values, 2,
    repeated: true,
    type: Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote.PcrValuesEntry,
    json_name: "pcrValues",
    map: true

  field :raw_quote, 3, type: :bytes, json_name: "rawQuote"
  field :raw_signature, 4, type: :bytes, json_name: "rawSignature"
end

defmodule Google.Cloud.Confidentialcomputing.V1.TpmAttestation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :quotes, 1,
    repeated: true,
    type: Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote

  field :tcg_event_log, 2, type: :bytes, json_name: "tcgEventLog"
  field :canonical_event_log, 3, type: :bytes, json_name: "canonicalEventLog"
  field :ak_cert, 4, type: :bytes, json_name: "akCert"
  field :cert_chain, 5, repeated: true, type: :bytes, json_name: "certChain"
end

defmodule Google.Cloud.Confidentialcomputing.V1.ConfidentialSpaceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :signed_entities, 1,
    repeated: true,
    type: Google.Cloud.Confidentialcomputing.V1.SignedEntity,
    json_name: "signedEntities",
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.SignedEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :container_image_signatures, 1,
    repeated: true,
    type: Google.Cloud.Confidentialcomputing.V1.ContainerImageSignature,
    json_name: "containerImageSignatures",
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.ContainerImageSignature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :payload, 1, type: :bytes, deprecated: false
  field :signature, 2, type: :bytes, deprecated: false
  field :public_key, 3, type: :bytes, json_name: "publicKey", deprecated: false

  field :sig_alg, 4,
    type: Google.Cloud.Confidentialcomputing.V1.SigningAlgorithm,
    json_name: "sigAlg",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.ConfidentialComputing.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.confidentialcomputing.v1.ConfidentialComputing",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateChallenge,
      Google.Cloud.Confidentialcomputing.V1.CreateChallengeRequest,
      Google.Cloud.Confidentialcomputing.V1.Challenge

  rpc :VerifyAttestation,
      Google.Cloud.Confidentialcomputing.V1.VerifyAttestationRequest,
      Google.Cloud.Confidentialcomputing.V1.VerifyAttestationResponse
end

defmodule Google.Cloud.Confidentialcomputing.V1.ConfidentialComputing.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Confidentialcomputing.V1.ConfidentialComputing.Service
end
