defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.MediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MEDIA_TYPE_UNSPECIFIED | :AUDIO | :MEDIA_STATUS_ACK

  field :MEDIA_TYPE_UNSPECIFIED, 0

  field :AUDIO, 1

  field :MEDIA_STATUS_ACK, 2
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.OptionalMediaControls do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OPTIONAL_MEDIA_CONTROLS_UNSPECIFIED | :PAUSED | :STOPPED

  field :OPTIONAL_MEDIA_CONTROLS_UNSPECIFIED, 0

  field :PAUSED, 1

  field :STOPPED, 2
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          media_type:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.MediaType.t(),
          start_offset: Google.Protobuf.Duration.t() | nil,
          optional_media_controls: [
            [
              Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.OptionalMediaControls.t()
            ]
          ],
          media_objects: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.MediaObject.t()]
        }

  defstruct [:media_type, :start_offset, :optional_media_controls, :media_objects]

  field :media_type, 8,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.MediaType,
    enum: true

  field :start_offset, 5, type: Google.Protobuf.Duration

  field :optional_media_controls, 6,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticMediaPrompt.OptionalMediaControls,
    enum: true

  field :media_objects, 7,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.MediaObject
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.MediaObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          url: String.t(),
          image: Google.Actions.Sdk.V2.Interactionmodel.Prompt.MediaImage.t() | nil
        }

  defstruct [:name, :description, :url, :image]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :url, 3, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.MediaImage
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: {atom, any}
        }

  defstruct [:image]

  oneof :image, 0
  field :large, 1, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt, oneof: 0
  field :icon, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt, oneof: 0
end
