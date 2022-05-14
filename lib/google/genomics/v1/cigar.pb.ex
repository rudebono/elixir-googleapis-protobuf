defmodule Google.Genomics.V1.CigarUnit.Operation do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :ALIGNMENT_MATCH, 1
  field :INSERT, 2
  field :DELETE, 3
  field :SKIP, 4
  field :CLIP_SOFT, 5
  field :CLIP_HARD, 6
  field :PAD, 7
  field :SEQUENCE_MATCH, 8
  field :SEQUENCE_MISMATCH, 9
end
defmodule Google.Genomics.V1.CigarUnit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :operation, 1, type: Google.Genomics.V1.CigarUnit.Operation, enum: true
  field :operation_length, 2, type: :int64, json_name: "operationLength"
  field :reference_sequence, 3, type: :string, json_name: "referenceSequence"
end
