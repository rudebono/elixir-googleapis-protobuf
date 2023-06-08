defmodule Google.Ads.Googleads.V14.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :APPROVED_HELD, 3
  field :APPROVED, 4
  field :CANCELLED, 5
  field :REJECTED, 6
end

defmodule Google.Ads.Googleads.V14.Enums.AccountBudgetProposalStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end