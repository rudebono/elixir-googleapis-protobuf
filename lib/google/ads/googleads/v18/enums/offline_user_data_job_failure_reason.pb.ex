defmodule Google.Ads.Googleads.V18.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INSUFFICIENT_MATCHED_TRANSACTIONS, 2
  field :INSUFFICIENT_TRANSACTIONS, 3
  field :HIGH_AVERAGE_TRANSACTION_VALUE, 4
  field :LOW_AVERAGE_TRANSACTION_VALUE, 5
  field :NEWLY_OBSERVED_CURRENCY_CODE, 6
end

defmodule Google.Ads.Googleads.V18.Enums.OfflineUserDataJobFailureReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
