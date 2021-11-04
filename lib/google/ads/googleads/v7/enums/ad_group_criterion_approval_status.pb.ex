defmodule Google.Ads.Googleads.V7.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :APPROVED
          | :DISAPPROVED
          | :PENDING_REVIEW
          | :UNDER_REVIEW

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :APPROVED, 2
  field :DISAPPROVED, 3
  field :PENDING_REVIEW, 4
  field :UNDER_REVIEW, 5
end

defmodule Google.Ads.Googleads.V7.Enums.AdGroupCriterionApprovalStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
