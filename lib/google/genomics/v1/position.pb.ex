defmodule Google.Genomics.V1.Position do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_name: String.t(),
          position: integer,
          reverse_strand: boolean
        }

  defstruct reference_name: "",
            position: 0,
            reverse_strand: false

  field :reference_name, 1, type: :string, json_name: "referenceName"
  field :position, 2, type: :int64
  field :reverse_strand, 3, type: :bool, json_name: "reverseStrand"
end
