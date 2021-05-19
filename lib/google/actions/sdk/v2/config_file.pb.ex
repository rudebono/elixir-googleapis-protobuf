defmodule Google.Actions.Sdk.V2.ConfigFiles do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_files: [Google.Actions.Sdk.V2.ConfigFile.t()]
        }

  defstruct [:config_files]

  field :config_files, 1, repeated: true, type: Google.Actions.Sdk.V2.ConfigFile
end

defmodule Google.Actions.Sdk.V2.ConfigFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: {atom, any},
          file_path: String.t()
        }

  defstruct [:file, :file_path]

  oneof :file, 0
  field :file_path, 1, type: :string
  field :manifest, 2, type: Google.Actions.Sdk.V2.Manifest, oneof: 0
  field :actions, 3, type: Google.Actions.Sdk.V2.Actions, oneof: 0
  field :settings, 4, type: Google.Actions.Sdk.V2.Settings, oneof: 0
  field :webhook, 6, type: Google.Actions.Sdk.V2.Webhook, oneof: 0
  field :intent, 7, type: Google.Actions.Sdk.V2.Interactionmodel.Intent, oneof: 0
  field :type, 8, type: Google.Actions.Sdk.V2.Interactionmodel.Type.Type, oneof: 0
  field :entity_set, 15, type: Google.Actions.Sdk.V2.Interactionmodel.EntitySet, oneof: 0

  field :global_intent_event, 9,
    type: Google.Actions.Sdk.V2.Interactionmodel.GlobalIntentEvent,
    oneof: 0

  field :scene, 10, type: Google.Actions.Sdk.V2.Interactionmodel.Scene, oneof: 0

  field :static_prompt, 11,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt,
    oneof: 0

  field :account_linking_secret, 13, type: Google.Actions.Sdk.V2.AccountLinkingSecret, oneof: 0
  field :resource_bundle, 12, type: Google.Protobuf.Struct, oneof: 0
end
