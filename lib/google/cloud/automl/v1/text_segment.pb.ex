defmodule Google.Cloud.Automl.V1.TextSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          start_offset: integer,
          end_offset: integer
        }

  defstruct content: "",
            start_offset: 0,
            end_offset: 0

  field :content, 3, type: :string
  field :start_offset, 1, type: :int64, json_name: "startOffset"
  field :end_offset, 2, type: :int64, json_name: "endOffset"
end
