defmodule Google.Ads.Googleads.V18.Common.RealTimeBiddingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :opt_in, 2, proto3_optional: true, type: :bool, json_name: "optIn"
end
