defmodule Google.Cloud.Aiplatform.V1beta1.ManualBatchTuningParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch_size: integer
        }

  defstruct [:batch_size]

  field :batch_size, 1, type: :int32
end
