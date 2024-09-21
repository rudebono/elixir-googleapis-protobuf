defmodule Google.Appengine.V1.AuthFailAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :AUTH_FAIL_ACTION_UNSPECIFIED, 0
  field :AUTH_FAIL_ACTION_REDIRECT, 1
  field :AUTH_FAIL_ACTION_UNAUTHORIZED, 2
end

defmodule Google.Appengine.V1.LoginRequirement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LOGIN_UNSPECIFIED, 0
  field :LOGIN_OPTIONAL, 1
  field :LOGIN_ADMIN, 2
  field :LOGIN_REQUIRED, 3
end

defmodule Google.Appengine.V1.SecurityLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SECURE_UNSPECIFIED, 0
  field :SECURE_DEFAULT, 0
  field :SECURE_NEVER, 1
  field :SECURE_OPTIONAL, 2
  field :SECURE_ALWAYS, 3
end

defmodule Google.Appengine.V1.ErrorHandler.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :ERROR_CODE_DEFAULT, 0
  field :ERROR_CODE_OVER_QUOTA, 1
  field :ERROR_CODE_DOS_API_DENIAL, 2
  field :ERROR_CODE_TIMEOUT, 3
end

defmodule Google.Appengine.V1.UrlMap.RedirectHttpResponseCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED, 0
  field :REDIRECT_HTTP_RESPONSE_CODE_301, 1
  field :REDIRECT_HTTP_RESPONSE_CODE_302, 2
  field :REDIRECT_HTTP_RESPONSE_CODE_303, 3
  field :REDIRECT_HTTP_RESPONSE_CODE_307, 4
end

defmodule Google.Appengine.V1.ApiConfigHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :auth_fail_action, 1,
    type: Google.Appengine.V1.AuthFailAction,
    json_name: "authFailAction",
    enum: true

  field :login, 2, type: Google.Appengine.V1.LoginRequirement, enum: true
  field :script, 3, type: :string

  field :security_level, 4,
    type: Google.Appengine.V1.SecurityLevel,
    json_name: "securityLevel",
    enum: true

  field :url, 5, type: :string
end

defmodule Google.Appengine.V1.ErrorHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_code, 1,
    type: Google.Appengine.V1.ErrorHandler.ErrorCode,
    json_name: "errorCode",
    enum: true

  field :static_file, 2, type: :string, json_name: "staticFile"
  field :mime_type, 3, type: :string, json_name: "mimeType"
end

defmodule Google.Appengine.V1.UrlMap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :handler_type, 0

  field :url_regex, 1, type: :string, json_name: "urlRegex"

  field :static_files, 2,
    type: Google.Appengine.V1.StaticFilesHandler,
    json_name: "staticFiles",
    oneof: 0

  field :script, 3, type: Google.Appengine.V1.ScriptHandler, oneof: 0

  field :api_endpoint, 4,
    type: Google.Appengine.V1.ApiEndpointHandler,
    json_name: "apiEndpoint",
    oneof: 0

  field :security_level, 5,
    type: Google.Appengine.V1.SecurityLevel,
    json_name: "securityLevel",
    enum: true

  field :login, 6, type: Google.Appengine.V1.LoginRequirement, enum: true

  field :auth_fail_action, 7,
    type: Google.Appengine.V1.AuthFailAction,
    json_name: "authFailAction",
    enum: true

  field :redirect_http_response_code, 8,
    type: Google.Appengine.V1.UrlMap.RedirectHttpResponseCode,
    json_name: "redirectHttpResponseCode",
    enum: true
end

defmodule Google.Appengine.V1.StaticFilesHandler.HttpHeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Appengine.V1.StaticFilesHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string
  field :upload_path_regex, 2, type: :string, json_name: "uploadPathRegex"

  field :http_headers, 3,
    repeated: true,
    type: Google.Appengine.V1.StaticFilesHandler.HttpHeadersEntry,
    json_name: "httpHeaders",
    map: true

  field :mime_type, 4, type: :string, json_name: "mimeType"
  field :expiration, 5, type: Google.Protobuf.Duration
  field :require_matching_file, 6, type: :bool, json_name: "requireMatchingFile"
  field :application_readable, 7, type: :bool, json_name: "applicationReadable"
end

defmodule Google.Appengine.V1.ScriptHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :script_path, 1, type: :string, json_name: "scriptPath"
end

defmodule Google.Appengine.V1.ApiEndpointHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :script_path, 1, type: :string, json_name: "scriptPath"
end

defmodule Google.Appengine.V1.HealthCheck do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :disable_health_check, 1, type: :bool, json_name: "disableHealthCheck"
  field :host, 2, type: :string
  field :healthy_threshold, 3, type: :uint32, json_name: "healthyThreshold"
  field :unhealthy_threshold, 4, type: :uint32, json_name: "unhealthyThreshold"
  field :restart_threshold, 5, type: :uint32, json_name: "restartThreshold"
  field :check_interval, 6, type: Google.Protobuf.Duration, json_name: "checkInterval"
  field :timeout, 7, type: Google.Protobuf.Duration
end

defmodule Google.Appengine.V1.ReadinessCheck do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string
  field :host, 2, type: :string
  field :failure_threshold, 3, type: :uint32, json_name: "failureThreshold"
  field :success_threshold, 4, type: :uint32, json_name: "successThreshold"
  field :check_interval, 5, type: Google.Protobuf.Duration, json_name: "checkInterval"
  field :timeout, 6, type: Google.Protobuf.Duration
  field :app_start_timeout, 7, type: Google.Protobuf.Duration, json_name: "appStartTimeout"
end

defmodule Google.Appengine.V1.LivenessCheck do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string
  field :host, 2, type: :string
  field :failure_threshold, 3, type: :uint32, json_name: "failureThreshold"
  field :success_threshold, 4, type: :uint32, json_name: "successThreshold"
  field :check_interval, 5, type: Google.Protobuf.Duration, json_name: "checkInterval"
  field :timeout, 6, type: Google.Protobuf.Duration
  field :initial_delay, 7, type: Google.Protobuf.Duration, json_name: "initialDelay"
end

defmodule Google.Appengine.V1.Library do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string
end