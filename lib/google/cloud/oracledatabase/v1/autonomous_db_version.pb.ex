defmodule Google.Cloud.Oracledatabase.V1.AutonomousDbVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false

  field :db_workload, 4,
    type: Google.Cloud.Oracledatabase.V1.DBWorkload,
    json_name: "dbWorkload",
    enum: true,
    deprecated: false

  field :workload_uri, 5, type: :string, json_name: "workloadUri", deprecated: false
end
