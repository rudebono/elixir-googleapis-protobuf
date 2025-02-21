defmodule Google.Cloud.Identitytoolkit.V2.AutoRetrievalInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :app_signature_hash, 1, type: :string, json_name: "appSignatureHash"
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaPhoneRequestInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
  field :ios_receipt, 2, type: :string, json_name: "iosReceipt"
  field :ios_secret, 3, type: :string, json_name: "iosSecret"
  field :recaptcha_token, 4, type: :string, json_name: "recaptchaToken"

  field :auto_retrieval_info, 5,
    type: Google.Cloud.Identitytoolkit.V2.AutoRetrievalInfo,
    json_name: "autoRetrievalInfo"

  field :safety_net_token, 6, type: :string, json_name: "safetyNetToken"
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_info, 1, type: :string, json_name: "sessionInfo"
end

defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneRequestInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_info, 1, type: :string, json_name: "sessionInfo"
  field :code, 2, type: :string
  field :android_verification_proof, 3, type: :string, json_name: "androidVerificationProof"
  field :phone_number, 4, type: :string, json_name: "phoneNumber"
end

defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneResponseInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :android_verification_proof, 1, type: :string, json_name: "androidVerificationProof"

  field :android_verification_proof_expire_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "androidVerificationProofExpireTime"

  field :phone_number, 3, type: :string, json_name: "phoneNumber"
end
