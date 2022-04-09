defmodule Google.Cloud.Datacatalog.V1.IntegratedSystem do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INTEGRATED_SYSTEM_UNSPECIFIED
          | :BIGQUERY
          | :CLOUD_PUBSUB
          | :DATAPROC_METASTORE
          | :DATAPLEX

  field :INTEGRATED_SYSTEM_UNSPECIFIED, 0
  field :BIGQUERY, 1
  field :CLOUD_PUBSUB, 2
  field :DATAPROC_METASTORE, 3
  field :DATAPLEX, 4
end
defmodule Google.Cloud.Datacatalog.V1.PersonalDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          starred: boolean,
          star_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct starred: false,
            star_time: nil

  field :starred, 1, type: :bool
  field :star_time, 2, type: Google.Protobuf.Timestamp, json_name: "starTime"
end
