defmodule Google.Api.Logging.LoggingDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitored_resource: String.t(),
          logs: [String.t()]
        }

  defstruct monitored_resource: "",
            logs: []

  field :monitored_resource, 3, type: :string, json_name: "monitoredResource"
  field :logs, 1, repeated: true, type: :string
end
defmodule Google.Api.Logging do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          producer_destinations: [Google.Api.Logging.LoggingDestination.t()],
          consumer_destinations: [Google.Api.Logging.LoggingDestination.t()]
        }

  defstruct producer_destinations: [],
            consumer_destinations: []

  field :producer_destinations, 1,
    repeated: true,
    type: Google.Api.Logging.LoggingDestination,
    json_name: "producerDestinations"

  field :consumer_destinations, 2,
    repeated: true,
    type: Google.Api.Logging.LoggingDestination,
    json_name: "consumerDestinations"
end
