defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          verification_info:
            {:phone_verification_info,
             Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneRequestInfo.t() | nil},
          mfa_pending_credential: String.t(),
          tenant_id: String.t()
        }

  defstruct verification_info: nil,
            mfa_pending_credential: "",
            tenant_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auxiliary_auth_info:
            {:phone_auth_info,
             Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneResponseInfo.t() | nil},
          id_token: String.t(),
          refresh_token: String.t()
        }

  defstruct auxiliary_auth_info: nil,
            id_token: "",
            refresh_token: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sign_in_info:
            {:phone_sign_in_info,
             Google.Cloud.Identitytoolkit.V2.StartMfaPhoneRequestInfo.t() | nil},
          mfa_pending_credential: String.t(),
          mfa_enrollment_id: String.t(),
          tenant_id: String.t()
        }

  defstruct sign_in_info: nil,
            mfa_pending_credential: "",
            mfa_enrollment_id: "",
            tenant_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_info:
            {:phone_response_info,
             Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo.t() | nil}
        }

  defstruct response_info: nil

  oneof :response_info, 0

  field :phone_response_info, 1,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo,
    json_name: "phoneResponseInfo",
    oneof: 0
end
defmodule Google.Cloud.Identitytoolkit.V2.AuthenticationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.identitytoolkit.v2.AuthenticationService"

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
