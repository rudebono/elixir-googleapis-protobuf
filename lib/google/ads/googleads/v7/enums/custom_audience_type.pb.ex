defmodule Google.Ads.Googleads.V7.Enums.CustomAudienceTypeEnum.CustomAudienceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AUTO | :INTEREST | :PURCHASE_INTENT | :SEARCH

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AUTO, 2
  field :INTEREST, 3
  field :PURCHASE_INTENT, 4
  field :SEARCH, 5
end

defmodule Google.Ads.Googleads.V7.Enums.CustomAudienceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
