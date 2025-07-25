defmodule Google.Cloud.Bigquery.V2.JobStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_result, 1,
    type: Google.Cloud.Bigquery.V2.ErrorProto,
    json_name: "errorResult",
    deprecated: false

  field :errors, 2, repeated: true, type: Google.Cloud.Bigquery.V2.ErrorProto, deprecated: false
  field :state, 3, type: :string, deprecated: false
end
