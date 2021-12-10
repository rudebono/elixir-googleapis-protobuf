defmodule Google.Monitoring.Metricsscope.V1.MetricsScope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          monitored_projects: [Google.Monitoring.Metricsscope.V1.MonitoredProject.t()]
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            monitored_projects: []

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :monitored_projects, 4,
    repeated: true,
    type: Google.Monitoring.Metricsscope.V1.MonitoredProject,
    json_name: "monitoredProjects",
    deprecated: false
end
defmodule Google.Monitoring.Metricsscope.V1.MonitoredProject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            create_time: nil

  field :name, 1, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
