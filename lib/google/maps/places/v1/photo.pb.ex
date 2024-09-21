defmodule Google.Maps.Places.V1.Photo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :width_px, 2, type: :int32, json_name: "widthPx"
  field :height_px, 3, type: :int32, json_name: "heightPx"

  field :author_attributions, 4,
    repeated: true,
    type: Google.Maps.Places.V1.AuthorAttribution,
    json_name: "authorAttributions"
end