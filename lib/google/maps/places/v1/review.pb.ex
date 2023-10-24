defmodule Google.Maps.Places.V1.Review do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :relative_publish_time_description, 2,
    type: :string,
    json_name: "relativePublishTimeDescription",
    deprecated: false

  field :text, 9, type: Google.Type.LocalizedText, deprecated: false

  field :original_text, 12,
    type: Google.Type.LocalizedText,
    json_name: "originalText",
    deprecated: false

  field :rating, 7, type: :double, deprecated: false

  field :author_attribution, 13,
    type: Google.Maps.Places.V1.AuthorAttribution,
    json_name: "authorAttribution",
    deprecated: false

  field :publish_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "publishTime",
    deprecated: false
end