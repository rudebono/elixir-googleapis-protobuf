defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_name: String.t(),
          event: Google.Devtools.Clouderrorreporting.V1beta1.ReportedErrorEvent.t() | nil
        }

  defstruct [:project_name, :event]

  field :project_name, 1, type: :string, json_name: "projectName"
  field :event, 2, type: Google.Devtools.Clouderrorreporting.V1beta1.ReportedErrorEvent

  def transform_module(), do: nil
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportedErrorEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_time: Google.Protobuf.Timestamp.t() | nil,
          service_context: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext.t() | nil,
          message: String.t(),
          context: Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext.t() | nil
        }

  defstruct [:event_time, :service_context, :message, :context]

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :service_context, 2,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext,
    json_name: "serviceContext"

  field :message, 3, type: :string
  field :context, 4, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorContext

  def transform_module(), do: nil
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.clouderrorreporting.v1beta1.ReportErrorsService"

  rpc :ReportErrorEvent,
      Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorEventResponse
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Clouderrorreporting.V1beta1.ReportErrorsService.Service
end
