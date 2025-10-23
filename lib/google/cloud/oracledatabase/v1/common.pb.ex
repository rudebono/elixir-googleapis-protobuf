defmodule Google.Cloud.Oracledatabase.V1.ComputeModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPUTE_MODEL_UNSPECIFIED, 0
  field :COMPUTE_MODEL_ECPU, 1
  field :COMPUTE_MODEL_OCPU, 2
end

defmodule Google.Cloud.Oracledatabase.V1.IdentityConnector.ConnectionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONNECTION_STATE_UNSPECIFIED, 0
  field :CONNECTED, 1
  field :PARTIALLY_CONNECTED, 2
  field :DISCONNECTED, 3
  field :UNKNOWN, 4
end

defmodule Google.Cloud.Oracledatabase.V1.CustomerContact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :email, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.IdentityConnector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_agent_email, 1, type: :string, json_name: "serviceAgentEmail", deprecated: false

  field :connection_state, 2,
    type: Google.Cloud.Oracledatabase.V1.IdentityConnector.ConnectionState,
    json_name: "connectionState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DataCollectionOptionsCommon do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :is_diagnostics_events_enabled, 1,
    type: :bool,
    json_name: "isDiagnosticsEventsEnabled",
    deprecated: false

  field :is_health_monitoring_enabled, 2,
    type: :bool,
    json_name: "isHealthMonitoringEnabled",
    deprecated: false

  field :is_incident_logs_enabled, 3,
    type: :bool,
    json_name: "isIncidentLogsEnabled",
    deprecated: false
end
