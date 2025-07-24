defmodule Google.Cloud.Deploy.V1.AutomationRunEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
  field :automation_run, 2, type: :string, json_name: "automationRun"
  field :pipeline_uid, 3, type: :string, json_name: "pipelineUid"
  field :automation_id, 4, type: :string, json_name: "automationId"
  field :rule_id, 5, type: :string, json_name: "ruleId"
  field :destination_target_id, 6, type: :string, json_name: "destinationTargetId"
  field :type, 7, type: Google.Cloud.Deploy.V1.Type, enum: true
end
