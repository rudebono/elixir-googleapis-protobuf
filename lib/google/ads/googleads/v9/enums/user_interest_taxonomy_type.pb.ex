defmodule Google.Ads.Googleads.V9.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AFFINITY
          | :IN_MARKET
          | :MOBILE_APP_INSTALL_USER
          | :VERTICAL_GEO
          | :NEW_SMART_PHONE_USER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AFFINITY, 2
  field :IN_MARKET, 3
  field :MOBILE_APP_INSTALL_USER, 4
  field :VERTICAL_GEO, 5
  field :NEW_SMART_PHONE_USER, 6
end

defmodule Google.Ads.Googleads.V9.Enums.UserInterestTaxonomyTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
