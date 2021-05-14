defmodule Google.Appengine.V1beta.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          standard_environment_available: boolean,
          flexible_environment_available: boolean,
          search_api_available: boolean
        }

  defstruct [
    :standard_environment_available,
    :flexible_environment_available,
    :search_api_available
  ]

  field :standard_environment_available, 2, type: :bool
  field :flexible_environment_available, 4, type: :bool
  field :search_api_available, 6, type: :bool
end
