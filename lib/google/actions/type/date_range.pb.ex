defmodule Google.Actions.Type.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: Google.Type.Date
  field :end, 2, type: Google.Type.Date
end
