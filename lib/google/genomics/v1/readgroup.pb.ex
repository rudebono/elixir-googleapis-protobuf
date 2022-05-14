defmodule Google.Genomics.V1.ReadGroup.Experiment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :library_id, 1, type: :string, json_name: "libraryId"
  field :platform_unit, 2, type: :string, json_name: "platformUnit"
  field :sequencing_center, 3, type: :string, json_name: "sequencingCenter"
  field :instrument_model, 4, type: :string, json_name: "instrumentModel"
end
defmodule Google.Genomics.V1.ReadGroup.Program do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :command_line, 1, type: :string, json_name: "commandLine"
  field :id, 2, type: :string
  field :name, 3, type: :string
  field :prev_program_id, 4, type: :string, json_name: "prevProgramId"
  field :version, 5, type: :string
end
defmodule Google.Genomics.V1.ReadGroup.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end
defmodule Google.Genomics.V1.ReadGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :name, 3, type: :string
  field :description, 4, type: :string
  field :sample_id, 5, type: :string, json_name: "sampleId"
  field :experiment, 6, type: Google.Genomics.V1.ReadGroup.Experiment
  field :predicted_insert_size, 7, type: :int32, json_name: "predictedInsertSize"
  field :programs, 10, repeated: true, type: Google.Genomics.V1.ReadGroup.Program
  field :reference_set_id, 11, type: :string, json_name: "referenceSetId"
  field :info, 12, repeated: true, type: Google.Genomics.V1.ReadGroup.InfoEntry, map: true
end
