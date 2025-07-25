defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.Variant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :speech, 1, type: :string, deprecated: false
  field :text, 2, type: :string, deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variants, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticSimplePrompt.Variant
end
