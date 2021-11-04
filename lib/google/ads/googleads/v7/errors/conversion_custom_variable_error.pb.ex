defmodule Google.Ads.Googleads.V7.Errors.ConversionCustomVariableErrorEnum.ConversionCustomVariableError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DUPLICATE_NAME | :DUPLICATE_TAG

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_NAME, 2
  field :DUPLICATE_TAG, 3
end

defmodule Google.Ads.Googleads.V7.Errors.ConversionCustomVariableErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
