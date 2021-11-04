defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfigError.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CODE_UNSPECIFIED
          | :OK
          | :INTERNAL_ERROR
          | :APPENGINE_API_BACKEND_ERROR
          | :APPENGINE_API_NOT_ACCESSIBLE
          | :APPENGINE_DEFAULT_HOST_MISSING
          | :CANNOT_USE_GOOGLE_COM_ACCOUNT
          | :CANNOT_USE_OWNER_ACCOUNT
          | :COMPUTE_API_BACKEND_ERROR
          | :COMPUTE_API_NOT_ACCESSIBLE
          | :CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT
          | :CUSTOM_LOGIN_URL_MALFORMED
          | :CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS
          | :CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS
          | :CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS
          | :CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS
          | :DUPLICATE_SCAN_NAME
          | :INVALID_FIELD_VALUE
          | :FAILED_TO_AUTHENTICATE_TO_TARGET
          | :FINDING_TYPE_UNSPECIFIED
          | :FORBIDDEN_TO_SCAN_COMPUTE
          | :FORBIDDEN_UPDATE_TO_MANAGED_SCAN
          | :MALFORMED_FILTER
          | :MALFORMED_RESOURCE_NAME
          | :PROJECT_INACTIVE
          | :REQUIRED_FIELD
          | :RESOURCE_NAME_INCONSISTENT
          | :SCAN_ALREADY_RUNNING
          | :SCAN_NOT_RUNNING
          | :SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT
          | :SEED_URL_MALFORMED
          | :SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS
          | :SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS
          | :SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS
          | :SEED_URL_HAS_UNRESERVED_IP_ADDRESS
          | :SERVICE_ACCOUNT_NOT_CONFIGURED
          | :TOO_MANY_SCANS
          | :UNABLE_TO_RESOLVE_PROJECT_INFO
          | :UNSUPPORTED_BLACKLIST_PATTERN_FORMAT
          | :UNSUPPORTED_FILTER
          | :UNSUPPORTED_FINDING_TYPE
          | :UNSUPPORTED_URL_SCHEME

  field :CODE_UNSPECIFIED, 0
  field :OK, 0
  field :INTERNAL_ERROR, 1
  field :APPENGINE_API_BACKEND_ERROR, 2
  field :APPENGINE_API_NOT_ACCESSIBLE, 3
  field :APPENGINE_DEFAULT_HOST_MISSING, 4
  field :CANNOT_USE_GOOGLE_COM_ACCOUNT, 6
  field :CANNOT_USE_OWNER_ACCOUNT, 7
  field :COMPUTE_API_BACKEND_ERROR, 8
  field :COMPUTE_API_NOT_ACCESSIBLE, 9
  field :CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT, 10
  field :CUSTOM_LOGIN_URL_MALFORMED, 11
  field :CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS, 12
  field :CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS, 13
  field :CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS, 14
  field :CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS, 15
  field :DUPLICATE_SCAN_NAME, 16
  field :INVALID_FIELD_VALUE, 18
  field :FAILED_TO_AUTHENTICATE_TO_TARGET, 19
  field :FINDING_TYPE_UNSPECIFIED, 20
  field :FORBIDDEN_TO_SCAN_COMPUTE, 21
  field :FORBIDDEN_UPDATE_TO_MANAGED_SCAN, 43
  field :MALFORMED_FILTER, 22
  field :MALFORMED_RESOURCE_NAME, 23
  field :PROJECT_INACTIVE, 24
  field :REQUIRED_FIELD, 25
  field :RESOURCE_NAME_INCONSISTENT, 26
  field :SCAN_ALREADY_RUNNING, 27
  field :SCAN_NOT_RUNNING, 28
  field :SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT, 29
  field :SEED_URL_MALFORMED, 30
  field :SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS, 31
  field :SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS, 32
  field :SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS, 33
  field :SEED_URL_HAS_UNRESERVED_IP_ADDRESS, 35
  field :SERVICE_ACCOUNT_NOT_CONFIGURED, 36
  field :TOO_MANY_SCANS, 37
  field :UNABLE_TO_RESOLVE_PROJECT_INFO, 38
  field :UNSUPPORTED_BLACKLIST_PATTERN_FORMAT, 39
  field :UNSUPPORTED_FILTER, 40
  field :UNSUPPORTED_FINDING_TYPE, 41
  field :UNSUPPORTED_URL_SCHEME, 42
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfigError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Websecurityscanner.V1beta.ScanConfigError.Code.t(),
          field_name: String.t()
        }

  defstruct [:code, :field_name]

  field :code, 1, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfigError.Code, enum: true
  field :field_name, 2, type: :string, json_name: "fieldName"

  def transform_module(), do: nil
end
