defmodule Google.Maps.Routes.V1.CustomRoute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          route: Google.Maps.Routes.V1.Route.t() | nil,
          token: String.t()
        }

  defstruct [:route, :token]

  field :route, 11, type: Google.Maps.Routes.V1.Route
  field :token, 12, type: :string
end
