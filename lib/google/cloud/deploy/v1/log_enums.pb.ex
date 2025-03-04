defmodule Google.Cloud.Deploy.V1.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_PUBSUB_NOTIFICATION_FAILURE, 1
  field :TYPE_RESOURCE_STATE_CHANGE, 3
  field :TYPE_PROCESS_ABORTED, 4
  field :TYPE_RESTRICTION_VIOLATED, 5
  field :TYPE_RESOURCE_DELETED, 6
  field :TYPE_ROLLOUT_UPDATE, 7
  field :TYPE_DEPLOY_POLICY_EVALUATION, 8
  field :TYPE_RENDER_STATUES_CHANGE, 2
end
