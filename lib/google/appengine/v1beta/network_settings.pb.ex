defmodule Google.Appengine.V1beta.NetworkSettings.IngressTrafficAllowed do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED, 0
  field :INGRESS_TRAFFIC_ALLOWED_ALL, 1
  field :INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY, 2
  field :INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB, 3
end
defmodule Google.Appengine.V1beta.NetworkSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ingress_traffic_allowed, 1,
    type: Google.Appengine.V1beta.NetworkSettings.IngressTrafficAllowed,
    json_name: "ingressTrafficAllowed",
    enum: true
end
