defmodule Google.Ads.Googleads.V8.Enums.ValueRuleOperationEnum.ValueRuleOperation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADD | :MULTIPLY | :SET

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
  field :MULTIPLY, 3
  field :SET, 4
end
defmodule Google.Ads.Googleads.V8.Enums.ValueRuleOperationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
