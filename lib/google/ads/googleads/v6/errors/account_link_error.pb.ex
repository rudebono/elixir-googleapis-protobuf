defmodule Google.Ads.Googleads.V6.Errors.AccountLinkErrorEnum.AccountLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INVALID_STATUS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INVALID_STATUS, 2
end

defmodule Google.Ads.Googleads.V6.Errors.AccountLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
