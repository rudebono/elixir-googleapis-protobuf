defmodule Google.Ads.Googleads.V7.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :EQUALS | :NOT_EQUALS | :BEFORE | :AFTER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EQUALS, 2
  field :NOT_EQUALS, 3
  field :BEFORE, 4
  field :AFTER, 5
end

defmodule Google.Ads.Googleads.V7.Enums.UserListDateRuleItemOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
