defmodule Google.Actions.Sdk.V2.Conversation.Image.ImageFill do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :GRAY | :WHITE | :CROPPED

  field :UNSPECIFIED, 0

  field :GRAY, 1

  field :WHITE, 2

  field :CROPPED, 3
end

defmodule Google.Actions.Sdk.V2.Conversation.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          alt: String.t(),
          height: integer,
          width: integer
        }

  defstruct [:url, :alt, :height, :width]

  field :url, 1, type: :string
  field :alt, 2, type: :string
  field :height, 3, type: :int32
  field :width, 4, type: :int32
end
