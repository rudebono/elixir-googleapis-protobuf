defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupPlanMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup_channel, 1, type: :string, json_name: "backupChannel"
  field :rpo_risk_level, 2, type: :int32, json_name: "rpoRiskLevel"
  field :rpo_risk_reason, 3, type: :string, json_name: "rpoRiskReason"
end
