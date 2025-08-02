defmodule Google.Firestore.Admin.V1.PitrSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :database_uid, 2, type: :bytes, json_name: "databaseUid", deprecated: false

  field :snapshot_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "snapshotTime",
    deprecated: false
end
