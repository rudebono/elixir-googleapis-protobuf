defmodule Google.Appengine.V1beta.AuthFailAction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :AUTH_FAIL_ACTION_UNSPECIFIED
          | :AUTH_FAIL_ACTION_REDIRECT
          | :AUTH_FAIL_ACTION_UNAUTHORIZED

  field :AUTH_FAIL_ACTION_UNSPECIFIED, 0

  field :AUTH_FAIL_ACTION_REDIRECT, 1

  field :AUTH_FAIL_ACTION_UNAUTHORIZED, 2
end

defmodule Google.Appengine.V1beta.LoginRequirement do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LOGIN_UNSPECIFIED | :LOGIN_OPTIONAL | :LOGIN_ADMIN | :LOGIN_REQUIRED

  field :LOGIN_UNSPECIFIED, 0

  field :LOGIN_OPTIONAL, 1

  field :LOGIN_ADMIN, 2

  field :LOGIN_REQUIRED, 3
end

defmodule Google.Appengine.V1beta.SecurityLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SECURE_UNSPECIFIED
          | :SECURE_DEFAULT
          | :SECURE_NEVER
          | :SECURE_OPTIONAL
          | :SECURE_ALWAYS

  field :SECURE_UNSPECIFIED, 0

  field :SECURE_DEFAULT, 0

  field :SECURE_NEVER, 1

  field :SECURE_OPTIONAL, 2

  field :SECURE_ALWAYS, 3
end

defmodule Google.Appengine.V1beta.ErrorHandler.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_CODE_UNSPECIFIED
          | :ERROR_CODE_DEFAULT
          | :ERROR_CODE_OVER_QUOTA
          | :ERROR_CODE_DOS_API_DENIAL
          | :ERROR_CODE_TIMEOUT

  field :ERROR_CODE_UNSPECIFIED, 0

  field :ERROR_CODE_DEFAULT, 0

  field :ERROR_CODE_OVER_QUOTA, 1

  field :ERROR_CODE_DOS_API_DENIAL, 2

  field :ERROR_CODE_TIMEOUT, 3
end

defmodule Google.Appengine.V1beta.UrlMap.RedirectHttpResponseCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED
          | :REDIRECT_HTTP_RESPONSE_CODE_301
          | :REDIRECT_HTTP_RESPONSE_CODE_302
          | :REDIRECT_HTTP_RESPONSE_CODE_303
          | :REDIRECT_HTTP_RESPONSE_CODE_307

  field :REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED, 0

  field :REDIRECT_HTTP_RESPONSE_CODE_301, 1

  field :REDIRECT_HTTP_RESPONSE_CODE_302, 2

  field :REDIRECT_HTTP_RESPONSE_CODE_303, 3

  field :REDIRECT_HTTP_RESPONSE_CODE_307, 4
end

defmodule Google.Appengine.V1beta.ApiConfigHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auth_fail_action: Google.Appengine.V1beta.AuthFailAction.t(),
          login: Google.Appengine.V1beta.LoginRequirement.t(),
          script: String.t(),
          security_level: Google.Appengine.V1beta.SecurityLevel.t(),
          url: String.t()
        }

  defstruct [:auth_fail_action, :login, :script, :security_level, :url]

  field :auth_fail_action, 1, type: Google.Appengine.V1beta.AuthFailAction, enum: true
  field :login, 2, type: Google.Appengine.V1beta.LoginRequirement, enum: true
  field :script, 3, type: :string
  field :security_level, 4, type: Google.Appengine.V1beta.SecurityLevel, enum: true
  field :url, 5, type: :string
end

defmodule Google.Appengine.V1beta.ErrorHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_code: Google.Appengine.V1beta.ErrorHandler.ErrorCode.t(),
          static_file: String.t(),
          mime_type: String.t()
        }

  defstruct [:error_code, :static_file, :mime_type]

  field :error_code, 1, type: Google.Appengine.V1beta.ErrorHandler.ErrorCode, enum: true
  field :static_file, 2, type: :string
  field :mime_type, 3, type: :string
end

defmodule Google.Appengine.V1beta.UrlMap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          handler_type: {atom, any},
          url_regex: String.t(),
          security_level: Google.Appengine.V1beta.SecurityLevel.t(),
          login: Google.Appengine.V1beta.LoginRequirement.t(),
          auth_fail_action: Google.Appengine.V1beta.AuthFailAction.t(),
          redirect_http_response_code: Google.Appengine.V1beta.UrlMap.RedirectHttpResponseCode.t()
        }

  defstruct [
    :handler_type,
    :url_regex,
    :security_level,
    :login,
    :auth_fail_action,
    :redirect_http_response_code
  ]

  oneof :handler_type, 0
  field :url_regex, 1, type: :string
  field :static_files, 2, type: Google.Appengine.V1beta.StaticFilesHandler, oneof: 0
  field :script, 3, type: Google.Appengine.V1beta.ScriptHandler, oneof: 0
  field :api_endpoint, 4, type: Google.Appengine.V1beta.ApiEndpointHandler, oneof: 0
  field :security_level, 5, type: Google.Appengine.V1beta.SecurityLevel, enum: true
  field :login, 6, type: Google.Appengine.V1beta.LoginRequirement, enum: true
  field :auth_fail_action, 7, type: Google.Appengine.V1beta.AuthFailAction, enum: true

  field :redirect_http_response_code, 8,
    type: Google.Appengine.V1beta.UrlMap.RedirectHttpResponseCode,
    enum: true
end

defmodule Google.Appengine.V1beta.StaticFilesHandler.HttpHeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Appengine.V1beta.StaticFilesHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          upload_path_regex: String.t(),
          http_headers: %{String.t() => String.t()},
          mime_type: String.t(),
          expiration: Google.Protobuf.Duration.t() | nil,
          require_matching_file: boolean,
          application_readable: boolean
        }

  defstruct [
    :path,
    :upload_path_regex,
    :http_headers,
    :mime_type,
    :expiration,
    :require_matching_file,
    :application_readable
  ]

  field :path, 1, type: :string
  field :upload_path_regex, 2, type: :string

  field :http_headers, 3,
    repeated: true,
    type: Google.Appengine.V1beta.StaticFilesHandler.HttpHeadersEntry,
    map: true

  field :mime_type, 4, type: :string
  field :expiration, 5, type: Google.Protobuf.Duration
  field :require_matching_file, 6, type: :bool
  field :application_readable, 7, type: :bool
end

defmodule Google.Appengine.V1beta.ScriptHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          script_path: String.t()
        }

  defstruct [:script_path]

  field :script_path, 1, type: :string
end

defmodule Google.Appengine.V1beta.ApiEndpointHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          script_path: String.t()
        }

  defstruct [:script_path]

  field :script_path, 1, type: :string
end

defmodule Google.Appengine.V1beta.HealthCheck do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disable_health_check: boolean,
          host: String.t(),
          healthy_threshold: non_neg_integer,
          unhealthy_threshold: non_neg_integer,
          restart_threshold: non_neg_integer,
          check_interval: Google.Protobuf.Duration.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :disable_health_check,
    :host,
    :healthy_threshold,
    :unhealthy_threshold,
    :restart_threshold,
    :check_interval,
    :timeout
  ]

  field :disable_health_check, 1, type: :bool
  field :host, 2, type: :string
  field :healthy_threshold, 3, type: :uint32
  field :unhealthy_threshold, 4, type: :uint32
  field :restart_threshold, 5, type: :uint32
  field :check_interval, 6, type: Google.Protobuf.Duration
  field :timeout, 7, type: Google.Protobuf.Duration
end

defmodule Google.Appengine.V1beta.ReadinessCheck do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          host: String.t(),
          failure_threshold: non_neg_integer,
          success_threshold: non_neg_integer,
          check_interval: Google.Protobuf.Duration.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil,
          app_start_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :path,
    :host,
    :failure_threshold,
    :success_threshold,
    :check_interval,
    :timeout,
    :app_start_timeout
  ]

  field :path, 1, type: :string
  field :host, 2, type: :string
  field :failure_threshold, 3, type: :uint32
  field :success_threshold, 4, type: :uint32
  field :check_interval, 5, type: Google.Protobuf.Duration
  field :timeout, 6, type: Google.Protobuf.Duration
  field :app_start_timeout, 7, type: Google.Protobuf.Duration
end

defmodule Google.Appengine.V1beta.LivenessCheck do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          host: String.t(),
          failure_threshold: non_neg_integer,
          success_threshold: non_neg_integer,
          check_interval: Google.Protobuf.Duration.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil,
          initial_delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :path,
    :host,
    :failure_threshold,
    :success_threshold,
    :check_interval,
    :timeout,
    :initial_delay
  ]

  field :path, 1, type: :string
  field :host, 2, type: :string
  field :failure_threshold, 3, type: :uint32
  field :success_threshold, 4, type: :uint32
  field :check_interval, 5, type: Google.Protobuf.Duration
  field :timeout, 6, type: Google.Protobuf.Duration
  field :initial_delay, 7, type: Google.Protobuf.Duration
end

defmodule Google.Appengine.V1beta.Library do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t()
        }

  defstruct [:name, :version]

  field :name, 1, type: :string
  field :version, 2, type: :string
end
