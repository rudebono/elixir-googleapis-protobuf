defmodule Google.Firestore.Admin.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :NOT_AVAILABLE, 3
end

defmodule Google.Firestore.Admin.V1.Backup.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :size_bytes, 1, type: :int64, json_name: "sizeBytes", deprecated: false
  field :document_count, 2, type: :int64, json_name: "documentCount", deprecated: false
  field :index_count, 3, type: :int64, json_name: "indexCount", deprecated: false
end

defmodule Google.Firestore.Admin.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :database, 2, type: :string, deprecated: false
  field :database_uid, 7, type: :string, json_name: "databaseUid", deprecated: false

  field :snapshot_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "snapshotTime",
    deprecated: false

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :stats, 6, type: Google.Firestore.Admin.V1.Backup.Stats, deprecated: false
  field :state, 8, type: Google.Firestore.Admin.V1.Backup.State, enum: true, deprecated: false
end