defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.Suggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t()
        }

  defstruct [:title]

  field :title, 1, type: :string

  def transform_module(), do: nil
end
