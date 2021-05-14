defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextExtraction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextExtractionInputs.t()
            | nil
        }

  defstruct [:inputs]

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextExtractionInputs
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextExtractionInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
