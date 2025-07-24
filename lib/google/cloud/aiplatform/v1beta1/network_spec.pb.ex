defmodule Google.Cloud.Aiplatform.V1beta1.NetworkSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_internet_access, 1, type: :bool, json_name: "enableInternetAccess"
  field :network, 2, type: :string, deprecated: false
  field :subnetwork, 3, type: :string, deprecated: false
end
