defmodule Google.Appengine.V1beta.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :standard_environment_available, 2, type: :bool, json_name: "standardEnvironmentAvailable"
  field :flexible_environment_available, 4, type: :bool, json_name: "flexibleEnvironmentAvailable"
  field :search_api_available, 6, type: :bool, json_name: "searchApiAvailable", deprecated: false
end
