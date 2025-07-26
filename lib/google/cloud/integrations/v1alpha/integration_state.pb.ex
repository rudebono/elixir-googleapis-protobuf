defmodule Google.Cloud.Integrations.V1alpha.IntegrationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INTEGRATION_STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :ACTIVE, 2
  field :ARCHIVED, 3
  field :SNAPSHOT, 4
end
