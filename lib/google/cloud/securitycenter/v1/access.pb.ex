defmodule Google.Cloud.Securitycenter.V1.Access do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode"
end