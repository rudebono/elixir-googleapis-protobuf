defmodule Google.Cloud.Deploy.V1.TargetNotificationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message, 1, type: :string
  field :target, 2, type: :string
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end
