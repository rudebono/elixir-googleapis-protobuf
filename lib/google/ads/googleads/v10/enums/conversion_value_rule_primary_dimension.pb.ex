defmodule Google.Ads.Googleads.V10.Enums.ConversionValueRulePrimaryDimensionEnum.ConversionValueRulePrimaryDimension do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NO_RULE_APPLIED
          | :ORIGINAL
          | :NEW_VS_RETURNING_USER
          | :GEO_LOCATION
          | :DEVICE
          | :AUDIENCE
          | :MULTIPLE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NO_RULE_APPLIED, 2
  field :ORIGINAL, 3
  field :NEW_VS_RETURNING_USER, 4
  field :GEO_LOCATION, 5
  field :DEVICE, 6
  field :AUDIENCE, 7
  field :MULTIPLE, 8
end
defmodule Google.Ads.Googleads.V10.Enums.ConversionValueRulePrimaryDimensionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
