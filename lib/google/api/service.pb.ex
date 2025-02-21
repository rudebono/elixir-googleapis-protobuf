defmodule Google.Api.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :producer_project_id, 22, type: :string, json_name: "producerProjectId"
  field :id, 33, type: :string
  field :apis, 3, repeated: true, type: Google.Protobuf.Api
  field :types, 4, repeated: true, type: Google.Protobuf.Type
  field :enums, 5, repeated: true, type: Google.Protobuf.Enum
  field :documentation, 6, type: Google.Api.Documentation
  field :backend, 8, type: Google.Api.Backend
  field :http, 9, type: Google.Api.Http
  field :quota, 10, type: Google.Api.Quota
  field :authentication, 11, type: Google.Api.Authentication
  field :context, 12, type: Google.Api.Context
  field :usage, 15, type: Google.Api.Usage
  field :endpoints, 18, repeated: true, type: Google.Api.Endpoint
  field :control, 21, type: Google.Api.Control
  field :logs, 23, repeated: true, type: Google.Api.LogDescriptor
  field :metrics, 24, repeated: true, type: Google.Api.MetricDescriptor

  field :monitored_resources, 25,
    repeated: true,
    type: Google.Api.MonitoredResourceDescriptor,
    json_name: "monitoredResources"

  field :billing, 26, type: Google.Api.Billing
  field :logging, 27, type: Google.Api.Logging
  field :monitoring, 28, type: Google.Api.Monitoring
  field :system_parameters, 29, type: Google.Api.SystemParameters, json_name: "systemParameters"
  field :source_info, 37, type: Google.Api.SourceInfo, json_name: "sourceInfo"
  field :publishing, 45, type: Google.Api.Publishing
  field :config_version, 20, type: Google.Protobuf.UInt32Value, json_name: "configVersion"
end
