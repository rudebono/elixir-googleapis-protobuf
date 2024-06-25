defmodule Google.Cloud.Bigquery.V2.Clustering do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :fields, 1, repeated: true, type: :string
end