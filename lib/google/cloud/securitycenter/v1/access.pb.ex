defmodule Google.Cloud.Securitycenter.V1.Access do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal_email: String.t(),
          caller_ip: String.t(),
          caller_ip_geo: Google.Cloud.Securitycenter.V1.Geolocation.t() | nil,
          user_agent_family: String.t(),
          service_name: String.t(),
          method_name: String.t()
        }

  defstruct principal_email: "",
            caller_ip: "",
            caller_ip_geo: nil,
            user_agent_family: "",
            service_name: "",
            method_name: ""

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :caller_ip, 2, type: :string, json_name: "callerIp"

  field :caller_ip_geo, 3,
    type: Google.Cloud.Securitycenter.V1.Geolocation,
    json_name: "callerIpGeo"

  field :user_agent_family, 4, type: :string, json_name: "userAgentFamily"
  field :service_name, 5, type: :string, json_name: "serviceName"
  field :method_name, 6, type: :string, json_name: "methodName"
end
defmodule Google.Cloud.Securitycenter.V1.Geolocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          region_code: String.t()
        }

  defstruct region_code: ""

  field :region_code, 1, type: :string, json_name: "regionCode"
end
