defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.Variant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speech: String.t(),
          text: String.t()
        }

  defstruct [:speech, :text]

  field :speech, 1, type: :string
  field :text, 2, type: :string
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          variants: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.Variant.t()]
        }

  defstruct [:variants]

  field :variants, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.Variant
end
