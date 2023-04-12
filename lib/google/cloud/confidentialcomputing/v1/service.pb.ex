defmodule Google.Cloud.Confidentialcomputing.V1.Challenge do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :challenge, 2, type: Google.Cloud.Confidentialcomputing.V1.Challenge, deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.VerifyAttestationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :challenge, 1, type: :string, deprecated: false

  field :gcp_credentials, 2,
    type: Google.Cloud.Confidentialcomputing.V1.GcpCredentials,
    json_name: "gcpCredentials",
    deprecated: false

  field :tpm_attestation, 3,
    type: Google.Cloud.Confidentialcomputing.V1.TpmAttestation,
    json_name: "tpmAttestation",
    deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.VerifyAttestationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :oidc_claims_token, 2, type: :string, json_name: "oidcClaimsToken", deprecated: false
end

defmodule Google.Cloud.Confidentialcomputing.V1.GcpCredentials do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_account_id_tokens, 2,
    repeated: true,
    type: :string,
    json_name: "serviceAccountIdTokens"
end

defmodule Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote.PcrValuesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :bytes
end

defmodule Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :quotes, 1,
    repeated: true,
    type: Google.Cloud.Confidentialcomputing.V1.TpmAttestation.Quote

  field :tcg_event_log, 2, type: :bytes, json_name: "tcgEventLog"
  field :canonical_event_log, 3, type: :bytes, json_name: "canonicalEventLog"
  field :ak_cert, 4, type: :bytes, json_name: "akCert"
  field :cert_chain, 5, repeated: true, type: :bytes, json_name: "certChain"
end

defmodule Google.Cloud.Confidentialcomputing.V1.ConfidentialComputing.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.confidentialcomputing.v1.ConfidentialComputing",
    protoc_gen_elixir_version: "0.11.0"

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