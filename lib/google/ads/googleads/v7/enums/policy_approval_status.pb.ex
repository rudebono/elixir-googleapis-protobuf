defmodule Google.Ads.Googleads.V7.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DISAPPROVED
          | :APPROVED_LIMITED
          | :APPROVED
          | :AREA_OF_INTEREST_ONLY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DISAPPROVED, 2
  field :APPROVED_LIMITED, 3
  field :APPROVED, 4
  field :AREA_OF_INTEREST_ONLY, 5
end
defmodule Google.Ads.Googleads.V7.Enums.PolicyApprovalStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
