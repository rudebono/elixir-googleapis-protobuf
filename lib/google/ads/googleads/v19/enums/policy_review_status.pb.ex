defmodule Google.Ads.Googleads.V19.Enums.PolicyReviewStatusEnum.PolicyReviewStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :REVIEW_IN_PROGRESS, 2
  field :REVIEWED, 3
  field :UNDER_APPEAL, 4
  field :ELIGIBLE_MAY_SERVE, 5
end

defmodule Google.Ads.Googleads.V19.Enums.PolicyReviewStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
