defmodule Google.Cloud.Deploy.V1.DeployPolicyNotificationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :message, 1, type: :string
  field :deploy_policy, 2, type: :string, json_name: "deployPolicy"
  field :deploy_policy_uid, 3, type: :string, json_name: "deployPolicyUid"
  field :type, 4, type: Google.Cloud.Deploy.V1.Type, enum: true
end