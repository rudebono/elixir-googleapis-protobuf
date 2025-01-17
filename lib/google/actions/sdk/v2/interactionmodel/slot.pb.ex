defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot.PromptSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :initial_prompt, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "initialPrompt"

  field :no_match_prompt1, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "noMatchPrompt1"

  field :no_match_prompt2, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "noMatchPrompt2"

  field :no_match_final_prompt, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "noMatchFinalPrompt"

  field :no_input_prompt1, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "noInputPrompt1"

  field :no_input_prompt2, 6,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "noInputPrompt2"

  field :no_input_final_prompt, 7,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "noInputFinalPrompt"
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot.CommitBehavior do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :write_session_param, 1, type: :string, json_name: "writeSessionParam"
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot.DefaultValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :session_param, 1, type: :string, json_name: "sessionParam", deprecated: false
  field :constant, 2, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference,
    deprecated: false

  field :required, 3, type: :bool, deprecated: false

  field :prompt_settings, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Slot.PromptSettings,
    json_name: "promptSettings",
    deprecated: false

  field :commit_behavior, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.Slot.CommitBehavior,
    json_name: "commitBehavior",
    deprecated: false

  field :config, 6, type: Google.Protobuf.Value, deprecated: false

  field :default_value, 7,
    type: Google.Actions.Sdk.V2.Interactionmodel.Slot.DefaultValue,
    json_name: "defaultValue",
    deprecated: false
end
