defmodule Google.Ads.Googleads.V7.Errors.KeywordPlanAdGroupErrorEnum.KeywordPlanAdGroupError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INVALID_NAME | :DUPLICATE_NAME

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_NAME, 2
  field :DUPLICATE_NAME, 3
end

defmodule Google.Ads.Googleads.V7.Errors.KeywordPlanAdGroupErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
