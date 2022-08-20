defmodule Google.Cloud.Datacatalog.V1.IntegratedSystem do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INTEGRATED_SYSTEM_UNSPECIFIED, 0
  field :BIGQUERY, 1
  field :CLOUD_PUBSUB, 2
  field :DATAPROC_METASTORE, 3
  field :DATAPLEX, 4
end

defmodule Google.Cloud.Datacatalog.V1.PersonalDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :starred, 1, type: :bool
  field :star_time, 2, type: Google.Protobuf.Timestamp, json_name: "starTime"
end