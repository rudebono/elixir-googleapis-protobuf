defmodule Google.Ads.Googleads.V14.Common.TextLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :background_color, 3, proto3_optional: true, type: :string, json_name: "backgroundColor"
  field :description, 4, proto3_optional: true, type: :string
end