defmodule Google.Ads.Googleads.V18.Common.CustomParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 3, proto3_optional: true, type: :string
  field :value, 4, proto3_optional: true, type: :string
end