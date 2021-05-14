defmodule Google.Ads.Googleads.V6.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INSUFFICIENT_MATCHED_TRANSACTIONS
          | :INSUFFICIENT_TRANSACTIONS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INSUFFICIENT_MATCHED_TRANSACTIONS, 2

  field :INSUFFICIENT_TRANSACTIONS, 3
end

defmodule Google.Ads.Googleads.V6.Enums.OfflineUserDataJobFailureReasonEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
