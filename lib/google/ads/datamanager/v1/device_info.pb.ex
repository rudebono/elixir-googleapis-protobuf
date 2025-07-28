defmodule Google.Ads.Datamanager.V1.DeviceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_agent, 1, type: :string, json_name: "userAgent", deprecated: false
  field :ip_address, 2, type: :string, json_name: "ipAddress", deprecated: false
end
