defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.Capability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :SPEECH
          | :RICH_RESPONSE
          | :LONG_FORM_AUDIO
          | :INTERACTIVE_CANVAS
          | :WEB_LINK
          | :HOME_STORAGE

  field :UNSPECIFIED, 0
  field :SPEECH, 1
  field :RICH_RESPONSE, 2
  field :LONG_FORM_AUDIO, 3
  field :INTERACTIVE_CANVAS, 4
  field :WEB_LINK, 5
  field :HOME_STORAGE, 6
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          capabilities: [
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.Capability.t()
          ]
        }

  defstruct capabilities: []

  field :capabilities, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.Capability,
    enum: true,
    deprecated: false
end
