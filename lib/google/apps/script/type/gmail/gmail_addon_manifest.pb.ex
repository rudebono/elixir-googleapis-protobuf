defmodule Google.Apps.Script.Type.Gmail.ComposeTrigger.DraftAccess do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :NONE | :METADATA

  field :UNSPECIFIED, 0

  field :NONE, 1

  field :METADATA, 2
end

defmodule Google.Apps.Script.Type.Gmail.GmailAddOnManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          homepage_trigger: Google.Apps.Script.Type.HomepageExtensionPoint.t() | nil,
          contextual_triggers: [Google.Apps.Script.Type.Gmail.ContextualTrigger.t()],
          universal_actions: [Google.Apps.Script.Type.Gmail.UniversalAction.t()],
          compose_trigger: Google.Apps.Script.Type.Gmail.ComposeTrigger.t() | nil,
          authorization_check_function: String.t()
        }

  defstruct [
    :homepage_trigger,
    :contextual_triggers,
    :universal_actions,
    :compose_trigger,
    :authorization_check_function
  ]

  field :homepage_trigger, 14, type: Google.Apps.Script.Type.HomepageExtensionPoint

  field :contextual_triggers, 3,
    repeated: true,
    type: Google.Apps.Script.Type.Gmail.ContextualTrigger

  field :universal_actions, 4, repeated: true, type: Google.Apps.Script.Type.Gmail.UniversalAction
  field :compose_trigger, 12, type: Google.Apps.Script.Type.Gmail.ComposeTrigger
  field :authorization_check_function, 7, type: :string
end

defmodule Google.Apps.Script.Type.Gmail.UniversalAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_type: {atom, any},
          text: String.t()
        }

  defstruct [:action_type, :text]

  oneof :action_type, 0
  field :text, 1, type: :string
  field :open_link, 2, type: :string, oneof: 0
  field :run_function, 3, type: :string, oneof: 0
end

defmodule Google.Apps.Script.Type.Gmail.ComposeTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions: [Google.Apps.Script.Type.MenuItemExtensionPoint.t()],
          draft_access: Google.Apps.Script.Type.Gmail.ComposeTrigger.DraftAccess.t()
        }

  defstruct [:actions, :draft_access]

  field :actions, 5, repeated: true, type: Google.Apps.Script.Type.MenuItemExtensionPoint

  field :draft_access, 4,
    type: Google.Apps.Script.Type.Gmail.ComposeTrigger.DraftAccess,
    enum: true
end

defmodule Google.Apps.Script.Type.Gmail.ContextualTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger: {atom, any},
          on_trigger_function: String.t()
        }

  defstruct [:trigger, :on_trigger_function]

  oneof :trigger, 0
  field :unconditional, 1, type: Google.Apps.Script.Type.Gmail.UnconditionalTrigger, oneof: 0
  field :on_trigger_function, 4, type: :string
end

defmodule Google.Apps.Script.Type.Gmail.UnconditionalTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
