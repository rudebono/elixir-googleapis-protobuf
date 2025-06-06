defmodule Google.Ads.Googleads.V20.Common.RealTimeBiddingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :opt_in, 2, proto3_optional: true, type: :bool, json_name: "optIn"
end
