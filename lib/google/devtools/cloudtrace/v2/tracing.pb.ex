defmodule Google.Devtools.Cloudtrace.V2.BatchWriteSpansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spans: [Google.Devtools.Cloudtrace.V2.Span.t()]
        }

  defstruct [:name, :spans]

  field :name, 1, type: :string
  field :spans, 2, repeated: true, type: Google.Devtools.Cloudtrace.V2.Span
end
