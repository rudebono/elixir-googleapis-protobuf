defmodule Google.Api.Visibility do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Api.VisibilityRule.t()]
        }

  defstruct [:rules]

  field :rules, 1, repeated: true, type: Google.Api.VisibilityRule
end

defmodule Google.Api.VisibilityRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          restriction: String.t()
        }

  defstruct [:selector, :restriction]

  field :selector, 1, type: :string
  field :restriction, 2, type: :string
end
