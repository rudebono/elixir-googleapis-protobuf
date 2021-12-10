defmodule Google.Actions.Sdk.V2.CapabilityRequirement.SurfaceCapability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SURFACE_CAPABILITY_UNSPECIFIED
          | :AUDIO_OUTPUT
          | :SCREEN_OUTPUT
          | :MEDIA_RESPONSE_AUDIO
          | :WEB_BROWSER
          | :ACCOUNT_LINKING
          | :INTERACTIVE_CANVAS
          | :HOME_STORAGE

  field :SURFACE_CAPABILITY_UNSPECIFIED, 0
  field :AUDIO_OUTPUT, 1
  field :SCREEN_OUTPUT, 2
  field :MEDIA_RESPONSE_AUDIO, 3
  field :WEB_BROWSER, 4
  field :ACCOUNT_LINKING, 7
  field :INTERACTIVE_CANVAS, 8
  field :HOME_STORAGE, 9
end
defmodule Google.Actions.Sdk.V2.SurfaceRequirements do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          minimum_requirements: [Google.Actions.Sdk.V2.CapabilityRequirement.t()]
        }

  defstruct minimum_requirements: []

  field :minimum_requirements, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.CapabilityRequirement,
    json_name: "minimumRequirements"
end
defmodule Google.Actions.Sdk.V2.CapabilityRequirement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          capability: Google.Actions.Sdk.V2.CapabilityRequirement.SurfaceCapability.t()
        }

  defstruct capability: :SURFACE_CAPABILITY_UNSPECIFIED

  field :capability, 1,
    type: Google.Actions.Sdk.V2.CapabilityRequirement.SurfaceCapability,
    enum: true
end
