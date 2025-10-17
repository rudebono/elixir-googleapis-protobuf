defmodule Google.Ads.Googleads.V22.Errors.QuotaErrorEnum.QuotaError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RESOURCE_EXHAUSTED, 2
  field :ACCESS_PROHIBITED, 3
  field :RESOURCE_TEMPORARILY_EXHAUSTED, 4
  field :EXCESSIVE_SHORT_TERM_QUERY_RESOURCE_CONSUMPTION, 5
  field :EXCESSIVE_LONG_TERM_QUERY_RESOURCE_CONSUMPTION, 6
  field :PAYMENTS_PROFILE_ACTIVATION_RATE_LIMIT_EXCEEDED, 7
end

defmodule Google.Ads.Googleads.V22.Errors.QuotaErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
