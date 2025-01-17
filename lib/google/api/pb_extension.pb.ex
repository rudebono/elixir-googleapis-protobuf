defmodule Google.Api.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0"

  extend Google.Protobuf.MethodOptions, :routing, 72_295_729,
    optional: true,
    type: Google.Api.RoutingRule
end
