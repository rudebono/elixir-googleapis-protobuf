defmodule Google.Devtools.Cloudbuild.V2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.RunWorkflowCustomOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :verb, 3, type: :string, deprecated: false

  field :requested_cancellation, 4,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 5, type: :string, json_name: "apiVersion", deprecated: false
  field :target, 6, type: :string, deprecated: false
  field :pipeline_run_id, 7, type: :string, json_name: "pipelineRunId", deprecated: false
end