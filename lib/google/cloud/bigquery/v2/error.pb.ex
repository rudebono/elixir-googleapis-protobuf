defmodule Google.Cloud.Bigquery.V2.ErrorProto do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string
  field :location, 2, type: :string
  field :debug_info, 3, type: :string, json_name: "debugInfo"
  field :message, 4, type: :string
end
