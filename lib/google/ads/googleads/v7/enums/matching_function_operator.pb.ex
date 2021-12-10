defmodule Google.Ads.Googleads.V7.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :IN | :IDENTITY | :EQUALS | :AND | :CONTAINS_ANY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :IN, 2
  field :IDENTITY, 3
  field :EQUALS, 4
  field :AND, 5
  field :CONTAINS_ANY, 6
end
defmodule Google.Ads.Googleads.V7.Enums.MatchingFunctionOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
