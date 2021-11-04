defmodule Google.Ads.Googleads.V9.Enums.ListingGroupFilterCustomAttributeIndexEnum.ListingGroupFilterCustomAttributeIndex do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INDEX0 | :INDEX1 | :INDEX2 | :INDEX3 | :INDEX4

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INDEX0, 2
  field :INDEX1, 3
  field :INDEX2, 4
  field :INDEX3, 5
  field :INDEX4, 6
end

defmodule Google.Ads.Googleads.V9.Enums.ListingGroupFilterCustomAttributeIndexEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
