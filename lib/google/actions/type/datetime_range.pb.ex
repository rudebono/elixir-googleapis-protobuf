defmodule Google.Actions.Type.DateTimeRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start, 1, type: Google.Type.DateTime
  field :end, 2, type: Google.Type.DateTime
end