defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :verification_info, 0

  field :mfa_pending_credential, 2,
    type: :string,
    json_name: "mfaPendingCredential",
    deprecated: false

  field :phone_verification_info, 3,
    type: Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneRequestInfo,
    json_name: "phoneVerificationInfo",
    oneof: 0

  field :tenant_id, 4, type: :string, json_name: "tenantId"
end

defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :auxiliary_auth_info, 0

  field :id_token, 1, type: :string, json_name: "idToken"
  field :refresh_token, 2, type: :string, json_name: "refreshToken"

  field :phone_auth_info, 3,
    type: Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneResponseInfo,
    json_name: "phoneAuthInfo",
    oneof: 0
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaSignInRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :sign_in_info, 0

  field :mfa_pending_credential, 2,
    type: :string,
    json_name: "mfaPendingCredential",
    deprecated: false

  field :mfa_enrollment_id, 3, type: :string, json_name: "mfaEnrollmentId", deprecated: false

  field :phone_sign_in_info, 4,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneRequestInfo,
    json_name: "phoneSignInInfo",
    oneof: 0

  field :tenant_id, 5, type: :string, json_name: "tenantId"
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaSignInResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :response_info, 0

  field :phone_response_info, 1,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo,
    json_name: "phoneResponseInfo",
    oneof: 0
end

defmodule Google.Cloud.Identitytoolkit.V2.AuthenticationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.identitytoolkit.v2.AuthenticationService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :FinalizeMfaSignIn,
      Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInRequest,
      Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInResponse

  rpc :StartMfaSignIn,
      Google.Cloud.Identitytoolkit.V2.StartMfaSignInRequest,
      Google.Cloud.Identitytoolkit.V2.StartMfaSignInResponse
end

defmodule Google.Cloud.Identitytoolkit.V2.AuthenticationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Identitytoolkit.V2.AuthenticationService.Service
end
