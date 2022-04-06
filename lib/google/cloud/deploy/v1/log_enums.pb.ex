defmodule Google.Cloud.Deploy.V1.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :TYPE_PUBSUB_NOTIFICATION_FAILURE
          | :TYPE_RENDER_STATUES_CHANGE

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_PUBSUB_NOTIFICATION_FAILURE, 1
  field :TYPE_RENDER_STATUES_CHANGE, 2
end
