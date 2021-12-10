defmodule Google.Cloud.Websecurityscanner.V1.ScanRun.ExecutionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EXECUTION_STATE_UNSPECIFIED | :QUEUED | :SCANNING | :FINISHED

  field :EXECUTION_STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :SCANNING, 2
  field :FINISHED, 3
end
defmodule Google.Cloud.Websecurityscanner.V1.ScanRun.ResultState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESULT_STATE_UNSPECIFIED | :SUCCESS | :ERROR | :KILLED

  field :RESULT_STATE_UNSPECIFIED, 0
  field :SUCCESS, 1
  field :ERROR, 2
  field :KILLED, 3
end
defmodule Google.Cloud.Websecurityscanner.V1.ScanRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          execution_state: Google.Cloud.Websecurityscanner.V1.ScanRun.ExecutionState.t(),
          result_state: Google.Cloud.Websecurityscanner.V1.ScanRun.ResultState.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          urls_crawled_count: integer,
          urls_tested_count: integer,
          has_vulnerabilities: boolean,
          progress_percent: integer,
          error_trace: Google.Cloud.Websecurityscanner.V1.ScanRunErrorTrace.t() | nil,
          warning_traces: [Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace.t()]
        }

  defstruct name: "",
            execution_state: :EXECUTION_STATE_UNSPECIFIED,
            result_state: :RESULT_STATE_UNSPECIFIED,
            start_time: nil,
            end_time: nil,
            urls_crawled_count: 0,
            urls_tested_count: 0,
            has_vulnerabilities: false,
            progress_percent: 0,
            error_trace: nil,
            warning_traces: []

  field :name, 1, type: :string

  field :execution_state, 2,
    type: Google.Cloud.Websecurityscanner.V1.ScanRun.ExecutionState,
    json_name: "executionState",
    enum: true

  field :result_state, 3,
    type: Google.Cloud.Websecurityscanner.V1.ScanRun.ResultState,
    json_name: "resultState",
    enum: true

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :urls_crawled_count, 6, type: :int64, json_name: "urlsCrawledCount"
  field :urls_tested_count, 7, type: :int64, json_name: "urlsTestedCount"
  field :has_vulnerabilities, 8, type: :bool, json_name: "hasVulnerabilities"
  field :progress_percent, 9, type: :int32, json_name: "progressPercent"

  field :error_trace, 10,
    type: Google.Cloud.Websecurityscanner.V1.ScanRunErrorTrace,
    json_name: "errorTrace"

  field :warning_traces, 11,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.ScanRunWarningTrace,
    json_name: "warningTraces"
end
