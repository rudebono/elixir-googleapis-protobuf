defmodule Google.Cloud.Deploy.V1.ReleaseNotificationEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
  field :release, 2, type: :string
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end