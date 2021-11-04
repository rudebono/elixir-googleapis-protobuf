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

  defstruct [:first_simple, :content, :last_simple, :suggestions, :link, :override, :canvas]

  field :first_simple, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt,
    json_name: "firstSimple"

  field :content, 3, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticContentPrompt

  field :last_simple, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt,
    json_name: "lastSimple"

  field :suggestions, 5,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.Suggestion

  field :link, 6, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt
  field :override, 7, type: :bool
  field :canvas, 8, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCanvasPrompt

  def transform_module(), do: nil
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

  defstruct [:selector, :prompt_response]

  field :selector, 1, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.Selector

  field :prompt_response, 2,
    type:
      Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.StaticPromptResponse,
    json_name: "promptResponse"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.Selector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          surface_capabilities:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.t() | nil
        }

  defstruct [:surface_capabilities]

  field :surface_capabilities, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities,
    json_name: "surfaceCapabilities"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          candidates: [
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.t()
          ]
        }

  defstruct [:candidates]

  field :candidates, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate

  def transform_module(), do: nil
end
