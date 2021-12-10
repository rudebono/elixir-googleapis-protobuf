defmodule Google.Ads.Googleads.V8.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ALL | :ANY | :NONE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ALL, 2
  field :ANY, 3
  field :NONE, 4
end
defmodule Google.Ads.Googleads.V8.Enums.UserListLogicalRuleOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
