defmodule Google.Genomics.V1.ReadGroupSet.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.ReadGroupSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :reference_set_id, 3, type: :string, json_name: "referenceSetId"
  field :name, 4, type: :string
  field :filename, 5, type: :string

  field :read_groups, 6,
    repeated: true,
    type: Google.Genomics.V1.ReadGroup,
    json_name: "readGroups"

  field :info, 7, repeated: true, type: Google.Genomics.V1.ReadGroupSet.InfoEntry, map: true
end