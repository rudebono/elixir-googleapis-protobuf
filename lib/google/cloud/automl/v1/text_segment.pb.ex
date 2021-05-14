defmodule Google.Cloud.Automl.V1.TextSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          start_offset: integer,
          end_offset: integer
        }

  defstruct [:content, :start_offset, :end_offset]

  field :content, 3, type: :string
  field :start_offset, 1, type: :int64
  field :end_offset, 2, type: :int64
end
