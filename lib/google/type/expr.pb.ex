defmodule Google.Type.Expr do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expression: String.t(),
          title: String.t(),
          description: String.t(),
          location: String.t()
        }

  defstruct [:expression, :title, :description, :location]

  field :expression, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :location, 4, type: :string

  def transform_module(), do: nil
end
