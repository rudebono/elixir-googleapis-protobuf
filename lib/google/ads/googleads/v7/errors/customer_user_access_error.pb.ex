defmodule Google.Ads.Googleads.V7.Errors.CustomerUserAccessErrorEnum.CustomerUserAccessError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_USER_ID
          | :REMOVAL_DISALLOWED
          | :DISALLOWED_ACCESS_ROLE
          | :LAST_ADMIN_USER_OF_SERVING_CUSTOMER
          | :LAST_ADMIN_USER_OF_MANAGER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_USER_ID, 2
  field :REMOVAL_DISALLOWED, 3
  field :DISALLOWED_ACCESS_ROLE, 4
  field :LAST_ADMIN_USER_OF_SERVING_CUSTOMER, 5
  field :LAST_ADMIN_USER_OF_MANAGER, 6
end
defmodule Google.Ads.Googleads.V7.Errors.CustomerUserAccessErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
