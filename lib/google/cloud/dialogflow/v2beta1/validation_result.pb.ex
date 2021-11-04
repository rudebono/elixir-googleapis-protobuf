defmodule Google.Cloud.Dialogflow.V2beta1.ValidationError.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEVERITY_UNSPECIFIED | :INFO | :WARNING | :ERROR | :CRITICAL

  field :SEVERITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
  field :CRITICAL, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.ValidationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          severity: Google.Cloud.Dialogflow.V2beta1.ValidationError.Severity.t(),
          entries: [String.t()],
          error_message: String.t()
        }

  defstruct [:severity, :entries, :error_message]

  field :severity, 1, type: Google.Cloud.Dialogflow.V2beta1.ValidationError.Severity, enum: true
  field :entries, 3, repeated: true, type: :string
  field :error_message, 4, type: :string, json_name: "errorMessage"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2beta1.ValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_errors: [Google.Cloud.Dialogflow.V2beta1.ValidationError.t()]
        }

  defstruct [:validation_errors]

  field :validation_errors, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ValidationError,
    json_name: "validationErrors"

  def transform_module(), do: nil
end
