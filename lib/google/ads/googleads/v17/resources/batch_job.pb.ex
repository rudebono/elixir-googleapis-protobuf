defmodule Google.Ads.Googleads.V17.Resources.BatchJob.BatchJobMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :creation_date_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "creationDateTime",
    deprecated: false

  field :start_date_time, 7,
    proto3_optional: true,
    type: :string,
    json_name: "startDateTime",
    deprecated: false

  field :completion_date_time, 9,
    proto3_optional: true,
    type: :string,
    json_name: "completionDateTime",
    deprecated: false

  field :estimated_completion_ratio, 10,
    proto3_optional: true,
    type: :double,
    json_name: "estimatedCompletionRatio",
    deprecated: false

  field :operation_count, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "operationCount",
    deprecated: false

  field :executed_operation_count, 12,
    proto3_optional: true,
    type: :int64,
    json_name: "executedOperationCount",
    deprecated: false

  field :execution_limit_seconds, 13,
    proto3_optional: true,
    type: :int32,
    json_name: "executionLimitSeconds",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.BatchJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 7, proto3_optional: true, type: :int64, deprecated: false

  field :next_add_sequence_token, 8,
    proto3_optional: true,
    type: :string,
    json_name: "nextAddSequenceToken",
    deprecated: false

  field :metadata, 4,
    type: Google.Ads.Googleads.V17.Resources.BatchJob.BatchJobMetadata,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V17.Enums.BatchJobStatusEnum.BatchJobStatus,
    enum: true,
    deprecated: false

  field :long_running_operation, 9,
    proto3_optional: true,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false
end
