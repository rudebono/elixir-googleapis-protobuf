defmodule Google.Cloud.Tasks.V2beta2.Task.View do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Tasks.V2beta2.Task do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :payload_type, 0

  field :name, 1, type: :string

  field :app_engine_http_request, 3,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest,
    json_name: "appEngineHttpRequest",
    oneof: 0

  field :pull_message, 4,
    type: Google.Cloud.Tasks.V2beta2.PullMessage,
    json_name: "pullMessage",
    oneof: 0

  field :http_request, 13,
    type: Google.Cloud.Tasks.V2beta2.HttpRequest,
    json_name: "httpRequest",
    oneof: 0

  field :schedule_time, 5, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :status, 7, type: Google.Cloud.Tasks.V2beta2.TaskStatus
  field :view, 8, type: Google.Cloud.Tasks.V2beta2.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.TaskStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attempt_dispatch_count, 1, type: :int32, json_name: "attemptDispatchCount"
  field :attempt_response_count, 2, type: :int32, json_name: "attemptResponseCount"

  field :first_attempt_status, 3,
    type: Google.Cloud.Tasks.V2beta2.AttemptStatus,
    json_name: "firstAttemptStatus"

  field :last_attempt_status, 4,
    type: Google.Cloud.Tasks.V2beta2.AttemptStatus,
    json_name: "lastAttemptStatus"
end

defmodule Google.Cloud.Tasks.V2beta2.AttemptStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :dispatch_time, 2, type: Google.Protobuf.Timestamp, json_name: "dispatchTime"
  field :response_time, 3, type: Google.Protobuf.Timestamp, json_name: "responseTime"
  field :response_status, 4, type: Google.Rpc.Status, json_name: "responseStatus"
end
