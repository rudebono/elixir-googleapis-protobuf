defmodule Google.Ads.Googleads.V9.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ELIGIBLE | :RARELY_SERVED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ELIGIBLE, 2
  field :RARELY_SERVED, 3
end
defmodule Google.Ads.Googleads.V9.Enums.CriterionSystemServingStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
