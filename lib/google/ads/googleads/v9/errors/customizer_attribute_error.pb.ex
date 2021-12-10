defmodule Google.Ads.Googleads.V9.Errors.CustomizerAttributeErrorEnum.CustomizerAttributeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DUPLICATE_CUSTOMIZER_ATTRIBUTE_NAME

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_CUSTOMIZER_ATTRIBUTE_NAME, 2
end
defmodule Google.Ads.Googleads.V9.Errors.CustomizerAttributeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
