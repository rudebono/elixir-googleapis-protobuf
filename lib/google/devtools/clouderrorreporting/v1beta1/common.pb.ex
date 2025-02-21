defmodule Google.Devtools.Clouderrorreporting.V1beta1.ResolutionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESOLUTION_STATUS_UNSPECIFIED, 0
  field :OPEN, 1
  field :ACKNOWLEDGED, 2
  field :RESOLVED, 3
  field :MUTED, 4
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :group_id, 2, type: :string, json_name: "groupId"

  field :tracking_issues, 3,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.TrackingIssue,
    json_name: "trackingIssues"

  field :resolution_status, 5,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ResolutionStatus,
    json_name: "resolutionStatus",
    enum: true
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.TrackingIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url, 1, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :service_context, 2,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext,
    json_name: "serviceContext"

  field :message, 3, type: :string
  field :context, 5, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service, 2, type: :string
  field :version, 3, type: :string
  field :resource_type, 4, type: :string, json_name: "resourceType"
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :http_request, 1,
    type: Google.Devtools.Clouderrorreporting.V1beta1.HttpRequestContext,
    json_name: "httpRequest"

  field :user, 2, type: :string

  field :report_location, 3,
    type: Google.Devtools.Clouderrorreporting.V1beta1.SourceLocation,
    json_name: "reportLocation"
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.HttpRequestContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :method, 1, type: :string
  field :url, 2, type: :string
  field :user_agent, 3, type: :string, json_name: "userAgent"
  field :referrer, 4, type: :string
  field :response_status_code, 5, type: :int32, json_name: "responseStatusCode"
  field :remote_ip, 6, type: :string, json_name: "remoteIp"
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.SourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_path, 1, type: :string, json_name: "filePath"
  field :line_number, 2, type: :int32, json_name: "lineNumber"
  field :function_name, 4, type: :string, json_name: "functionName"
end
