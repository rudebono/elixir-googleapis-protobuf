defmodule Google.Cloud.Sensitiveaction.Logging.V1.SensitiveAction.SourceLogId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_container, 1, type: :string, json_name: "resourceContainer"
  field :log_time, 2, type: Google.Protobuf.Timestamp, json_name: "logTime"
  field :insert_id, 3, type: :string, json_name: "insertId"
  field :query_uri, 4, type: :string, json_name: "queryUri"
end

defmodule Google.Cloud.Sensitiveaction.Logging.V1.SensitiveAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_type, 1, type: :string, json_name: "actionType"
  field :action_time, 2, type: Google.Protobuf.Timestamp, json_name: "actionTime"
  field :affected_resources, 3, repeated: true, type: :string, json_name: "affectedResources"

  field :source_log_ids, 4,
    repeated: true,
    type: Google.Cloud.Sensitiveaction.Logging.V1.SensitiveAction.SourceLogId,
    json_name: "sourceLogIds"

  field :learn_more_uri, 5, type: :string, json_name: "learnMoreUri"
  field :access, 6, type: Google.Cloud.Securitycenter.V1.Access
end
