defmodule Google.Ads.Googleads.V9.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :GREATER_THAN
          | :GREATER_THAN_OR_EQUAL
          | :EQUALS
          | :NOT_EQUALS
          | :LESS_THAN
          | :LESS_THAN_OR_EQUAL

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :GREATER_THAN, 2
  field :GREATER_THAN_OR_EQUAL, 3
  field :EQUALS, 4
  field :NOT_EQUALS, 5
  field :LESS_THAN, 6
  field :LESS_THAN_OR_EQUAL, 7
end

defmodule Google.Ads.Googleads.V9.Enums.UserListNumberRuleItemOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
