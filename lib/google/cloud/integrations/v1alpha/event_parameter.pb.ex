defmodule Google.Cloud.Integrations.V1alpha.EventParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.ValueType
  field :masked, 3, type: :bool
end
