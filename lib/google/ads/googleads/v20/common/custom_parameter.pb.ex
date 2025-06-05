defmodule Google.Ads.Googleads.V20.Common.CustomParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 3, proto3_optional: true, type: :string
  field :value, 4, proto3_optional: true, type: :string
end
