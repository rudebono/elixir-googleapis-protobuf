defmodule Google.Cloud.Alloydb.V1.CloudSQLBackupRunSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :backup_run_id, 3, type: :int64, json_name: "backupRunId", deprecated: false
end
