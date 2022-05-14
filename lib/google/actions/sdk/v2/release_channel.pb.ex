defmodule Google.Actions.Sdk.V2.ReleaseChannel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :current_version, 2, type: :string, json_name: "currentVersion"
  field :pending_version, 3, type: :string, json_name: "pendingVersion"
end
