defmodule Google.Ads.Googleads.V9.Errors.AdGroupCriterionCustomizerErrorEnum.AdGroupCriterionCustomizerError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CRITERION_IS_NOT_KEYWORD

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CRITERION_IS_NOT_KEYWORD, 2
end
defmodule Google.Ads.Googleads.V9.Errors.AdGroupCriterionCustomizerErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
