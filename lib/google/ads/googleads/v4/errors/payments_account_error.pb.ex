defmodule Google.Ads.Googleads.V4.Errors.PaymentsAccountErrorEnum.PaymentsAccountError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NOT_SUPPORTED_FOR_MANAGER_CUSTOMER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NOT_SUPPORTED_FOR_MANAGER_CUSTOMER, 2
end

defmodule Google.Ads.Googleads.V4.Errors.PaymentsAccountErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
