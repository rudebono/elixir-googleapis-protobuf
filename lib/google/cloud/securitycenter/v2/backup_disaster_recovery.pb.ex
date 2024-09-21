defmodule Google.Cloud.Securitycenter.V2.BackupDisasterRecovery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_template, 1, type: :string, json_name: "backupTemplate"
  field :policies, 2, repeated: true, type: :string
  field :host, 3, type: :string
  field :applications, 4, repeated: true, type: :string
  field :storage_pool, 5, type: :string, json_name: "storagePool"
  field :policy_options, 6, repeated: true, type: :string, json_name: "policyOptions"
  field :profile, 7, type: :string
  field :appliance, 8, type: :string
  field :backup_type, 9, type: :string, json_name: "backupType"
  field :backup_create_time, 10, type: Google.Protobuf.Timestamp, json_name: "backupCreateTime"
end