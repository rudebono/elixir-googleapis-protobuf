defmodule Google.Cloud.Deploy.V1.ReleaseRenderEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
  field :release, 2, type: :string
end