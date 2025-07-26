defmodule Google.Cloud.Bigquery.V2.ExternalDatasetReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_source, 2, type: :string, json_name: "externalSource", deprecated: false
  field :connection, 3, type: :string, deprecated: false
end
