defmodule Google.Ads.Googleads.V15.Errors.CustomInterestErrorEnum.CustomInterestError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NAME_ALREADY_USED, 2
  field :CUSTOM_INTEREST_MEMBER_ID_AND_TYPE_PARAMETER_NOT_PRESENT_IN_REMOVE, 3
  field :TYPE_AND_PARAMETER_NOT_FOUND, 4
  field :TYPE_AND_PARAMETER_ALREADY_EXISTED, 5
  field :INVALID_CUSTOM_INTEREST_MEMBER_TYPE, 6
  field :CANNOT_REMOVE_WHILE_IN_USE, 7
  field :CANNOT_CHANGE_TYPE, 8
end

defmodule Google.Ads.Googleads.V15.Errors.CustomInterestErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end