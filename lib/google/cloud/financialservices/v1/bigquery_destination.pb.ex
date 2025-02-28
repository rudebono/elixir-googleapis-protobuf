defmodule Google.Cloud.Financialservices.V1.BigQueryDestination.WriteDisposition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_EMPTY, 1
  field :WRITE_TRUNCATE, 2
end

defmodule Google.Cloud.Financialservices.V1.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_uri, 1, type: :string, json_name: "tableUri", deprecated: false

  field :write_disposition, 2,
    type: Google.Cloud.Financialservices.V1.BigQueryDestination.WriteDisposition,
    json_name: "writeDisposition",
    enum: true,
    deprecated: false
end
