defmodule Google.Ads.Googleads.V8.Errors.CurrencyCodeErrorEnum.CurrencyCodeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNSUPPORTED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNSUPPORTED, 2
end

defmodule Google.Ads.Googleads.V8.Errors.CurrencyCodeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
