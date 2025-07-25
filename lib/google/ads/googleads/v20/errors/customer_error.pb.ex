defmodule Google.Ads.Googleads.V20.Errors.CustomerErrorEnum.CustomerError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :STATUS_CHANGE_DISALLOWED, 2
  field :ACCOUNT_NOT_SET_UP, 3
  field :CREATION_DENIED_FOR_POLICY_VIOLATION, 4
  field :CREATION_DENIED_INELIGIBLE_MCC, 5
end

defmodule Google.Ads.Googleads.V20.Errors.CustomerErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
