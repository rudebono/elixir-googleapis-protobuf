defmodule Google.Apps.Script.Type.Gmail.ComposeTrigger.DraftAccess do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :NONE, 1
  field :METADATA, 2
end

defmodule Google.Apps.Script.Type.Gmail.GmailAddOnManifest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :homepage_trigger, 14,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :contextual_triggers, 3,
    repeated: true,
    type: Google.Apps.Script.Type.Gmail.ContextualTrigger,
    json_name: "contextualTriggers"

  field :universal_actions, 4,
    repeated: true,
    type: Google.Apps.Script.Type.Gmail.UniversalAction,
    json_name: "universalActions"

  field :compose_trigger, 12,
    type: Google.Apps.Script.Type.Gmail.ComposeTrigger,
    json_name: "composeTrigger"

  field :authorization_check_function, 7, type: :string, json_name: "authorizationCheckFunction"
end

defmodule Google.Apps.Script.Type.Gmail.UniversalAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :action_type, 0

  field :text, 1, type: :string
  field :open_link, 2, type: :string, json_name: "openLink", oneof: 0
  field :run_function, 3, type: :string, json_name: "runFunction", oneof: 0
end

defmodule Google.Apps.Script.Type.Gmail.ComposeTrigger do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :actions, 5, repeated: true, type: Google.Apps.Script.Type.MenuItemExtensionPoint

  field :draft_access, 4,
    type: Google.Apps.Script.Type.Gmail.ComposeTrigger.DraftAccess,
    json_name: "draftAccess",
    enum: true
end

defmodule Google.Apps.Script.Type.Gmail.ContextualTrigger do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :trigger, 0

  field :unconditional, 1, type: Google.Apps.Script.Type.Gmail.UnconditionalTrigger, oneof: 0
  field :on_trigger_function, 4, type: :string, json_name: "onTriggerFunction"
end

defmodule Google.Apps.Script.Type.Gmail.UnconditionalTrigger do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end