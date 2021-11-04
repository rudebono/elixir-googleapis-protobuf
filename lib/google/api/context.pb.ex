defmodule Google.Api.Context do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Api.ContextRule.t()]
        }

  defstruct [:rules]

  field :rules, 1, repeated: true, type: Google.Api.ContextRule

  def transform_module(), do: nil
end

defmodule Google.Api.ContextRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          requested: [String.t()],
          provided: [String.t()],
          allowed_request_extensions: [String.t()],
          allowed_response_extensions: [String.t()]
        }

  defstruct [
    :selector,
    :requested,
    :provided,
    :allowed_request_extensions,
    :allowed_response_extensions
  ]

  field :selector, 1, type: :string
  field :requested, 2, repeated: true, type: :string
  field :provided, 3, repeated: true, type: :string

  field :allowed_request_extensions, 4,
    repeated: true,
    type: :string,
    json_name: "allowedRequestExtensions"

  field :allowed_response_extensions, 5,
    repeated: true,
    type: :string,
    json_name: "allowedResponseExtensions"

  def transform_module(), do: nil
end
