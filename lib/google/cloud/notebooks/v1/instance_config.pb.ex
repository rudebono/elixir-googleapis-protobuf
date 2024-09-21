defmodule Google.Cloud.Notebooks.V1.InstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notebook_upgrade_schedule, 1, type: :string, json_name: "notebookUpgradeSchedule"
  field :enable_health_monitoring, 2, type: :bool, json_name: "enableHealthMonitoring"
end