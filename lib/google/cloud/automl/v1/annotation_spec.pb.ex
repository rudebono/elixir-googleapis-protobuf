defmodule Google.Cloud.Automl.V1.AnnotationSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          example_count: integer
        }

  defstruct [:name, :display_name, :example_count]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :example_count, 9, type: :int32
end
