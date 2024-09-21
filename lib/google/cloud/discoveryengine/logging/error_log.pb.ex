defmodule Google.Cloud.Discoveryengine.Logging.ServiceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.Logging.HttpRequestContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :response_status_code, 1, type: :int32, json_name: "responseStatusCode"
end

defmodule Google.Cloud.Discoveryengine.Logging.SourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :function_name, 1, type: :string, json_name: "functionName"
end

defmodule Google.Cloud.Discoveryengine.Logging.ErrorContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :http_request, 1,
    type: Google.Cloud.Discoveryengine.Logging.HttpRequestContext,
    json_name: "httpRequest"

  field :report_location, 2,
    type: Google.Cloud.Discoveryengine.Logging.SourceLocation,
    json_name: "reportLocation"
end

defmodule Google.Cloud.Discoveryengine.Logging.ImportErrorContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :line_content, 0

  field :operation, 1, type: :string
  field :gcs_path, 2, type: :string, json_name: "gcsPath"
  field :line_number, 3, type: :string, json_name: "lineNumber"
  field :document, 4, type: :string, oneof: 0
  field :user_event, 5, type: :string, json_name: "userEvent", oneof: 0
end

defmodule Google.Cloud.Discoveryengine.Logging.ErrorLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service_context, 1,
    type: Google.Cloud.Discoveryengine.Logging.ServiceContext,
    json_name: "serviceContext"

  field :context, 2, type: Google.Cloud.Discoveryengine.Logging.ErrorContext
  field :message, 3, type: :string
  field :status, 4, type: Google.Rpc.Status
  field :request_payload, 5, type: Google.Protobuf.Struct, json_name: "requestPayload"
  field :response_payload, 6, type: Google.Protobuf.Struct, json_name: "responsePayload"

  field :import_payload, 7,
    type: Google.Cloud.Discoveryengine.Logging.ImportErrorContext,
    json_name: "importPayload"
end