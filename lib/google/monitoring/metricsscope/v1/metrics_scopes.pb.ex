defmodule Google.Monitoring.Metricsscope.V1.OperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATED, 1
  field :RUNNING, 2
  field :DONE, 3
  field :CANCELLED, 4
end

defmodule Google.Monitoring.Metricsscope.V1.GetMetricsScopeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.Metricsscope.V1.ListMetricsScopesByMonitoredProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :monitored_resource_container, 1,
    type: :string,
    json_name: "monitoredResourceContainer",
    deprecated: false
end

defmodule Google.Monitoring.Metricsscope.V1.ListMetricsScopesByMonitoredProjectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metrics_scopes, 1,
    repeated: true,
    type: Google.Monitoring.Metricsscope.V1.MetricsScope,
    json_name: "metricsScopes"
end

defmodule Google.Monitoring.Metricsscope.V1.CreateMonitoredProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :monitored_project, 2,
    type: Google.Monitoring.Metricsscope.V1.MonitoredProject,
    json_name: "monitoredProject",
    deprecated: false
end

defmodule Google.Monitoring.Metricsscope.V1.DeleteMonitoredProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.Metricsscope.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1, type: Google.Monitoring.Metricsscope.V1.OperationMetadata.State, enum: true
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Monitoring.Metricsscope.V1.MetricsScopes.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.monitoring.metricsscope.v1.MetricsScopes",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetMetricsScope,
      Google.Monitoring.Metricsscope.V1.GetMetricsScopeRequest,
      Google.Monitoring.Metricsscope.V1.MetricsScope

  rpc :ListMetricsScopesByMonitoredProject,
      Google.Monitoring.Metricsscope.V1.ListMetricsScopesByMonitoredProjectRequest,
      Google.Monitoring.Metricsscope.V1.ListMetricsScopesByMonitoredProjectResponse

  rpc :CreateMonitoredProject,
      Google.Monitoring.Metricsscope.V1.CreateMonitoredProjectRequest,
      Google.Longrunning.Operation

  rpc :DeleteMonitoredProject,
      Google.Monitoring.Metricsscope.V1.DeleteMonitoredProjectRequest,
      Google.Longrunning.Operation
end

defmodule Google.Monitoring.Metricsscope.V1.MetricsScopes.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Monitoring.Metricsscope.V1.MetricsScopes.Service
end
