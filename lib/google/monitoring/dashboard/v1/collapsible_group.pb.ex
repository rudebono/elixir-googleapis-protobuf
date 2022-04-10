defmodule Google.Monitoring.Dashboard.V1.CollapsibleGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          collapsed: boolean
        }

  defstruct collapsed: false

  field :collapsed, 1, type: :bool
end
