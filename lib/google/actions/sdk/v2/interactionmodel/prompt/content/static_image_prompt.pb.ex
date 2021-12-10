defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :GRAY | :WHITE | :CROPPED

  field :UNSPECIFIED, 0
  field :GRAY, 1
  field :WHITE, 2
  field :CROPPED, 3
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          alt: String.t(),
          height: integer,
          width: integer
        }

  defstruct url: "",
            alt: "",
            height: 0,
            width: 0

  field :url, 1, type: :string, deprecated: false
  field :alt, 2, type: :string, deprecated: false
  field :height, 3, type: :int32, deprecated: false
  field :width, 4, type: :int32, deprecated: false
end
