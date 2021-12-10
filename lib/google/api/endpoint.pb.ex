defmodule Google.Api.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          aliases: [String.t()],
          target: String.t(),
          allow_cors: boolean
        }

  defstruct name: "",
            aliases: [],
            target: "",
            allow_cors: false

  field :name, 1, type: :string
  field :aliases, 2, repeated: true, type: :string, deprecated: true
  field :target, 101, type: :string
  field :allow_cors, 5, type: :bool, json_name: "allowCors"
end
