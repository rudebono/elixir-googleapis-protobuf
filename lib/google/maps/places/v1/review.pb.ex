defmodule Google.Maps.Places.V1.Review do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :relative_publish_time_description, 2,
    type: :string,
    json_name: "relativePublishTimeDescription"

  field :text, 9, type: Google.Type.LocalizedText
  field :original_text, 12, type: Google.Type.LocalizedText, json_name: "originalText"
  field :rating, 7, type: :double

  field :author_attribution, 13,
    type: Google.Maps.Places.V1.AuthorAttribution,
    json_name: "authorAttribution"

  field :publish_time, 14, type: Google.Protobuf.Timestamp, json_name: "publishTime"
end