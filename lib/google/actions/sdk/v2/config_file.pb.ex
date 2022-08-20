defmodule Google.Actions.Sdk.V2.ConfigFiles do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config_files, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.ConfigFile,
    json_name: "configFiles"
end

defmodule Google.Actions.Sdk.V2.ConfigFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :file, 0

  field :file_path, 1, type: :string, json_name: "filePath"
  field :manifest, 2, type: Google.Actions.Sdk.V2.Manifest, oneof: 0
  field :actions, 3, type: Google.Actions.Sdk.V2.Actions, oneof: 0
  field :settings, 4, type: Google.Actions.Sdk.V2.Settings, oneof: 0
  field :webhook, 6, type: Google.Actions.Sdk.V2.Webhook, oneof: 0
  field :intent, 7, type: Google.Actions.Sdk.V2.Interactionmodel.Intent, oneof: 0
  field :type, 8, type: Google.Actions.Sdk.V2.Interactionmodel.Type.Type, oneof: 0

  field :entity_set, 15,
    type: Google.Actions.Sdk.V2.Interactionmodel.EntitySet,
    json_name: "entitySet",
    oneof: 0

  field :global_intent_event, 9,
    type: Google.Actions.Sdk.V2.Interactionmodel.GlobalIntentEvent,
    json_name: "globalIntentEvent",
    oneof: 0

  field :scene, 10, type: Google.Actions.Sdk.V2.Interactionmodel.Scene, oneof: 0

  field :static_prompt, 11,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt,
    json_name: "staticPrompt",
    oneof: 0

  field :account_linking_secret, 13,
    type: Google.Actions.Sdk.V2.AccountLinkingSecret,
    json_name: "accountLinkingSecret",
    oneof: 0

  field :resource_bundle, 12, type: Google.Protobuf.Struct, json_name: "resourceBundle", oneof: 0
end