defmodule Google.Ads.Googleads.V9.Errors.SharedCriterionErrorEnum.SharedCriterionError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CRITERION_TYPE_NOT_ALLOWED_FOR_SHARED_SET_TYPE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CRITERION_TYPE_NOT_ALLOWED_FOR_SHARED_SET_TYPE, 2
end

defmodule Google.Ads.Googleads.V9.Errors.SharedCriterionErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
