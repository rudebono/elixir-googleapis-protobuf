defmodule Google.Ads.Googleads.V5.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AND | :AND_NOT

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AND, 2

  field :AND_NOT, 3
end

defmodule Google.Ads.Googleads.V5.Enums.UserListCombinedRuleOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
