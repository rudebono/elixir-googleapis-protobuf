defmodule Google.Ads.Googleads.V8.Errors.NotAllowlistedErrorEnum.NotAllowlistedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CUSTOMER_NOT_ALLOWLISTED_FOR_THIS_FEATURE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CUSTOMER_NOT_ALLOWLISTED_FOR_THIS_FEATURE, 2
end

defmodule Google.Ads.Googleads.V8.Errors.NotAllowlistedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
