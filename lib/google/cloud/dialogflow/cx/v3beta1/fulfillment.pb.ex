defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.SetParameterAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:parameter, :value]

  field :parameter, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case.CaseContent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cases_or_message: {atom, any}
        }

  defstruct [:cases_or_message]

  oneof :cases_or_message, 0
  field :message, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage, oneof: 0

  field :additional_cases, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: String.t(),
          case_content: [
            Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case.CaseContent.t()
          ]
        }

  defstruct [:condition, :case_content]

  field :condition, 1, type: :string

  field :case_content, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case.CaseContent
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cases: [Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case.t()]
        }

  defstruct [:cases]

  field :cases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.t()],
          webhook: String.t(),
          tag: String.t(),
          set_parameter_actions: [
            Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.SetParameterAction.t()
          ],
          conditional_cases: [Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.t()]
        }

  defstruct [:messages, :webhook, :tag, :set_parameter_actions, :conditional_cases]

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage
  field :webhook, 2, type: :string
  field :tag, 3, type: :string

  field :set_parameter_actions, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.SetParameterAction

  field :conditional_cases, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases
end
