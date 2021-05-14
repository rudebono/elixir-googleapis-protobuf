defmodule Google.Ads.Googleads.V4.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :EQUALS | :CONTAINS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :EQUALS, 2

  field :CONTAINS, 3
end

defmodule Google.Ads.Googleads.V4.Enums.WebpageConditionOperatorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
