defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          list: boolean
        }

  defstruct [:name, :list]

  field :name, 1, type: :string
  field :list, 2, type: :bool

  def transform_module(), do: nil
end
