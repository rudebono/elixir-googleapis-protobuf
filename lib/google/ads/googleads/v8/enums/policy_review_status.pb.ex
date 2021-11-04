defmodule Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :REVIEW_IN_PROGRESS
          | :REVIEWED
          | :UNDER_APPEAL
          | :ELIGIBLE_MAY_SERVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :REVIEW_IN_PROGRESS, 2
  field :REVIEWED, 3
  field :UNDER_APPEAL, 4
  field :ELIGIBLE_MAY_SERVE, 5
end

defmodule Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
