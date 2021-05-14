defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRun.ExecutionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXECUTION_STATE_UNSPECIFIED | :QUEUED | :SCANNING | :FINISHED

  field :EXECUTION_STATE_UNSPECIFIED, 0

  field :QUEUED, 1

  field :SCANNING, 2

  field :FINISHED, 3
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRun.ResultState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESULT_STATE_UNSPECIFIED | :SUCCESS | :ERROR | :KILLED

  field :RESULT_STATE_UNSPECIFIED, 0

  field :SUCCESS, 1

  field :ERROR, 2

  field :KILLED, 3
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          execution_state: Google.Cloud.Websecurityscanner.V1beta.ScanRun.ExecutionState.t(),
          result_state: Google.Cloud.Websecurityscanner.V1beta.ScanRun.ResultState.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          urls_crawled_count: integer,
          urls_tested_count: integer,
          has_vulnerabilities: boolean,
          progress_percent: integer,
          error_trace: Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace.t() | nil,
          warning_traces: [Google.Cloud.Websecurityscanner.V1beta.ScanRunWarningTrace.t()]
        }

  defstruct [
    :name,
    :execution_state,
    :result_state,
    :start_time,
    :end_time,
    :urls_crawled_count,
    :urls_tested_count,
    :has_vulnerabilities,
    :progress_percent,
    :error_trace,
    :warning_traces
  ]

  field :name, 1, type: :string

  field :execution_state, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun.ExecutionState,
    enum: true

  field :result_state, 3,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun.ResultState,
    enum: true

  field :start_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
  field :urls_crawled_count, 6, type: :int64
  field :urls_tested_count, 7, type: :int64
  field :has_vulnerabilities, 8, type: :bool
  field :progress_percent, 9, type: :int32
  field :error_trace, 10, type: Google.Cloud.Websecurityscanner.V1beta.ScanRunErrorTrace

  field :warning_traces, 11,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRunWarningTrace
end
