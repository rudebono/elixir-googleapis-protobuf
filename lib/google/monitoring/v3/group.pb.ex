defmodule Google.Monitoring.V3.Group do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          parent_name: String.t(),
          filter: String.t(),
          is_cluster: boolean
        }

  defstruct name: "",
            display_name: "",
            parent_name: "",
            filter: "",
            is_cluster: false

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :parent_name, 3, type: :string, json_name: "parentName"
  field :filter, 5, type: :string
  field :is_cluster, 6, type: :bool, json_name: "isCluster"
end
