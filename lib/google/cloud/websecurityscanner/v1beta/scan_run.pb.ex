defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRun.ExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EXECUTION_STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :SCANNING, 2
  field :FINISHED, 3
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRun.ResultState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESULT_STATE_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :ERROR, 2
  field :KILLED, 3
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :execution_state, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun.ExecutionState,
    json_name: "executionState",
    enum: true

  field :result_state, 3,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun.ResultState,
    json_name: "resultState",
    enum: true

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :urls_crawled_count, 6, type: :int64, json_name: "urlsCrawledCount"
  field :urls_tested_count, 7, type: :int64, json_name: "urlsTestedCount"
  field :has_vulnerabilities, 8, type: :bool, json_name: "hasVulnerabilities"
  field :progress_percent, 9, type: :int32, json_name: "progressPercent"

  field :error_trace, 10,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace,
    json_name: "errorTrace"

  field :warning_traces, 11,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRunWarningTrace,
    json_name: "warningTraces"
end
