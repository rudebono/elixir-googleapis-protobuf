defmodule Google.Ads.Googleads.V17.Common.ClickLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :city, 6, proto3_optional: true, type: :string
  field :country, 7, proto3_optional: true, type: :string
  field :metro, 8, proto3_optional: true, type: :string
  field :most_specific, 9, proto3_optional: true, type: :string, json_name: "mostSpecific"
  field :region, 10, proto3_optional: true, type: :string
end