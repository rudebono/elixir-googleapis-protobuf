defmodule Google.Cloud.Securitycenter.V1.MitreAttack.Tactic do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TACTIC_UNSPECIFIED, 0
  field :RECONNAISSANCE, 1
  field :RESOURCE_DEVELOPMENT, 2
  field :INITIAL_ACCESS, 5
  field :EXECUTION, 3
  field :PERSISTENCE, 6
  field :PRIVILEGE_ESCALATION, 8
  field :DEFENSE_EVASION, 7
  field :CREDENTIAL_ACCESS, 9
  field :DISCOVERY, 10
  field :LATERAL_MOVEMENT, 11
  field :COLLECTION, 12
  field :COMMAND_AND_CONTROL, 4
  field :EXFILTRATION, 13
  field :IMPACT, 14
end
defmodule Google.Cloud.Securitycenter.V1.MitreAttack.Technique do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TECHNIQUE_UNSPECIFIED, 0
  field :ACTIVE_SCANNING, 1
  field :SCANNING_IP_BLOCKS, 2
  field :INGRESS_TOOL_TRANSFER, 3
  field :NATIVE_API, 4
  field :SHARED_MODULES, 5
  field :COMMAND_AND_SCRIPTING_INTERPRETER, 6
  field :UNIX_SHELL, 7
  field :RESOURCE_HIJACKING, 8
  field :PROXY, 9
  field :EXTERNAL_PROXY, 10
  field :MULTI_HOP_PROXY, 11
  field :DYNAMIC_RESOLUTION, 12
  field :UNSECURED_CREDENTIALS, 13
  field :VALID_ACCOUNTS, 14
  field :LOCAL_ACCOUNTS, 15
  field :CLOUD_ACCOUNTS, 16
  field :NETWORK_DENIAL_OF_SERVICE, 17
  field :PERMISSION_GROUPS_DISCOVERY, 18
  field :CLOUD_GROUPS, 19
  field :EXFILTRATION_OVER_WEB_SERVICE, 20
  field :EXFILTRATION_TO_CLOUD_STORAGE, 21
  field :ACCOUNT_MANIPULATION, 22
  field :SSH_AUTHORIZED_KEYS, 23
  field :CREATE_OR_MODIFY_SYSTEM_PROCESS, 24
  field :STEAL_WEB_SESSION_COOKIE, 25
  field :MODIFY_CLOUD_COMPUTE_INFRASTRUCTURE, 26
  field :EXPLOIT_PUBLIC_FACING_APPLICATION, 27
  field :MODIFY_AUTHENTICATION_PROCESS, 28
  field :DATA_DESTRUCTION, 29
  field :DOMAIN_POLICY_MODIFICATION, 30
end
defmodule Google.Cloud.Securitycenter.V1.MitreAttack do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :primary_tactic, 1,
    type: Google.Cloud.Securitycenter.V1.MitreAttack.Tactic,
    json_name: "primaryTactic",
    enum: true

  field :primary_techniques, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.MitreAttack.Technique,
    json_name: "primaryTechniques",
    enum: true

  field :additional_tactics, 3,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.MitreAttack.Tactic,
    json_name: "additionalTactics",
    enum: true

  field :additional_techniques, 4,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.MitreAttack.Technique,
    json_name: "additionalTechniques",
    enum: true

  field :version, 5, type: :string
end
