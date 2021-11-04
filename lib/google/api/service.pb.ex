defmodule Google.Api.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          producer_project_id: String.t(),
          id: String.t(),
          apis: [Google.Protobuf.Api.t()],
          types: [Google.Protobuf.Type.t()],
          enums: [Google.Protobuf.Enum.t()],
          documentation: Google.Api.Documentation.t() | nil,
          backend: Google.Api.Backend.t() | nil,
          http: Google.Api.Http.t() | nil,
          quota: Google.Api.Quota.t() | nil,
          authentication: Google.Api.Authentication.t() | nil,
          context: Google.Api.Context.t() | nil,
          usage: Google.Api.Usage.t() | nil,
          endpoints: [Google.Api.Endpoint.t()],
          control: Google.Api.Control.t() | nil,
          logs: [Google.Api.LogDescriptor.t()],
          metrics: [Google.Api.MetricDescriptor.t()],
          monitored_resources: [Google.Api.MonitoredResourceDescriptor.t()],
          billing: Google.Api.Billing.t() | nil,
          logging: Google.Api.Logging.t() | nil,
          monitoring: Google.Api.Monitoring.t() | nil,
          system_parameters: Google.Api.SystemParameters.t() | nil,
          source_info: Google.Api.SourceInfo.t() | nil,
          config_version: Google.Protobuf.UInt32Value.t() | nil
        }

  defstruct [
    :name,
    :title,
    :producer_project_id,
    :id,
    :apis,
    :types,
    :enums,
    :documentation,
    :backend,
    :http,
    :quota,
    :authentication,
    :context,
    :usage,
    :endpoints,
    :control,
    :logs,
    :metrics,
    :monitored_resources,
    :billing,
    :logging,
    :monitoring,
    :system_parameters,
    :source_info,
    :config_version
  ]

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

  field :config_version, 20,
    type: Google.Protobuf.UInt32Value,
    deprecated: true,
    json_name: "configVersion"

  def transform_module(), do: nil
end
