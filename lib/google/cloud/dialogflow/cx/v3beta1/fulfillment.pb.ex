defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.SetParameterAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parameter, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case.CaseContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cases_or_message, 0

  field :message, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage, oneof: 0

  field :additional_cases, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases,
    json_name: "additionalCases",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :condition, 1, type: :string

  field :case_content, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case.CaseContent,
    json_name: "caseContent"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases.Case
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.GeneratorSettings.InputParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.GeneratorSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generator, 1, type: :string, deprecated: false

  field :input_parameters, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.GeneratorSettings.InputParametersEntry,
    json_name: "inputParameters",
    map: true

  field :output_parameter, 3, type: :string, json_name: "outputParameter", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage
  field :webhook, 2, type: :string, deprecated: false
  field :return_partial_responses, 8, type: :bool, json_name: "returnPartialResponses"
  field :tag, 3, type: :string

  field :set_parameter_actions, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.SetParameterAction,
    json_name: "setParameterActions"

  field :conditional_cases, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.ConditionalCases,
    json_name: "conditionalCases"

  field :advanced_settings, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings,
    json_name: "advancedSettings"

  field :enable_generative_fallback, 12, type: :bool, json_name: "enableGenerativeFallback"

  field :generators, 13,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment.GeneratorSettings
end
