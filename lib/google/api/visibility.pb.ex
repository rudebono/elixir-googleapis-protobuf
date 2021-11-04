defmodule Google.Api.Visibility do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Api.VisibilityRule.t()]
        }

  defstruct [:rules]

  field :rules, 1, repeated: true, type: Google.Api.VisibilityRule

  def transform_module(), do: nil
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

  def transform_module(), do: nil
end

defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  extend Google.Protobuf.EnumOptions, :enum_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "enumVisibility"

  extend Google.Protobuf.EnumValueOptions, :value_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "valueVisibility"

  extend Google.Protobuf.FieldOptions, :field_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "fieldVisibility"

  extend Google.Protobuf.MessageOptions, :message_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "messageVisibility"

  extend Google.Protobuf.MethodOptions, :method_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "methodVisibility"

  extend Google.Protobuf.ServiceOptions, :api_visibility, 72_295_727,
    optional: true,
    type: Google.Api.VisibilityRule,
    json_name: "apiVisibility"
end
