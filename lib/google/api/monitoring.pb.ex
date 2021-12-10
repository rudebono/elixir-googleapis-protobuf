defmodule Google.Api.Monitoring.MonitoringDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitored_resource: String.t(),
          metrics: [String.t()]
        }

  defstruct monitored_resource: "",
            metrics: []

  field :monitored_resource, 1, type: :string, json_name: "monitoredResource"
  field :metrics, 2, repeated: true, type: :string
end
defmodule Google.Api.Monitoring do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          producer_destinations: [Google.Api.Monitoring.MonitoringDestination.t()],
          consumer_destinations: [Google.Api.Monitoring.MonitoringDestination.t()]
        }

  defstruct producer_destinations: [],
            consumer_destinations: []

  field :producer_destinations, 1,
    repeated: true,
    type: Google.Api.Monitoring.MonitoringDestination,
    json_name: "producerDestinations"

  field :consumer_destinations, 2,
    repeated: true,
    type: Google.Api.Monitoring.MonitoringDestination,
    json_name: "consumerDestinations"
end
