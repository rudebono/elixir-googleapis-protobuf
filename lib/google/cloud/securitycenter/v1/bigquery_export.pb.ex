defmodule Google.Cloud.Securitycenter.V1.BigQueryExport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :filter, 3, type: :string
  field :dataset, 4, type: :string

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :most_recent_editor, 7, type: :string, json_name: "mostRecentEditor", deprecated: false
  field :principal, 8, type: :string, deprecated: false
end