defmodule Google.Cloud.Aiplatform.V1.UserActionReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference: {:operation, String.t()} | {:data_labeling_job, String.t()},
          method: String.t()
        }

  defstruct reference: nil,
            method: ""

  oneof :reference, 0

  field :operation, 1, type: :string, oneof: 0
  field :data_labeling_job, 2, type: :string, json_name: "dataLabelingJob", oneof: 0
  field :method, 3, type: :string
end
