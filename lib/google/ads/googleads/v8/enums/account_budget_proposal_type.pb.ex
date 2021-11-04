defmodule Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CREATE | :UPDATE | :END | :REMOVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CREATE, 2
  field :UPDATE, 3
  field :END, 4
  field :REMOVE, 5
end

defmodule Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
