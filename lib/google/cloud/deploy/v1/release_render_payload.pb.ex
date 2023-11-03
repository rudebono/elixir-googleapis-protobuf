defmodule Google.Cloud.Deploy.V1.ReleaseRenderEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :message, 1, type: :string
  field :release, 2, type: :string

  field :release_render_state, 3,
    type: Google.Cloud.Deploy.V1.Release.RenderState,
    json_name: "releaseRenderState",
    enum: true
end