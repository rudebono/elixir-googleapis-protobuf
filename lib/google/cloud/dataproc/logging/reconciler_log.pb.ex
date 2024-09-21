defmodule Google.Cloud.Dataproc.Logging.ReconciliationDecisionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RECONCILIATION_DECISION_TYPE_UNSPECIFIED, 0
  field :RECONCILIATION_TERMINATE_SESSION, 1
end

defmodule Google.Cloud.Dataproc.Logging.ReconciliationLog.Inputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :idle_duration, 1, type: Google.Protobuf.Duration, json_name: "idleDuration"
  field :idle_ttl, 2, type: Google.Protobuf.Duration, json_name: "idleTtl"
  field :session_lifetime, 3, type: Google.Protobuf.Duration, json_name: "sessionLifetime"
  field :ttl, 4, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Dataproc.Logging.ReconciliationLog.Outputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :decision, 1, type: Google.Cloud.Dataproc.Logging.ReconciliationDecisionType, enum: true
  field :decision_details, 2, type: :string, json_name: "decisionDetails"
end

defmodule Google.Cloud.Dataproc.Logging.ReconciliationLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :inputs, 1, type: Google.Cloud.Dataproc.Logging.ReconciliationLog.Inputs
  field :outputs, 2, type: Google.Cloud.Dataproc.Logging.ReconciliationLog.Outputs
end

defmodule Google.Cloud.Dataproc.Logging.ReconciliationClusterHealLog.Outputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :repair_operation_id, 1, type: :string, json_name: "repairOperationId"
  field :decision_details, 2, type: :string, json_name: "decisionDetails"
end

defmodule Google.Cloud.Dataproc.Logging.ReconciliationClusterHealLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :outputs, 1, type: Google.Cloud.Dataproc.Logging.ReconciliationClusterHealLog.Outputs
end