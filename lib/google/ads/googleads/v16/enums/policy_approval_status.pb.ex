defmodule Google.Ads.Googleads.V16.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DISAPPROVED, 2
  field :APPROVED_LIMITED, 3
  field :APPROVED, 4
  field :AREA_OF_INTEREST_ONLY, 5
end

defmodule Google.Ads.Googleads.V16.Enums.PolicyApprovalStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end