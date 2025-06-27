defmodule Google.Shopping.Merchant.Productstudio.V1alpha.InputImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :image, 0

  field :image_uri, 1, type: :string, json_name: "imageUri", oneof: 0
  field :image_bytes, 2, type: :bytes, json_name: "imageBytes", oneof: 0
end
