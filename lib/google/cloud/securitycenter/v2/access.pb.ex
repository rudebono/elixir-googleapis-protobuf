defmodule Google.Cloud.Securitycenter.V2.Access do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :caller_ip, 2, type: :string, json_name: "callerIp"

  field :caller_ip_geo, 3,
    type: Google.Cloud.Securitycenter.V2.Geolocation,
    json_name: "callerIpGeo"

  field :user_agent_family, 4, type: :string, json_name: "userAgentFamily"
  field :user_agent, 5, type: :string, json_name: "userAgent"
  field :service_name, 6, type: :string, json_name: "serviceName"
  field :method_name, 7, type: :string, json_name: "methodName"
  field :principal_subject, 8, type: :string, json_name: "principalSubject"
  field :service_account_key_name, 9, type: :string, json_name: "serviceAccountKeyName"

  field :service_account_delegation_info, 10,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ServiceAccountDelegationInfo,
    json_name: "serviceAccountDelegationInfo"

  field :user_name, 11, type: :string, json_name: "userName"
end

defmodule Google.Cloud.Securitycenter.V2.ServiceAccountDelegationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principal_email, 1, type: :string, json_name: "principalEmail"
  field :principal_subject, 2, type: :string, json_name: "principalSubject"
end

defmodule Google.Cloud.Securitycenter.V2.Geolocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode"
end
