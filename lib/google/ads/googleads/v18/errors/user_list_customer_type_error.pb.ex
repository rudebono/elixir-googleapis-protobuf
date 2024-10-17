defmodule Google.Ads.Googleads.V18.Errors.UserListCustomerTypeErrorEnum.UserListCustomerTypeError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CONFLICTING_CUSTOMER_TYPES, 2
  field :NO_ACCESS_TO_USER_LIST, 3
  field :USERLIST_NOT_ELIGIBLE, 4
  field :CONVERSION_TRACKING_NOT_ENABLED_OR_NOT_MCC_MANAGER_ACCOUNT, 5
  field :TOO_MANY_USER_LISTS_FOR_THE_CUSTOMER_TYPE, 6
end

defmodule Google.Ads.Googleads.V18.Errors.UserListCustomerTypeErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end