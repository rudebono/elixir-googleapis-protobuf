defmodule Google.Cloud.Websecurityscanner.V1beta.CrawledUrl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :http_method, 1, type: :string, json_name: "httpMethod"
  field :url, 2, type: :string
  field :body, 3, type: :string
end
