defmodule Google.Devtools.Clouderrorreporting.V1beta1.ResolutionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESOLUTION_STATUS_UNSPECIFIED | :OPEN | :ACKNOWLEDGED | :RESOLVED | :MUTED

  field :RESOLUTION_STATUS_UNSPECIFIED, 0

  field :OPEN, 1

  field :ACKNOWLEDGED, 2

  field :RESOLVED, 3

  field :MUTED, 4
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          group_id: String.t(),
          tracking_issues: [Google.Devtools.Clouderrorreporting.V1beta1.TrackingIssue.t()],
          resolution_status: Google.Devtools.Clouderrorreporting.V1beta1.ResolutionStatus.t()
        }

  defstruct [:name, :group_id, :tracking_issues, :resolution_status]

  field :name, 1, type: :string
  field :group_id, 2, type: :string

  field :tracking_issues, 3,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.TrackingIssue

  field :resolution_status, 5,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ResolutionStatus,
    enum: true
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.TrackingIssue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t()
        }

  defstruct [:url]

  field :url, 1, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_time: Google.Protobuf.Timestamp.t() | nil,
          service_context: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext.t() | nil,
          message: String.t(),
          context: Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext.t() | nil
        }

  defstruct [:event_time, :service_context, :message, :context]

  field :event_time, 1, type: Google.Protobuf.Timestamp
  field :service_context, 2, type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext
  field :message, 3, type: :string
  field :context, 5, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          version: String.t(),
          resource_type: String.t()
        }

  defstruct [:service, :version, :resource_type]

  field :service, 2, type: :string
  field :version, 3, type: :string
  field :resource_type, 4, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_request: Google.Devtools.Clouderrorreporting.V1beta1.HttpRequestContext.t() | nil,
          user: String.t(),
          report_location: Google.Devtools.Clouderrorreporting.V1beta1.SourceLocation.t() | nil
        }

  defstruct [:http_request, :user, :report_location]

  field :http_request, 1, type: Google.Devtools.Clouderrorreporting.V1beta1.HttpRequestContext
  field :user, 2, type: :string
  field :report_location, 3, type: Google.Devtools.Clouderrorreporting.V1beta1.SourceLocation
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.HttpRequestContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: String.t(),
          url: String.t(),
          user_agent: String.t(),
          referrer: String.t(),
          response_status_code: integer,
          remote_ip: String.t()
        }

  defstruct [:method, :url, :user_agent, :referrer, :response_status_code, :remote_ip]

  field :method, 1, type: :string
  field :url, 2, type: :string
  field :user_agent, 3, type: :string
  field :referrer, 4, type: :string
  field :response_status_code, 5, type: :int32
  field :remote_ip, 6, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.SourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_path: String.t(),
          line_number: integer,
          function_name: String.t()
        }

  defstruct [:file_path, :line_number, :function_name]

  field :file_path, 1, type: :string
  field :line_number, 2, type: :int32
  field :function_name, 4, type: :string
end
