defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.InstanceEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          verb: String.t(),
          stage: String.t(),
          msg: String.t(),
          trace_id: String.t(),
          node_id: String.t()
        }

  defstruct [:verb, :stage, :msg, :trace_id, :node_id]

  field :verb, 1, type: :string
  field :stage, 2, type: :string
  field :msg, 3, type: :string
  field :trace_id, 4, type: :string
  field :node_id, 5, type: :string
end
