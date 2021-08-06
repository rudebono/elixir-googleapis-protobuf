defmodule Google.Monitoring.Metricsscope.V1.MetricsScope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          monitored_projects: [Google.Monitoring.Metricsscope.V1.MonitoredProject.t()]
        }

  defstruct [:name, :create_time, :update_time, :monitored_projects]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :monitored_projects, 4,
    repeated: true,
    type: Google.Monitoring.Metricsscope.V1.MonitoredProject
end

defmodule Google.Monitoring.Metricsscope.V1.MonitoredProject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :create_time]

  field :name, 1, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp
end
