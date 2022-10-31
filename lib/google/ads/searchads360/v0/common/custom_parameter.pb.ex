defmodule Google.Ads.Searchads360.V0.Common.CustomParameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 3, proto3_optional: true, type: :string
  field :value, 4, proto3_optional: true, type: :string
end