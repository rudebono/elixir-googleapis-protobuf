defmodule Google.Cloud.Aiplatform.V1beta1.UserActionReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference: {atom, any},
          method: String.t()
        }

  defstruct [:reference, :method]

  oneof :reference, 0
  field :operation, 1, type: :string, oneof: 0
  field :data_labeling_job, 2, type: :string, oneof: 0
  field :method, 3, type: :string
end
