defmodule Google.Ads.Datamanager.V1.ExperimentalField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end
