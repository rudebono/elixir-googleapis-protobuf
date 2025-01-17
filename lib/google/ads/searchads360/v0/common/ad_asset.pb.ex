defmodule Google.Ads.Searchads360.V0.Common.AdTextAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 4, proto3_optional: true, type: :string
end
