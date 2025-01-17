defmodule Google.Ads.Googleads.V18.Errors.CustomerUserAccessErrorEnum.CustomerUserAccessError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_USER_ID, 2
  field :REMOVAL_DISALLOWED, 3
  field :DISALLOWED_ACCESS_ROLE, 4
  field :LAST_ADMIN_USER_OF_SERVING_CUSTOMER, 5
  field :LAST_ADMIN_USER_OF_MANAGER, 6
end

defmodule Google.Ads.Googleads.V18.Errors.CustomerUserAccessErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
