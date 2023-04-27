defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate.StaticPromptResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :surface_capabilities, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities,
    json_name: "surfaceCapabilities"
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.StaticPromptCandidate
end