defmodule Google.Maps.Routes.V1.CustomRoute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :route, 11, type: Google.Maps.Routes.V1.Route
  field :token, 12, type: :string
end