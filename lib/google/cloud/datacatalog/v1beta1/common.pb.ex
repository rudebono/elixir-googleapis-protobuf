defmodule Google.Cloud.Datacatalog.V1beta1.IntegratedSystem do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INTEGRATED_SYSTEM_UNSPECIFIED, 0
  field :BIGQUERY, 1
  field :CLOUD_PUBSUB, 2
end

defmodule Google.Cloud.Datacatalog.V1beta1.ManagingSystem do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MANAGING_SYSTEM_UNSPECIFIED, 0
  field :MANAGING_SYSTEM_DATAPLEX, 1
  field :MANAGING_SYSTEM_OTHER, 2
end
