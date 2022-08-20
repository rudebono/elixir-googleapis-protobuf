defmodule Google.Actions.Sdk.V2.CapabilityRequirement.SurfaceCapability do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :minimum_requirements, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.CapabilityRequirement,
    json_name: "minimumRequirements"
end

defmodule Google.Actions.Sdk.V2.CapabilityRequirement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :capability, 1,
    type: Google.Actions.Sdk.V2.CapabilityRequirement.SurfaceCapability,
    enum: true
end