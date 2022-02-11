defmodule Google.Ads.Googleads.V10.Enums.UserListRuleTypeEnum.UserListRuleType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AND_OF_ORS | :OR_OF_ANDS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AND_OF_ORS, 2
  field :OR_OF_ANDS, 3
end
defmodule Google.Ads.Googleads.V10.Enums.UserListRuleTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
