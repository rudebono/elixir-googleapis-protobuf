defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_name, 1, type: :string, json_name: "projectName", deprecated: false

  field :event, 2,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ReportedErrorEvent,
    deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportedErrorEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false

  field :service_context, 2,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext,
    json_name: "serviceContext",
    deprecated: false

  field :message, 3, type: :string, deprecated: false

  field :context, 4,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext,
    deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.clouderrorreporting.v1beta1.ReportErrorsService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ReportErrorEvent,
      Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventResponse
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorsService.Service
end
