defmodule Google.Firestore.V1.AggregationResult.AggregateFieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Firestore.V1.Value
end

defmodule Google.Firestore.V1.AggregationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :aggregate_fields, 2,
    repeated: true,
    type: Google.Firestore.V1.AggregationResult.AggregateFieldsEntry,
    json_name: "aggregateFields",
    map: true
end