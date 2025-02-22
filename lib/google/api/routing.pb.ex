defmodule Google.Api.RoutingRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :routing_parameters, 2,
    repeated: true,
    type: Google.Api.RoutingParameter,
    json_name: "routingParameters"
end

defmodule Google.Api.RoutingParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field, 1, type: :string
  field :path_template, 2, type: :string, json_name: "pathTemplate"
end
