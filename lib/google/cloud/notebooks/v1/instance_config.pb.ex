defmodule Google.Cloud.Notebooks.V1.InstanceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notebook_upgrade_schedule: String.t(),
          enable_health_monitoring: boolean
        }

  defstruct notebook_upgrade_schedule: "",
            enable_health_monitoring: false

  field :notebook_upgrade_schedule, 1, type: :string, json_name: "notebookUpgradeSchedule"
  field :enable_health_monitoring, 2, type: :bool, json_name: "enableHealthMonitoring"
end
