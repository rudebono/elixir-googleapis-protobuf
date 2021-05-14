defmodule Google.Api.HttpBody do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_type: String.t(),
          data: binary,
          extensions: [Google.Protobuf.Any.t()]
        }

  defstruct [:content_type, :data, :extensions]

  field :content_type, 1, type: :string
  field :data, 2, type: :bytes
  field :extensions, 3, repeated: true, type: Google.Protobuf.Any
end
