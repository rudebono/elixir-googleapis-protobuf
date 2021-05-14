defmodule Google.Api.Servicecontrol.V1.CheckError.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_CODE_UNSPECIFIED
          | :NOT_FOUND
          | :PERMISSION_DENIED
          | :RESOURCE_EXHAUSTED
          | :SERVICE_NOT_ACTIVATED
          | :BILLING_DISABLED
          | :PROJECT_DELETED
          | :PROJECT_INVALID
          | :CONSUMER_INVALID
          | :IP_ADDRESS_BLOCKED
          | :REFERER_BLOCKED
          | :CLIENT_APP_BLOCKED
          | :API_TARGET_BLOCKED
          | :API_KEY_INVALID
          | :API_KEY_EXPIRED
          | :API_KEY_NOT_FOUND
          | :INVALID_CREDENTIAL
          | :NAMESPACE_LOOKUP_UNAVAILABLE
          | :SERVICE_STATUS_UNAVAILABLE
          | :BILLING_STATUS_UNAVAILABLE
          | :CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE

  field :ERROR_CODE_UNSPECIFIED, 0

  field :NOT_FOUND, 5

  field :PERMISSION_DENIED, 7

  field :RESOURCE_EXHAUSTED, 8

  field :SERVICE_NOT_ACTIVATED, 104

  field :BILLING_DISABLED, 107

  field :PROJECT_DELETED, 108

  field :PROJECT_INVALID, 114

  field :CONSUMER_INVALID, 125

  field :IP_ADDRESS_BLOCKED, 109

  field :REFERER_BLOCKED, 110

  field :CLIENT_APP_BLOCKED, 111

  field :API_TARGET_BLOCKED, 122

  field :API_KEY_INVALID, 105

  field :API_KEY_EXPIRED, 112

  field :API_KEY_NOT_FOUND, 113

  field :INVALID_CREDENTIAL, 123

  field :NAMESPACE_LOOKUP_UNAVAILABLE, 300

  field :SERVICE_STATUS_UNAVAILABLE, 301

  field :BILLING_STATUS_UNAVAILABLE, 302

  field :CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE, 305
end

defmodule Google.Api.Servicecontrol.V1.CheckError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Api.Servicecontrol.V1.CheckError.Code.t(),
          subject: String.t(),
          detail: String.t(),
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:code, :subject, :detail, :status]

  field :code, 1, type: Google.Api.Servicecontrol.V1.CheckError.Code, enum: true
  field :subject, 4, type: :string
  field :detail, 2, type: :string
  field :status, 3, type: Google.Rpc.Status
end
