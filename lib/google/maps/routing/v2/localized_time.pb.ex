defmodule Google.Maps.Routing.V2.LocalizedTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time, 1, type: Google.Type.LocalizedText
  field :time_zone, 2, type: :string, json_name: "timeZone"
end
