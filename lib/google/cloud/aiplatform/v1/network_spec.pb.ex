defmodule Google.Cloud.Aiplatform.V1.NetworkSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_internet_access, 1, type: :bool, json_name: "enableInternetAccess"
  field :network, 2, type: :string, deprecated: false
  field :subnetwork, 3, type: :string, deprecated: false
end
