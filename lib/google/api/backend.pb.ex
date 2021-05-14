defmodule Google.Api.BackendRule.PathTranslation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PATH_TRANSLATION_UNSPECIFIED | :CONSTANT_ADDRESS | :APPEND_PATH_TO_ADDRESS

  field :PATH_TRANSLATION_UNSPECIFIED, 0

  field :CONSTANT_ADDRESS, 1

  field :APPEND_PATH_TO_ADDRESS, 2
end

defmodule Google.Api.Backend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Api.BackendRule.t()]
        }

  defstruct [:rules]

  field :rules, 1, repeated: true, type: Google.Api.BackendRule
end

defmodule Google.Api.BackendRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication: {atom, any},
          selector: String.t(),
          address: String.t(),
          deadline: float | :infinity | :negative_infinity | :nan,
          min_deadline: float | :infinity | :negative_infinity | :nan,
          operation_deadline: float | :infinity | :negative_infinity | :nan,
          path_translation: Google.Api.BackendRule.PathTranslation.t(),
          protocol: String.t()
        }

  defstruct [
    :authentication,
    :selector,
    :address,
    :deadline,
    :min_deadline,
    :operation_deadline,
    :path_translation,
    :protocol
  ]

  oneof :authentication, 0
  field :selector, 1, type: :string
  field :address, 2, type: :string
  field :deadline, 3, type: :double
  field :min_deadline, 4, type: :double
  field :operation_deadline, 5, type: :double
  field :path_translation, 6, type: Google.Api.BackendRule.PathTranslation, enum: true
  field :jwt_audience, 7, type: :string, oneof: 0
  field :disable_auth, 8, type: :bool, oneof: 0
  field :protocol, 9, type: :string
end
