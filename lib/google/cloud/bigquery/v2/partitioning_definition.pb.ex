defmodule Google.Cloud.Bigquery.V2.PartitioningDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partitioned_column, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.PartitionedColumn,
    json_name: "partitionedColumn",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.PartitionedColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, proto3_optional: true, type: :string, deprecated: false
end