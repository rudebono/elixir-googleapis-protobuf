defmodule Google.Maps.Places.V1.References do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :reviews, 1, repeated: true, type: Google.Maps.Places.V1.Review
  field :places, 2, repeated: true, type: :string, deprecated: false
end
