defmodule Google.Cloud.Bigquery.Migration.Tasks.Assessment.V2alpha.AssessmentTaskDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_path: String.t(),
          output_dataset: String.t(),
          querylogs_path: String.t(),
          data_source: String.t()
        }

  defstruct [:input_path, :output_dataset, :querylogs_path, :data_source]

  field :input_path, 1, type: :string
  field :output_dataset, 2, type: :string
  field :querylogs_path, 3, type: :string
  field :data_source, 4, type: :string
end
