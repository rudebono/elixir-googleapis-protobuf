defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :verification_info, 0

  field :id_token, 1, type: :string, json_name: "idToken", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :phone_verification_info, 4,
    type: Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneRequestInfo,
    json_name: "phoneVerificationInfo",
    oneof: 0

  field :tenant_id, 5, type: :string, json_name: "tenantId"
end

defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaEnrollmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :auxiliary_auth_info, 0

  field :id_token, 1, type: :string, json_name: "idToken"
  field :refresh_token, 2, type: :string, json_name: "refreshToken"

  field :phone_auth_info, 3,
    type: Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneResponseInfo,
    json_name: "phoneAuthInfo",
    oneof: 0
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :enrollment_info, 0

  field :id_token, 1, type: :string, json_name: "idToken", deprecated: false

  field :phone_enrollment_info, 3,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneRequestInfo,
    json_name: "phoneEnrollmentInfo",
    oneof: 0

  field :tenant_id, 4, type: :string, json_name: "tenantId"
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaEnrollmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :enrollment_response, 0

  field :phone_session_info, 1,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo,
    json_name: "phoneSessionInfo",
    oneof: 0
end

defmodule Google.Cloud.Identitytoolkit.V2.WithdrawMfaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id_token, 1, type: :string, json_name: "idToken", deprecated: false
  field :mfa_enrollment_id, 2, type: :string, json_name: "mfaEnrollmentId", deprecated: false
  field :tenant_id, 3, type: :string, json_name: "tenantId"
end

defmodule Google.Cloud.Identitytoolkit.V2.WithdrawMfaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id_token, 1, type: :string, json_name: "idToken"
  field :refresh_token, 2, type: :string, json_name: "refreshToken"
end

defmodule Google.Cloud.Identitytoolkit.V2.AccountManagementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.identitytoolkit.v2.AccountManagementService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :FinalizeMfaEnrollment,
      Google.Cloud.Identitytoolkit.V2.FinalizeMfaEnrollmentRequest,
      Google.Cloud.Identitytoolkit.V2.FinalizeMfaEnrollmentResponse

  rpc :StartMfaEnrollment,
      Google.Cloud.Identitytoolkit.V2.StartMfaEnrollmentRequest,
      Google.Cloud.Identitytoolkit.V2.StartMfaEnrollmentResponse

  rpc :WithdrawMfa,
      Google.Cloud.Identitytoolkit.V2.WithdrawMfaRequest,
      Google.Cloud.Identitytoolkit.V2.WithdrawMfaResponse
end

defmodule Google.Cloud.Identitytoolkit.V2.AccountManagementService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Identitytoolkit.V2.AccountManagementService.Service
end