defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          verification_info: {atom, any},
          mfa_pending_credential: String.t(),
          tenant_id: String.t()
        }

  defstruct [:verification_info, :mfa_pending_credential, :tenant_id]

  oneof :verification_info, 0
  field :mfa_pending_credential, 2, type: :string

  field :phone_verification_info, 3,
    type: Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneRequestInfo,
    oneof: 0

  field :tenant_id, 4, type: :string
end

defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaSignInResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auxiliary_auth_info: {atom, any},
          id_token: String.t(),
          refresh_token: String.t()
        }

  defstruct [:auxiliary_auth_info, :id_token, :refresh_token]

  oneof :auxiliary_auth_info, 0
  field :id_token, 1, type: :string
  field :refresh_token, 2, type: :string

  field :phone_auth_info, 3,
    type: Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneResponseInfo,
    oneof: 0
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaSignInRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sign_in_info: {atom, any},
          mfa_pending_credential: String.t(),
          mfa_enrollment_id: String.t(),
          tenant_id: String.t()
        }

  defstruct [:sign_in_info, :mfa_pending_credential, :mfa_enrollment_id, :tenant_id]

  oneof :sign_in_info, 0
  field :mfa_pending_credential, 2, type: :string
  field :mfa_enrollment_id, 3, type: :string

  field :phone_sign_in_info, 4,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneRequestInfo,
    oneof: 0

  field :tenant_id, 5, type: :string
end

defmodule Google.Cloud.Identitytoolkit.V2.StartMfaSignInResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_info: {atom, any}
        }

  defstruct [:response_info]

  oneof :response_info, 0

  field :phone_response_info, 1,
    type: Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo,
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
