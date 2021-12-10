defmodule Google.Ads.Googleads.V9.Errors.UserDataErrorEnum.UserDataError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :OPERATIONS_FOR_CUSTOMER_MATCH_NOT_ALLOWED
          | :TOO_MANY_USER_IDENTIFIERS
          | :USER_LIST_NOT_APPLICABLE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :OPERATIONS_FOR_CUSTOMER_MATCH_NOT_ALLOWED, 2
  field :TOO_MANY_USER_IDENTIFIERS, 3
  field :USER_LIST_NOT_APPLICABLE, 4
end
defmodule Google.Ads.Googleads.V9.Errors.UserDataErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
