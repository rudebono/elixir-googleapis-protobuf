defmodule Google.Appengine.V1beta.NetworkSettings.IngressTrafficAllowed do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED
          | :INGRESS_TRAFFIC_ALLOWED_ALL
          | :INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY
          | :INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB

  field :INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED, 0
  field :INGRESS_TRAFFIC_ALLOWED_ALL, 1
  field :INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY, 2
  field :INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB, 3
end

defmodule Google.Appengine.V1beta.NetworkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingress_traffic_allowed:
            Google.Appengine.V1beta.NetworkSettings.IngressTrafficAllowed.t()
        }

  defstruct [:ingress_traffic_allowed]

  field :ingress_traffic_allowed, 1,
    type: Google.Appengine.V1beta.NetworkSettings.IngressTrafficAllowed,
    enum: true,
    json_name: "ingressTrafficAllowed"

  def transform_module(), do: nil
end
