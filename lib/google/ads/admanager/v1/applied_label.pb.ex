defmodule Google.Ads.Admanager.V1.AppliedLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :label, 1, type: :string, deprecated: false
  field :negated, 2, type: :bool
end