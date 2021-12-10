defmodule Google.Ads.Googleads.V7.Enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ADDRESS_LINE_1
          | :ADDRESS_LINE_2
          | :CITY
          | :PROVINCE
          | :POSTAL_CODE
          | :COUNTRY_CODE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADDRESS_LINE_1, 2
  field :ADDRESS_LINE_2, 3
  field :CITY, 4
  field :PROVINCE, 5
  field :POSTAL_CODE, 6
  field :COUNTRY_CODE, 7
end
defmodule Google.Ads.Googleads.V7.Enums.LocationExtensionTargetingCriterionFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
