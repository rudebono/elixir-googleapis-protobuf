defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TEST_RESULT_UNSPECIFIED | :PASSED | :FAILED

  field :TEST_RESULT_UNSPECIFIED, 0

  field :PASSED, 1

  field :FAILED, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference.DiffType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DIFF_TYPE_UNSPECIFIED | :INTENT | :PAGE | :PARAMETERS | :UTTERANCE

  field :DIFF_TYPE_UNSPECIFIED, 0

  field :INTENT, 1

  field :PAGE, 2

  field :PARAMETERS, 3

  field :UTTERANCE, 4
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest.CoverageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COVERAGE_TYPE_UNSPECIFIED
          | :INTENT
          | :PAGE_TRANSITION
          | :TRANSITION_ROUTE_GROUP

  field :COVERAGE_TYPE_UNSPECIFIED, 0

  field :INTENT, 1

  field :PAGE_TRANSITION, 2

  field :TRANSITION_ROUTE_GROUP, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest.TestCaseView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TEST_CASE_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :TEST_CASE_VIEW_UNSPECIFIED, 0

  field :BASIC, 1

  field :FULL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_FORMAT_UNSPECIFIED | :BLOB | :JSON

  field :DATA_FORMAT_UNSPECIFIED, 0

  field :BLOB, 1

  field :JSON, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          tags: [String.t()],
          display_name: String.t(),
          notes: String.t(),
          test_config: Google.Cloud.Dialogflow.Cx.V3beta1.TestConfig.t() | nil,
          test_case_conversation_turns: [Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.t()],
          creation_time: Google.Protobuf.Timestamp.t() | nil,
          last_test_result: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult.t() | nil
        }

  defstruct [
    :name,
    :tags,
    :display_name,
    :notes,
    :test_config,
    :test_case_conversation_turns,
    :creation_time,
    :last_test_result
  ]

  field :name, 1, type: :string
  field :tags, 2, repeated: true, type: :string
  field :display_name, 3, type: :string
  field :notes, 4, type: :string
  field :test_config, 13, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestConfig

  field :test_case_conversation_turns, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn

  field :creation_time, 10, type: Google.Protobuf.Timestamp
  field :last_test_result, 12, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          environment: String.t(),
          conversation_turns: [Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.t()],
          test_result: Google.Cloud.Dialogflow.Cx.V3beta1.TestResult.t(),
          test_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :environment, :conversation_turns, :test_result, :test_time]

  field :name, 1, type: :string
  field :environment, 2, type: :string

  field :conversation_turns, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn

  field :test_result, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestResult, enum: true
  field :test_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracking_parameters: [String.t()],
          flow: String.t()
        }

  defstruct [:tracking_parameters, :flow]

  field :tracking_parameters, 1, repeated: true, type: :string
  field :flow, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.UserInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput.t() | nil,
          injected_parameters: Google.Protobuf.Struct.t() | nil,
          is_webhook_enabled: boolean
        }

  defstruct [:input, :injected_parameters, :is_webhook_enabled]

  field :input, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput
  field :injected_parameters, 2, type: Google.Protobuf.Struct
  field :is_webhook_enabled, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.VirtualAgentOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_parameters: Google.Protobuf.Struct.t() | nil,
          differences: [Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference.t()],
          diagnostic_info: Google.Protobuf.Struct.t() | nil,
          triggered_intent: Google.Cloud.Dialogflow.Cx.V3beta1.Intent.t() | nil,
          current_page: Google.Cloud.Dialogflow.Cx.V3beta1.Page.t() | nil,
          text_responses: [Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.Text.t()],
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :session_parameters,
    :differences,
    :diagnostic_info,
    :triggered_intent,
    :current_page,
    :text_responses,
    :status
  ]

  field :session_parameters, 4, type: Google.Protobuf.Struct

  field :differences, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference

  field :diagnostic_info, 6, type: Google.Protobuf.Struct
  field :triggered_intent, 7, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :current_page, 8, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page

  field :text_responses, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.Text

  field :status, 10, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_input: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.UserInput.t() | nil,
          virtual_agent_output:
            Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.VirtualAgentOutput.t() | nil
        }

  defstruct [:user_input, :virtual_agent_output]

  field :user_input, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.UserInput

  field :virtual_agent_output, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationTurn.VirtualAgentOutput
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference.DiffType.t(),
          description: String.t()
        }

  defstruct [:type, :description]

  field :type, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestRunDifference.DiffType, enum: true
  field :description, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {atom, any}
        }

  defstruct [:kind]

  oneof :kind, 0
  field :page, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, oneof: 0
  field :flow, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Flow, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.Transition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail: {atom, any},
          source: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode.t() | nil,
          index: integer,
          target: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode.t() | nil,
          covered: boolean
        }

  defstruct [:detail, :source, :index, :target, :covered]

  oneof :detail, 0
  field :source, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode
  field :index, 4, type: :int32
  field :target, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.TransitionNode
  field :covered, 3, type: :bool
  field :transition_route, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute, oneof: 0
  field :event_handler, 6, type: Google.Cloud.Dialogflow.Cx.V3beta1.EventHandler, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transitions: [Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.Transition.t()],
          coverage_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:transitions, :coverage_score]

  field :transitions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage.Transition

  field :coverage_score, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage.Transition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transition_route: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute.t() | nil,
          covered: boolean
        }

  defstruct [:transition_route, :covered]

  field :transition_route, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute
  field :covered, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          route_group: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup.t() | nil,
          transitions: [
            Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage.Transition.t()
          ],
          coverage_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:route_group, :transitions, :coverage_score]

  field :route_group, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup

  field :transitions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage.Transition

  field :coverage_score, 3, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          coverages: [
            Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage.t()
          ],
          coverage_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:coverages, :coverage_score]

  field :coverages, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage.Coverage

  field :coverage_score, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: String.t(),
          covered: boolean
        }

  defstruct [:intent, :covered]

  field :intent, 1, type: :string
  field :covered, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage.Intent.t()],
          coverage_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:intents, :coverage_score]

  field :intents, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage.Intent

  field :coverage_score, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: String.t(),
          type: Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest.CoverageType.t()
        }

  defstruct [:agent, :type]

  field :agent, 3, type: :string

  field :type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageRequest.CoverageType,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CalculateCoverageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          coverage_type: {atom, any},
          agent: String.t()
        }

  defstruct [:coverage_type, :agent]

  oneof :coverage_type, 0
  field :agent, 5, type: :string
  field :intent_coverage, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentCoverage, oneof: 0

  field :transition_coverage, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionCoverage,
    oneof: 0

  field :route_group_coverage, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroupCoverage,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest.TestCaseView.t()
        }

  defstruct [:parent, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string

  field :view, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesRequest.TestCaseView,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_cases: [Google.Cloud.Dialogflow.Cx.V3beta1.TestCase.t()],
          next_page_token: String.t()
        }

  defstruct [:test_cases, :next_page_token]

  field :test_cases, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchDeleteTestCasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          names: [String.t()]
        }

  defstruct [:parent, :names]

  field :parent, 1, type: :string
  field :names, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateTestCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          test_case: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase.t() | nil
        }

  defstruct [:parent, :test_case]

  field :parent, 1, type: :string
  field :test_case, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateTestCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_case: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:test_case, :update_mask]

  field :test_case, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetTestCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          environment: String.t()
        }

  defstruct [:name, :environment]

  field :name, 1, type: :string
  field :environment, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RunTestCaseMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment: String.t(),
          test_cases: [String.t()]
        }

  defstruct [:parent, :environment, :test_cases]

  field :parent, 1, type: :string
  field :environment, 2, type: :string
  field :test_cases, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult.t()]
        }

  defstruct [:results]

  field :results, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.BatchRunTestCasesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Cloud.Dialogflow.Cx.V3beta1.TestError.t()]
        }

  defstruct [:errors]

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestError
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_case: String.t(),
          status: Google.Rpc.Status.t() | nil,
          test_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:test_case, :status, :test_time]

  field :test_case, 1, type: :string
  field :status, 2, type: Google.Rpc.Status
  field :test_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t()
        }

  defstruct [:source, :parent]

  oneof :source, 0
  field :parent, 1, type: :string
  field :gcs_uri, 2, type: :string, oneof: 0
  field :content, 3, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          names: [String.t()]
        }

  defstruct [:names]

  field :names, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ImportTestCasesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseError.t()]
        }

  defstruct [:errors]

  field :errors, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseError
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_case: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:test_case, :status]

  field :test_case, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCase
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          parent: String.t(),
          data_format: Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest.DataFormat.t(),
          filter: String.t()
        }

  defstruct [:destination, :parent, :data_format, :filter]

  oneof :destination, 0
  field :parent, 1, type: :string
  field :gcs_uri, 2, type: :string, oneof: 0

  field :data_format, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesRequest.DataFormat,
    enum: true

  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_uri, 1, type: :string, oneof: 0
  field :content, 2, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportTestCasesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCaseResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTestCaseResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          test_case_results: [Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult.t()],
          next_page_token: String.t()
        }

  defstruct [:test_case_results, :next_page_token]

  field :test_case_results, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TestCaseResult

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetTestCaseResultRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TestCases.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.TestCases"

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
