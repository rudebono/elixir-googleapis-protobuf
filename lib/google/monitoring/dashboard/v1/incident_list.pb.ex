defmodule Google.Monitoring.Dashboard.V1.IncidentList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :monitored_resources, 1,
    repeated: true,
    type: Google.Api.MonitoredResource,
    json_name: "monitoredResources",
    deprecated: false

  field :policy_names, 2,
    repeated: true,
    type: :string,
    json_name: "policyNames",
    deprecated: false
end
