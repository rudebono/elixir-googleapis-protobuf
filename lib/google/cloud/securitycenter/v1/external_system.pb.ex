defmodule Google.Cloud.Securitycenter.V1.ExternalSystem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :assignees, 2, repeated: true, type: :string
  field :external_uid, 3, type: :string, json_name: "externalUid"
  field :status, 4, type: :string

  field :external_system_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "externalSystemUpdateTime"
end