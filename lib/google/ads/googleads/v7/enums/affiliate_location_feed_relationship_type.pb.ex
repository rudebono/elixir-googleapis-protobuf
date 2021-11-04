defmodule Google.Ads.Googleads.V7.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :GENERAL_RETAILER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :GENERAL_RETAILER, 2
end

defmodule Google.Ads.Googleads.V7.Enums.AffiliateLocationFeedRelationshipTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
