defmodule Google.Cloud.Dialogflow.Cx.V3.Fulfillment.SetParameterAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct parameter: "",
            value: nil

  field :parameter, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.Case.CaseContent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cases_or_message:
            {:message, Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.t() | nil}
            | {:additional_cases,
               Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.t() | nil}
        }

  defstruct cases_or_message: nil

  oneof :cases_or_message, 0

  field :message, 1, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage, oneof: 0

  field :additional_cases, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases,
    json_name: "additionalCases",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.Case do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: String.t(),
          case_content: [
            Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.Case.CaseContent.t()
          ]
        }

  defstruct condition: "",
            case_content: []

  field :condition, 1, type: :string

  field :case_content, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.Case.CaseContent,
    json_name: "caseContent"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cases: [Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.Case.t()]
        }

  defstruct cases: []

  field :cases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.Case
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Fulfillment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.t()],
          webhook: String.t(),
          return_partial_responses: boolean,
          tag: String.t(),
          set_parameter_actions: [
            Google.Cloud.Dialogflow.Cx.V3.Fulfillment.SetParameterAction.t()
          ],
          conditional_cases: [Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases.t()]
        }

  defstruct messages: [],
            webhook: "",
            return_partial_responses: false,
            tag: "",
            set_parameter_actions: [],
            conditional_cases: []

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage
  field :webhook, 2, type: :string, deprecated: false
  field :return_partial_responses, 8, type: :bool, json_name: "returnPartialResponses"
  field :tag, 3, type: :string

  field :set_parameter_actions, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.SetParameterAction,
    json_name: "setParameterActions"

  field :conditional_cases, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Fulfillment.ConditionalCases,
    json_name: "conditionalCases"
end
