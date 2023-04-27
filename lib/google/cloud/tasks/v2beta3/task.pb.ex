defmodule Google.Cloud.Tasks.V2beta3.Task.View do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Tasks.V2beta3.Task do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :payload_type, 0

  field :name, 1, type: :string

  field :app_engine_http_request, 3,
    type: Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest,
    json_name: "appEngineHttpRequest",
    oneof: 0

  field :http_request, 11,
    type: Google.Cloud.Tasks.V2beta3.HttpRequest,
    json_name: "httpRequest",
    oneof: 0

  field :pull_message, 13,
    type: Google.Cloud.Tasks.V2beta3.PullMessage,
    json_name: "pullMessage",
    oneof: 0

  field :schedule_time, 4, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :dispatch_deadline, 12, type: Google.Protobuf.Duration, json_name: "dispatchDeadline"
  field :dispatch_count, 6, type: :int32, json_name: "dispatchCount"
  field :response_count, 7, type: :int32, json_name: "responseCount"
  field :first_attempt, 8, type: Google.Cloud.Tasks.V2beta3.Attempt, json_name: "firstAttempt"
  field :last_attempt, 9, type: Google.Cloud.Tasks.V2beta3.Attempt, json_name: "lastAttempt"
  field :view, 10, type: Google.Cloud.Tasks.V2beta3.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta3.Attempt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :dispatch_time, 2, type: Google.Protobuf.Timestamp, json_name: "dispatchTime"
  field :response_time, 3, type: Google.Protobuf.Timestamp, json_name: "responseTime"
  field :response_status, 4, type: Google.Rpc.Status, json_name: "responseStatus"
end