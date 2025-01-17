defmodule Google.Cloud.Bigquery.V2.JobCreationReason.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :REQUESTED, 1
  field :LONG_RUNNING, 2
  field :LARGE_RESULTS, 3
  field :OTHER, 4
end

defmodule Google.Cloud.Bigquery.V2.JobCreationReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :code, 1,
    type: Google.Cloud.Bigquery.V2.JobCreationReason.Code,
    enum: true,
    deprecated: false
end
