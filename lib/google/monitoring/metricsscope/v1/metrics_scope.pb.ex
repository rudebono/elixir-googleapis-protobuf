defmodule Google.Monitoring.Metricsscope.V1.MetricsScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end