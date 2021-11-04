defmodule Google.Ads.Googleads.V9.Enums.BudgetTypeEnum.BudgetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :STANDARD | :FIXED_CPA | :SMART_CAMPAIGN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :STANDARD, 2
  field :FIXED_CPA, 4
  field :SMART_CAMPAIGN, 5
end

defmodule Google.Ads.Googleads.V9.Enums.BudgetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
