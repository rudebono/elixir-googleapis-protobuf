defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestResult do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TEST_RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference.DiffType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DIFF_TYPE_UNSPECIFIED, 0
  field :INTENT, 1
  field :PAGE, 2
  field :PARAMETERS, 3
  field :UTTERANCE, 4
  field :FLOW, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest.CoverageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COVERAGE_TYPE_UNSPECIFIED, 0
  field :INTENT, 1
  field :PAGE_TRANSITION, 2
  field :TRANSITION_ROUTE_GROUP, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest.TestCaseView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TEST_CASE_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest.DataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :BLOB, 1
  field :JSON, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :tags, 2, repeated: true, type: :string
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :notes, 4, type: :string

  field :test_config, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestConfig,
    json_name: "testConfig"

  field :test_case_conversation_turns, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn,
    json_name: "testCaseConversationTurns"

  field :creation_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "creationTime",
    deprecated: false

  field :last_test_result, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult,
    json_name: "lastTestResult"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :environment, 2, type: :string, deprecated: false

  field :conversation_turns, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn,
    json_name: "conversationTurns"

  field :test_result, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestResult,
    json_name: "testResult",
    enum: true

  field :test_time, 5, type: Google.Protobuf.Timestamp, json_name: "testTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tracking_parameters, 1, repeated: true, type: :string, json_name: "trackingParameters"
  field :flow, 2, type: :string, deprecated: false
  field :page, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.UserInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput
  field :injected_parameters, 2, type: Google.Protobuf.Struct, json_name: "injectedParameters"
  field :is_webhook_enabled, 3, type: :bool, json_name: "isWebhookEnabled"
  field :enable_sentiment_analysis, 7, type: :bool, json_name: "enableSentimentAnalysis"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.VirtualAgentOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :session_parameters, 4, type: Google.Protobuf.Struct, json_name: "sessionParameters"

  field :differences, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference,
    deprecated: false

  field :diagnostic_info, 6,
    type: Google.Protobuf.Struct,
    json_name: "diagnosticInfo",
    deprecated: false

  field :triggered_intent, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent,
    json_name: "triggeredIntent"

  field :current_page, 8, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, json_name: "currentPage"

  field :text_responses, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.Text,
    json_name: "textResponses"

  field :status, 10, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_input, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.UserInput,
    json_name: "userInput"

  field :virtual_agent_output, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.VirtualAgentOutput,
    json_name: "virtualAgentOutput"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference.DiffType, enum: true
  field :description, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :kind, 0

  field :page, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, oneof: 0
  field :flow, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Flow, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.Transition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :detail, 0

  field :source, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode
  field :index, 4, type: :int32
  field :target, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode
  field :covered, 3, type: :bool

  field :transition_route, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute,
    json_name: "transitionRoute",
    oneof: 0

  field :event_handler, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EventHandler,
    json_name: "eventHandler",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transitions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.Transition

  field :coverage_score, 2, type: :float, json_name: "coverageScore"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage.Transition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transition_route, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute,
    json_name: "transitionRoute"

  field :covered, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :route_group, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup,
    json_name: "routeGroup"

  field :transitions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage.Transition

  field :coverage_score, 3, type: :float, json_name: "coverageScore"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :coverages, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage

  field :coverage_score, 2, type: :float, json_name: "coverageScore"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage.Intent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :intent, 1, type: :string, deprecated: false
  field :covered, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :intents, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage.Intent

  field :coverage_score, 2, type: :float, json_name: "coverageScore"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :agent, 3, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest.CoverageType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :coverage_type, 0

  field :agent, 5, type: :string, deprecated: false

  field :intent_coverage, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage,
    json_name: "intentCoverage",
    oneof: 0

  field :transition_coverage, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage,
    json_name: "transitionCoverage",
    oneof: 0

  field :route_group_coverage, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage,
    json_name: "routeGroupCoverage",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :view, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest.TestCaseView,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_cases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase,
    json_name: "testCases"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchDeleteTestCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateTestCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :test_case, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase,
    json_name: "testCase",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateTestCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_case, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase,
    json_name: "testCase",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetTestCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :environment, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :environment, 2, type: :string, deprecated: false
  field :test_cases, 3, repeated: true, type: :string, json_name: "testCases", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestError
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_case, 1, type: :string, json_name: "testCase", deprecated: false
  field :status, 2, type: Google.Rpc.Status
  field :test_time, 3, type: Google.Protobuf.Timestamp, json_name: "testTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false
  field :gcs_uri, 2, type: :string, json_name: "gcsUri", oneof: 0
  field :content, 3, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :names, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseError
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_case, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase, json_name: "testCase"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :parent, 1, type: :string, deprecated: false
  field :gcs_uri, 2, type: :string, json_name: "gcsUri", oneof: 0

  field :data_format, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest.DataFormat,
    json_name: "dataFormat",
    enum: true

  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", oneof: 0
  field :content, 2, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCaseResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCaseResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :test_case_results, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult,
    json_name: "testCaseResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetTestCaseResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCases.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.TestCases",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListTestCases,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesResponse

  rpc :BatchDeleteTestCases,
      Google.Cloud.Dialogflow.Cx.V3beta1.BatchDeleteTestCasesRequest,
      Google.Protobuf.Empty

  rpc :GetTestCase,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetTestCaseRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TestCase

  rpc :CreateTestCase,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateTestCaseRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TestCase

  rpc :UpdateTestCase,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateTestCaseRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TestCase

  rpc :RunTestCase,
      Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseRequest,
      Google.Longrunning.Operation

  rpc :BatchRunTestCases,
      Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesRequest,
      Google.Longrunning.Operation

  rpc :CalculateCoverage,
      Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageResponse

  rpc :ImportTestCases,
      Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesRequest,
      Google.Longrunning.Operation

  rpc :ExportTestCases,
      Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest,
      Google.Longrunning.Operation

  rpc :ListTestCaseResults,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCaseResultsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCaseResultsResponse

  rpc :GetTestCaseResult,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetTestCaseResultRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCases.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.TestCases.Service
end