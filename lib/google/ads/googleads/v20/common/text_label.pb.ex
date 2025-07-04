defmodule Google.Ads.Googleads.V20.Common.TextLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :background_color, 3, proto3_optional: true, type: :string, json_name: "backgroundColor"
  field :description, 4, proto3_optional: true, type: :string
end
