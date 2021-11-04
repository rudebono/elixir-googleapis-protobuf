defmodule Google.Ads.Googleads.V7.Enums.CallConversionReportingStateEnum.CallConversionReportingState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DISABLED
          | :USE_ACCOUNT_LEVEL_CALL_CONVERSION_ACTION
          | :USE_RESOURCE_LEVEL_CALL_CONVERSION_ACTION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DISABLED, 2
  field :USE_ACCOUNT_LEVEL_CALL_CONVERSION_ACTION, 3
  field :USE_RESOURCE_LEVEL_CALL_CONVERSION_ACTION, 4
end

defmodule Google.Ads.Googleads.V7.Enums.CallConversionReportingStateEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
