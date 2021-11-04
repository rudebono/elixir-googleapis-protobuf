defmodule Google.Ads.Googleads.V9.Enums.ListingGroupFilterTypeEnum.ListingGroupFilterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :SUBDIVISION | :UNIT_INCLUDED | :UNIT_EXCLUDED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SUBDIVISION, 2
  field :UNIT_INCLUDED, 3
  field :UNIT_EXCLUDED, 4
end

defmodule Google.Ads.Googleads.V9.Enums.ListingGroupFilterTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
