defmodule Google.Api.LogDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: [Google.Api.LabelDescriptor.t()],
          description: String.t(),
          display_name: String.t()
        }

  defstruct [:name, :labels, :description, :display_name]

  field :name, 1, type: :string
  field :labels, 2, repeated: true, type: Google.Api.LabelDescriptor
  field :description, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end
