defmodule Google.Api.Monitoring.MonitoringDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :monitored_resource, 1, type: :string, json_name: "monitoredResource"
  field :metrics, 2, repeated: true, type: :string
end

defmodule Google.Api.Monitoring do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :producer_destinations, 1,
    repeated: true,
    type: Google.Api.Monitoring.MonitoringDestination,
    json_name: "producerDestinations"

  field :consumer_destinations, 2,
    repeated: true,
    type: Google.Api.Monitoring.MonitoringDestination,
    json_name: "consumerDestinations"
end