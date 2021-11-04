defmodule Google.Ads.Googleads.V7.Errors.CustomerClientLinkErrorEnum.CustomerClientLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CLIENT_ALREADY_INVITED_BY_THIS_MANAGER
          | :CLIENT_ALREADY_MANAGED_IN_HIERARCHY
          | :CYCLIC_LINK_NOT_ALLOWED
          | :CUSTOMER_HAS_TOO_MANY_ACCOUNTS
          | :CLIENT_HAS_TOO_MANY_INVITATIONS
          | :CANNOT_HIDE_OR_UNHIDE_MANAGER_ACCOUNTS
          | :CUSTOMER_HAS_TOO_MANY_ACCOUNTS_AT_MANAGER
          | :CLIENT_HAS_TOO_MANY_MANAGERS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CLIENT_ALREADY_INVITED_BY_THIS_MANAGER, 2
  field :CLIENT_ALREADY_MANAGED_IN_HIERARCHY, 3
  field :CYCLIC_LINK_NOT_ALLOWED, 4
  field :CUSTOMER_HAS_TOO_MANY_ACCOUNTS, 5
  field :CLIENT_HAS_TOO_MANY_INVITATIONS, 6
  field :CANNOT_HIDE_OR_UNHIDE_MANAGER_ACCOUNTS, 7
  field :CUSTOMER_HAS_TOO_MANY_ACCOUNTS_AT_MANAGER, 8
  field :CLIENT_HAS_TOO_MANY_MANAGERS, 9
end

defmodule Google.Ads.Googleads.V7.Errors.CustomerClientLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
