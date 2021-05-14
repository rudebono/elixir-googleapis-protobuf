defmodule Google.Ads.Googleads.V6.Errors.HeaderErrorEnum.HeaderError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_LOGIN_CUSTOMER_ID
          | :INVALID_LINKED_CUSTOMER_ID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INVALID_LOGIN_CUSTOMER_ID, 3

  field :INVALID_LINKED_CUSTOMER_ID, 7
end

defmodule Google.Ads.Googleads.V6.Errors.HeaderErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
