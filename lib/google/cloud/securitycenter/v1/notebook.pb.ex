defmodule Google.Cloud.Securitycenter.V1.Notebook do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :service, 2, type: :string
  field :last_author, 3, type: :string, json_name: "lastAuthor"
  field :notebook_update_time, 4, type: Google.Protobuf.Timestamp, json_name: "notebookUpdateTime"
end