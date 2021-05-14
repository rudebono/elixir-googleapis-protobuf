defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot.PromptSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          initial_prompt: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          no_match_prompt1: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          no_match_prompt2: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          no_match_final_prompt: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          no_input_prompt1: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          no_input_prompt2: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          no_input_final_prompt: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil
        }

  defstruct [
    :initial_prompt,
    :no_match_prompt1,
    :no_match_prompt2,
    :no_match_final_prompt,
    :no_input_prompt1,
    :no_input_prompt2,
    :no_input_final_prompt
  ]

  field :initial_prompt, 1, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
  field :no_match_prompt1, 2, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
  field :no_match_prompt2, 3, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
  field :no_match_final_prompt, 4, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
  field :no_input_prompt1, 5, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
  field :no_input_prompt2, 6, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
  field :no_input_final_prompt, 7, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot.CommitBehavior do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          write_session_param: String.t()
        }

  defstruct [:write_session_param]

  field :write_session_param, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot.DefaultValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_param: String.t(),
          constant: Google.Protobuf.Value.t() | nil
        }

  defstruct [:session_param, :constant]

  field :session_param, 1, type: :string
  field :constant, 2, type: Google.Protobuf.Value
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Slot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference.t() | nil,
          required: boolean,
          prompt_settings: Google.Actions.Sdk.V2.Interactionmodel.Slot.PromptSettings.t() | nil,
          commit_behavior: Google.Actions.Sdk.V2.Interactionmodel.Slot.CommitBehavior.t() | nil,
          config: Google.Protobuf.Value.t() | nil,
          default_value: Google.Actions.Sdk.V2.Interactionmodel.Slot.DefaultValue.t() | nil
        }

  defstruct [:name, :type, :required, :prompt_settings, :commit_behavior, :config, :default_value]

  field :name, 1, type: :string
  field :type, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference
  field :required, 3, type: :bool
  field :prompt_settings, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Slot.PromptSettings
  field :commit_behavior, 5, type: Google.Actions.Sdk.V2.Interactionmodel.Slot.CommitBehavior
  field :config, 6, type: Google.Protobuf.Value
  field :default_value, 7, type: Google.Actions.Sdk.V2.Interactionmodel.Slot.DefaultValue
end
