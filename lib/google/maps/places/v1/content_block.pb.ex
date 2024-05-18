defmodule Google.Maps.Places.V1.ContentBlock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :topic, 1, type: :string
  field :content, 2, type: Google.Type.LocalizedText
  field :references, 3, type: Google.Maps.Places.V1.References
end