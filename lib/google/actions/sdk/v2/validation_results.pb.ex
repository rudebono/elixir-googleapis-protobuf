defmodule Google.Actions.Sdk.V2.ValidationResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Actions.Sdk.V2.ValidationResult.t()]
        }

  defstruct [:results]

  field :results, 1, repeated: true, type: Google.Actions.Sdk.V2.ValidationResult
end

defmodule Google.Actions.Sdk.V2.ValidationResult.ValidationContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t()
        }

  defstruct [:language_code]

  field :language_code, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.ValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_message: String.t(),
          validation_context: Google.Actions.Sdk.V2.ValidationResult.ValidationContext.t() | nil
        }

  defstruct [:validation_message, :validation_context]

  field :validation_message, 1, type: :string
  field :validation_context, 2, type: Google.Actions.Sdk.V2.ValidationResult.ValidationContext
end
