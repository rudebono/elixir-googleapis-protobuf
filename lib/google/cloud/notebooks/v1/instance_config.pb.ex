defmodule Google.Cloud.Notebooks.V1.InstanceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notebook_upgrade_schedule: String.t(),
          enable_health_monitoring: boolean
        }

  defstruct [:notebook_upgrade_schedule, :enable_health_monitoring]

  field :notebook_upgrade_schedule, 1, type: :string
  field :enable_health_monitoring, 2, type: :bool
end
