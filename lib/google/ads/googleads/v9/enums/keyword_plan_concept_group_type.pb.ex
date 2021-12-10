defmodule Google.Ads.Googleads.V9.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :BRAND | :OTHER_BRANDS | :NON_BRAND

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BRAND, 2
  field :OTHER_BRANDS, 3
  field :NON_BRAND, 4
end
defmodule Google.Ads.Googleads.V9.Enums.KeywordPlanConceptGroupTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
