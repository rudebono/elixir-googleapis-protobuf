defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CODE_UNSPECIFIED
          | :INTERNAL_ERROR
          | :SCAN_CONFIG_ISSUE
          | :AUTHENTICATION_CONFIG_ISSUE
          | :TIMED_OUT_WHILE_SCANNING
          | :TOO_MANY_REDIRECTS
          | :TOO_MANY_HTTP_ERRORS

  field :CODE_UNSPECIFIED, 0

  field :INTERNAL_ERROR, 1

  field :SCAN_CONFIG_ISSUE, 2

  field :AUTHENTICATION_CONFIG_ISSUE, 3

  field :TIMED_OUT_WHILE_SCANNING, 4

  field :TOO_MANY_REDIRECTS, 5

  field :TOO_MANY_HTTP_ERRORS, 6
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace.Code.t(),
          scan_config_error: Google.Cloud.Websecurityscanner.V1beta.ScanConfigError.t() | nil,
          most_common_http_error_code: integer
        }

  defstruct [:code, :scan_config_error, :most_common_http_error_code]

  field :code, 1, type: Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace.Code, enum: true
  field :scan_config_error, 2, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfigError
  field :most_common_http_error_code, 3, type: :int32
end
