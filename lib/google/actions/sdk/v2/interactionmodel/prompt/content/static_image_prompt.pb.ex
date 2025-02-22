defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :GRAY, 1
  field :WHITE, 2
  field :CROPPED, 3
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url, 1, type: :string, deprecated: false
  field :alt, 2, type: :string, deprecated: false
  field :height, 3, type: :int32, deprecated: false
  field :width, 4, type: :int32, deprecated: false
end
