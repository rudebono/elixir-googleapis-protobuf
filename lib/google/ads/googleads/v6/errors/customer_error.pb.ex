defmodule Google.Ads.Googleads.V6.Errors.CustomerErrorEnum.CustomerError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :STATUS_CHANGE_DISALLOWED | :ACCOUNT_NOT_SET_UP

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :STATUS_CHANGE_DISALLOWED, 2

  field :ACCOUNT_NOT_SET_UP, 3
end

defmodule Google.Ads.Googleads.V6.Errors.CustomerErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
