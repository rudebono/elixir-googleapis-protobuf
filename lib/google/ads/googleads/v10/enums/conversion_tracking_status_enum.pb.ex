defmodule Google.Ads.Googleads.V10.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NOT_CONVERSION_TRACKED
          | :CONVERSION_TRACKING_MANAGED_BY_SELF
          | :CONVERSION_TRACKING_MANAGED_BY_THIS_MANAGER
          | :CONVERSION_TRACKING_MANAGED_BY_ANOTHER_MANAGER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_CONVERSION_TRACKED, 2
  field :CONVERSION_TRACKING_MANAGED_BY_SELF, 3
  field :CONVERSION_TRACKING_MANAGED_BY_THIS_MANAGER, 4
  field :CONVERSION_TRACKING_MANAGED_BY_ANOTHER_MANAGER, 5
end
defmodule Google.Ads.Googleads.V10.Enums.ConversionTrackingStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
