defmodule Google.Ads.Googleads.V7.Enums.BillingSetupStatusEnum.BillingSetupStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :UNSPECIFIED | :UNKNOWN | :PENDING | :APPROVED_HELD | :APPROVED | :CANCELLED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :APPROVED_HELD, 3
  field :APPROVED, 4
  field :CANCELLED, 5
end
defmodule Google.Ads.Googleads.V7.Enums.BillingSetupStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
