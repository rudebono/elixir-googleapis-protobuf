defmodule Google.Ads.Googleads.V18.Errors.ChangeEventErrorEnum.ChangeEventError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :START_DATE_TOO_OLD, 2
  field :CHANGE_DATE_RANGE_INFINITE, 3
  field :CHANGE_DATE_RANGE_NEGATIVE, 4
  field :LIMIT_NOT_SPECIFIED, 5
  field :INVALID_LIMIT_CLAUSE, 6
end

defmodule Google.Ads.Googleads.V18.Errors.ChangeEventErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end