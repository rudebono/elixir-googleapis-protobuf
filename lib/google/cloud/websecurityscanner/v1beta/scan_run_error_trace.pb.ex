defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace.Code, enum: true

  field :scan_config_error, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfigError,
    json_name: "scanConfigError"

  field :most_common_http_error_code, 3, type: :int32, json_name: "mostCommonHttpErrorCode"
end
