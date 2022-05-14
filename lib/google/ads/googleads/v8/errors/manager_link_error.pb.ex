defmodule Google.Ads.Googleads.V8.Errors.ManagerLinkErrorEnum.ManagerLinkError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACCOUNTS_NOT_COMPATIBLE_FOR_LINKING, 2
  field :TOO_MANY_MANAGERS, 3
  field :TOO_MANY_INVITES, 4
  field :ALREADY_INVITED_BY_THIS_MANAGER, 5
  field :ALREADY_MANAGED_BY_THIS_MANAGER, 6
  field :ALREADY_MANAGED_IN_HIERARCHY, 7
  field :DUPLICATE_CHILD_FOUND, 8
  field :CLIENT_HAS_NO_ADMIN_USER, 9
  field :MAX_DEPTH_EXCEEDED, 10
  field :CYCLE_NOT_ALLOWED, 11
  field :TOO_MANY_ACCOUNTS, 12
  field :TOO_MANY_ACCOUNTS_AT_MANAGER, 13
  field :NON_OWNER_USER_CANNOT_MODIFY_LINK, 14
  field :SUSPENDED_ACCOUNT_CANNOT_ADD_CLIENTS, 15
  field :CLIENT_OUTSIDE_TREE, 16
  field :INVALID_STATUS_CHANGE, 17
  field :INVALID_CHANGE, 18
end
defmodule Google.Ads.Googleads.V8.Errors.ManagerLinkErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
