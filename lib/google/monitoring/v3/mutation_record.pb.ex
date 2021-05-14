defmodule Google.Monitoring.V3.MutationRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mutate_time: Google.Protobuf.Timestamp.t() | nil,
          mutated_by: String.t()
        }

  defstruct [:mutate_time, :mutated_by]

  field :mutate_time, 1, type: Google.Protobuf.Timestamp
  field :mutated_by, 2, type: :string
end
