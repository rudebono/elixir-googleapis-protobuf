defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.Capability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :capabilities, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.SurfaceCapabilities.Capability,
    enum: true,
    deprecated: false
end
