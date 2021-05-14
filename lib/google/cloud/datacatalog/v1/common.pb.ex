defmodule Google.Cloud.Datacatalog.V1.IntegratedSystem do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INTEGRATED_SYSTEM_UNSPECIFIED
          | :BIGQUERY
          | :CLOUD_PUBSUB
          | :DATAPROC_METASTORE

  field :INTEGRATED_SYSTEM_UNSPECIFIED, 0

  field :BIGQUERY, 1

  field :CLOUD_PUBSUB, 2

  field :DATAPROC_METASTORE, 3
end
