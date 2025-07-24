defmodule Google.Genomics.V1.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reference_name, 1, type: :string, json_name: "referenceName"
  field :position, 2, type: :int64
  field :reverse_strand, 3, type: :bool, json_name: "reverseStrand"
end
