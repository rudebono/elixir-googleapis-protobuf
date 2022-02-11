defmodule Google.Ads.Googleads.V10.Enums.HotelReconciliationStatusEnum.HotelReconciliationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :RESERVATION_ENABLED
          | :RECONCILIATION_NEEDED
          | :RECONCILED
          | :CANCELED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RESERVATION_ENABLED, 2
  field :RECONCILIATION_NEEDED, 3
  field :RECONCILED, 4
  field :CANCELED, 5
end
defmodule Google.Ads.Googleads.V10.Enums.HotelReconciliationStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
