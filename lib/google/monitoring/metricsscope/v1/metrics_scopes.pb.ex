defmodule Google.Monitoring.Metricsscope.V1.OperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATED | :RUNNING | :DONE | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :CREATED, 1
  field :RUNNING, 2
  field :DONE, 3
  field :CANCELLED, 4
end

defmodule Google.Monitoring.Metricsscope.V1.GetMetricsScopeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Metricsscope.V1.ListMetricsScopesByMonitoredProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitored_resource_container: String.t()
        }

  defstruct [:monitored_resource_container]

  field :monitored_resource_container, 1, type: :string, json_name: "monitoredResourceContainer"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Metricsscope.V1.ListMetricsScopesByMonitoredProjectResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics_scopes: [Google.Monitoring.Metricsscope.V1.MetricsScope.t()]
        }

  defstruct [:metrics_scopes]

  field :metrics_scopes, 1,
    repeated: true,
    type: Google.Monitoring.Metricsscope.V1.MetricsScope,
    json_name: "metricsScopes"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Metricsscope.V1.CreateMonitoredProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          monitored_project: Google.Monitoring.Metricsscope.V1.MonitoredProject.t() | nil
        }

  defstruct [:parent, :monitored_project]

  field :parent, 1, type: :string

  field :monitored_project, 2,
    type: Google.Monitoring.Metricsscope.V1.MonitoredProject,
    json_name: "monitoredProject"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Metricsscope.V1.DeleteMonitoredProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Metricsscope.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Monitoring.Metricsscope.V1.OperationMetadata.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :create_time, :update_time]

  field :state, 1, type: Google.Monitoring.Metricsscope.V1.OperationMetadata.State, enum: true
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Metricsscope.V1.MetricsScopes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.metricsscope.v1.MetricsScopes"

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
