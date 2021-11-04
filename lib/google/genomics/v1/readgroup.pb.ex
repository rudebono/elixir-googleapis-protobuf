defmodule Google.Genomics.V1.ReadGroup.Experiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          library_id: String.t(),
          platform_unit: String.t(),
          sequencing_center: String.t(),
          instrument_model: String.t()
        }

  defstruct [:library_id, :platform_unit, :sequencing_center, :instrument_model]

  field :library_id, 1, type: :string, json_name: "libraryId"
  field :platform_unit, 2, type: :string, json_name: "platformUnit"
  field :sequencing_center, 3, type: :string, json_name: "sequencingCenter"
  field :instrument_model, 4, type: :string, json_name: "instrumentModel"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.ReadGroup.Program do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          command_line: String.t(),
          id: String.t(),
          name: String.t(),
          prev_program_id: String.t(),
          version: String.t()
        }

  defstruct [:command_line, :id, :name, :prev_program_id, :version]

  field :command_line, 1, type: :string, json_name: "commandLine"
  field :id, 2, type: :string
  field :name, 3, type: :string
  field :prev_program_id, 4, type: :string, json_name: "prevProgramId"
  field :version, 5, type: :string

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.ReadGroup.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.ReadGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          dataset_id: String.t(),
          name: String.t(),
          description: String.t(),
          sample_id: String.t(),
          experiment: Google.Genomics.V1.ReadGroup.Experiment.t() | nil,
          predicted_insert_size: integer,
          programs: [Google.Genomics.V1.ReadGroup.Program.t()],
          reference_set_id: String.t(),
          info: %{String.t() => Google.Protobuf.ListValue.t() | nil}
        }

  defstruct [
    :id,
    :dataset_id,
    :name,
    :description,
    :sample_id,
    :experiment,
    :predicted_insert_size,
    :programs,
    :reference_set_id,
    :info
  ]

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

  def transform_module(), do: nil
end
