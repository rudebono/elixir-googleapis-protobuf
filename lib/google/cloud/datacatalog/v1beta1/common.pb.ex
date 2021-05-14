defmodule Google.Cloud.Datacatalog.V1beta1.IntegratedSystem do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INTEGRATED_SYSTEM_UNSPECIFIED | :BIGQUERY | :CLOUD_PUBSUB

  field :INTEGRATED_SYSTEM_UNSPECIFIED, 0

  field :BIGQUERY, 1

  field :CLOUD_PUBSUB, 2
end
