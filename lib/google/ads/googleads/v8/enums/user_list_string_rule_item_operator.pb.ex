defmodule Google.Ads.Googleads.V8.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CONTAINS
          | :EQUALS
          | :STARTS_WITH
          | :ENDS_WITH
          | :NOT_EQUALS
          | :NOT_CONTAINS
          | :NOT_STARTS_WITH
          | :NOT_ENDS_WITH

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CONTAINS, 2
  field :EQUALS, 3
  field :STARTS_WITH, 4
  field :ENDS_WITH, 5
  field :NOT_EQUALS, 6
  field :NOT_CONTAINS, 7
  field :NOT_STARTS_WITH, 8
  field :NOT_ENDS_WITH, 9
end

defmodule Google.Ads.Googleads.V8.Enums.UserListStringRuleItemOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
