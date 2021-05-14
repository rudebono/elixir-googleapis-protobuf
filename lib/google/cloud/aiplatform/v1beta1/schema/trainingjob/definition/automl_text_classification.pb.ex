defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextClassification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextClassificationInputs.t()
            | nil
        }

  defstruct [:inputs]

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextClassificationInputs
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextClassificationInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          multi_label: boolean
        }

  defstruct [:multi_label]

  field :multi_label, 1, type: :bool
end
