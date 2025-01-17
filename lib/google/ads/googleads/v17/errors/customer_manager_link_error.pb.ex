defmodule Google.Ads.Googleads.V17.Errors.CustomerManagerLinkErrorEnum.CustomerManagerLinkError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NO_PENDING_INVITE, 2
  field :SAME_CLIENT_MORE_THAN_ONCE_PER_CALL, 3
  field :MANAGER_HAS_MAX_NUMBER_OF_LINKED_ACCOUNTS, 4
  field :CANNOT_UNLINK_ACCOUNT_WITHOUT_ACTIVE_USER, 5
  field :CANNOT_REMOVE_LAST_CLIENT_ACCOUNT_OWNER, 6
  field :CANNOT_CHANGE_ROLE_BY_NON_ACCOUNT_OWNER, 7
  field :CANNOT_CHANGE_ROLE_FOR_NON_ACTIVE_LINK_ACCOUNT, 8
  field :DUPLICATE_CHILD_FOUND, 9
  field :TEST_ACCOUNT_LINKS_TOO_MANY_CHILD_ACCOUNTS, 10
end

defmodule Google.Ads.Googleads.V17.Errors.CustomerManagerLinkErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
