defmodule Google.Ads.Googleads.V14.Errors.UserDataErrorEnum.UserDataError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :OPERATIONS_FOR_CUSTOMER_MATCH_NOT_ALLOWED, 2
  field :TOO_MANY_USER_IDENTIFIERS, 3
  field :USER_LIST_NOT_APPLICABLE, 4
end

defmodule Google.Ads.Googleads.V14.Errors.UserDataErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end