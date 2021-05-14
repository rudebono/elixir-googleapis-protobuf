defmodule Google.Ads.Googleads.V7.Errors.GeoTargetConstantSuggestionErrorEnum.GeoTargetConstantSuggestionError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :LOCATION_NAME_SIZE_LIMIT
          | :LOCATION_NAME_LIMIT
          | :INVALID_COUNTRY_CODE
          | :REQUEST_PARAMETERS_UNSET

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :LOCATION_NAME_SIZE_LIMIT, 2

  field :LOCATION_NAME_LIMIT, 3

  field :INVALID_COUNTRY_CODE, 4

  field :REQUEST_PARAMETERS_UNSET, 5
end

defmodule Google.Ads.Googleads.V7.Errors.GeoTargetConstantSuggestionErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
