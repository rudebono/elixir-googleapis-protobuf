defmodule Google.Monitoring.V3.SpanContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          span_name: String.t()
        }

  defstruct [:span_name]

  field :span_name, 1, type: :string
end
