defmodule Google.Ads.Googleads.V13.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :APPROVED, 2
  field :DISAPPROVED, 3
  field :PENDING_REVIEW, 4
  field :UNDER_REVIEW, 5
end

defmodule Google.Ads.Googleads.V13.Enums.AdGroupCriterionApprovalStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end