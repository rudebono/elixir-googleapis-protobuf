defmodule Google.Monitoring.Dashboard.V1.LogsPanel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          resource_names: [String.t()]
        }

  defstruct filter: "",
            resource_names: []

  field :filter, 1, type: :string
  field :resource_names, 2, repeated: true, type: :string, json_name: "resourceNames"
end
