defmodule Google.Api.SourceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_files: [Google.Protobuf.Any.t()]
        }

  defstruct [:source_files]

  field :source_files, 1, repeated: true, type: Google.Protobuf.Any
end
