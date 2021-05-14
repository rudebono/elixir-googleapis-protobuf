defmodule Google.Genomics.V1.CigarUnit.Operation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_UNSPECIFIED
          | :ALIGNMENT_MATCH
          | :INSERT
          | :DELETE
          | :SKIP
          | :CLIP_SOFT
          | :CLIP_HARD
          | :PAD
          | :SEQUENCE_MATCH
          | :SEQUENCE_MISMATCH

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: Google.Genomics.V1.CigarUnit.Operation.t(),
          operation_length: integer,
          reference_sequence: String.t()
        }

  defstruct [:operation, :operation_length, :reference_sequence]

  field :operation, 1, type: Google.Genomics.V1.CigarUnit.Operation, enum: true
  field :operation_length, 2, type: :int64
  field :reference_sequence, 3, type: :string
end
