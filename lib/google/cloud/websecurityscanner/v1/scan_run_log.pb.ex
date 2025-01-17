defmodule Google.Cloud.Websecurityscanner.V1.ScanRunLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :summary, 1, type: :string
  field :name, 2, type: :string

  field :execution_state, 3,
    type: Google.Cloud.Websecurityscanner.V1.ScanRun.ExecutionState,
    json_name: "executionState",
    enum: true

  field :result_state, 4,
    type: Google.Cloud.Websecurityscanner.V1.ScanRun.ResultState,
    json_name: "resultState",
    enum: true

  field :urls_crawled_count, 5, type: :int64, json_name: "urlsCrawledCount"
  field :urls_tested_count, 6, type: :int64, json_name: "urlsTestedCount"
  field :has_findings, 7, type: :bool, json_name: "hasFindings"

  field :error_trace, 8,
    type: Google.Cloud.Websecurityscanner.V1.ScanRunErrorTrace,
    json_name: "errorTrace"
end
