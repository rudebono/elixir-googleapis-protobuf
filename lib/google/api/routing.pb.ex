defmodule Google.Api.RoutingRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routing_parameters: [Google.Api.RoutingParameter.t()]
        }

  defstruct [:routing_parameters]

  field :routing_parameters, 2,
    repeated: true,
    type: Google.Api.RoutingParameter,
    json_name: "routingParameters"

  def transform_module(), do: nil
end

defmodule Google.Api.RoutingParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field: String.t(),
          path_template: String.t()
        }

  defstruct [:field, :path_template]

  field :field, 1, type: :string
  field :path_template, 2, type: :string, json_name: "pathTemplate"

  def transform_module(), do: nil
end

defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  extend Google.Protobuf.MethodOptions, :routing, 72_295_729,
    optional: true,
    type: Google.Api.RoutingRule
end
