defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.StaticPromptResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_simple:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.t() | nil,
          content: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticContentPrompt.t() | nil,
          last_simple: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.t() | nil,
          suggestions: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.Suggestion.t()],
          link: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt.t() | nil,
          override: boolean,
          canvas: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCanvasPrompt.t() | nil
        }

  defstruct first_simple: nil,
            content: nil,
            last_simple: nil,
            suggestions: [],
            link: nil,
            override: false,
            canvas: nil

  field :first_simple, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt,
    json_name: "firstSimple",
    deprecated: false

  field :content, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticContentPrompt,
    deprecated: false

  field :last_simple, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt,
    json_name: "lastSimple",
    deprecated: false

  field :suggestions, 5,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.Suggestion,
    deprecated: false

  field :link, 6,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt,
    deprecated: false

  field :override, 7, type: :bool, deprecated: false
  field :canvas, 8, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCanvasPrompt
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.Selector.t() | nil,
          prompt_response:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.StaticPromptResponse.t()
            | nil
        }

  defstruct selector: nil,
            prompt_response: nil

  field :selector, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.Selector,
    deprecated: false

  field :prompt_response, 2,
    type:
      Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.StaticPromptResponse,
    json_name: "promptResponse"
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.Selector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          surface_capabilities:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.t() | nil
        }

  defstruct surface_capabilities: nil

  field :surface_capabilities, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities,
    json_name: "surfaceCapabilities"
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          candidates: [
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.t()
          ]
        }

  defstruct candidates: []

  field :candidates, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate
end
