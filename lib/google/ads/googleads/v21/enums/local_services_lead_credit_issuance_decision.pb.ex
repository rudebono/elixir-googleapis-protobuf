defmodule Google.Ads.Googleads.V21.Enums.LocalServicesLeadCreditIssuanceDecisionEnum.CreditIssuanceDecision do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SUCCESS_NOT_REACHED_THRESHOLD, 2
  field :SUCCESS_REACHED_THRESHOLD, 3
  field :FAIL_OVER_THRESHOLD, 4
  field :FAIL_NOT_ELIGIBLE, 5
end

defmodule Google.Ads.Googleads.V21.Enums.LocalServicesLeadCreditIssuanceDecisionEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
