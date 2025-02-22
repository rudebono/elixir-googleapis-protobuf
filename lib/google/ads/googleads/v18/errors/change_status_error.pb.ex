defmodule Google.Ads.Googleads.V18.Errors.ChangeStatusErrorEnum.ChangeStatusError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :START_DATE_TOO_OLD, 3
  field :CHANGE_DATE_RANGE_INFINITE, 4
  field :CHANGE_DATE_RANGE_NEGATIVE, 5
  field :LIMIT_NOT_SPECIFIED, 6
  field :INVALID_LIMIT_CLAUSE, 7
end

defmodule Google.Ads.Googleads.V18.Errors.ChangeStatusErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
