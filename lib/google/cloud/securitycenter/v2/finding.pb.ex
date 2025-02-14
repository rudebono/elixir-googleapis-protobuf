defmodule Google.Cloud.Securitycenter.V2.Finding.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Google.Cloud.Securitycenter.V2.Finding.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Securitycenter.V2.Finding.Mute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MUTE_UNSPECIFIED, 0
  field :MUTED, 1
  field :UNMUTED, 2
  field :UNDEFINED, 3
end

defmodule Google.Cloud.Securitycenter.V2.Finding.FindingClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FINDING_CLASS_UNSPECIFIED, 0
  field :THREAT, 1
  field :VULNERABILITY, 2
  field :MISCONFIGURATION, 3
  field :OBSERVATION, 4
  field :SCC_ERROR, 5
  field :POSTURE_VIOLATION, 6
  field :TOXIC_COMBINATION, 7
  field :SENSITIVE_DATA_RISK, 8
end

defmodule Google.Cloud.Securitycenter.V2.Finding.MuteInfo.StaticMute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Securitycenter.V2.Finding.Mute, enum: true
  field :apply_time, 2, type: Google.Protobuf.Timestamp, json_name: "applyTime"
end

defmodule Google.Cloud.Securitycenter.V2.Finding.MuteInfo.DynamicMuteRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mute_config, 1, type: :string, json_name: "muteConfig"
  field :match_time, 2, type: Google.Protobuf.Timestamp, json_name: "matchTime"
end

defmodule Google.Cloud.Securitycenter.V2.Finding.MuteInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :static_mute, 1,
    type: Google.Cloud.Securitycenter.V2.Finding.MuteInfo.StaticMute,
    json_name: "staticMute"

  field :dynamic_mute_records, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Finding.MuteInfo.DynamicMuteRecord,
    json_name: "dynamicMuteRecords"
end

defmodule Google.Cloud.Securitycenter.V2.Finding.SourcePropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V2.Finding.ExternalSystemsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.V2.ExternalSystem
end

defmodule Google.Cloud.Securitycenter.V2.Finding.ContactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.V2.ContactDetails
end

defmodule Google.Cloud.Securitycenter.V2.Finding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :canonical_name, 2, type: :string, json_name: "canonicalName", deprecated: false
  field :parent, 3, type: :string
  field :resource_name, 4, type: :string, json_name: "resourceName", deprecated: false

  field :state, 6,
    type: Google.Cloud.Securitycenter.V2.Finding.State,
    enum: true,
    deprecated: false

  field :category, 7, type: :string, deprecated: false
  field :external_uri, 8, type: :string, json_name: "externalUri"

  field :source_properties, 9,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Finding.SourcePropertiesEntry,
    json_name: "sourceProperties",
    map: true

  field :security_marks, 10,
    type: Google.Cloud.Securitycenter.V2.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :event_time, 11, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :severity, 14, type: Google.Cloud.Securitycenter.V2.Finding.Severity, enum: true
  field :mute, 15, type: Google.Cloud.Securitycenter.V2.Finding.Mute, enum: true

  field :mute_info, 53,
    type: Google.Cloud.Securitycenter.V2.Finding.MuteInfo,
    json_name: "muteInfo",
    deprecated: false

  field :finding_class, 16,
    type: Google.Cloud.Securitycenter.V2.Finding.FindingClass,
    json_name: "findingClass",
    enum: true

  field :indicator, 17, type: Google.Cloud.Securitycenter.V2.Indicator
  field :vulnerability, 18, type: Google.Cloud.Securitycenter.V2.Vulnerability

  field :mute_update_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "muteUpdateTime",
    deprecated: false

  field :external_systems, 20,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Finding.ExternalSystemsEntry,
    json_name: "externalSystems",
    map: true,
    deprecated: false

  field :mitre_attack, 21,
    type: Google.Cloud.Securitycenter.V2.MitreAttack,
    json_name: "mitreAttack"

  field :access, 22, type: Google.Cloud.Securitycenter.V2.Access
  field :connections, 23, repeated: true, type: Google.Cloud.Securitycenter.V2.Connection
  field :mute_initiator, 24, type: :string, json_name: "muteInitiator"
  field :processes, 25, repeated: true, type: Google.Cloud.Securitycenter.V2.Process

  field :contacts, 26,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Finding.ContactsEntry,
    map: true,
    deprecated: false

  field :compliances, 27, repeated: true, type: Google.Cloud.Securitycenter.V2.Compliance
  field :parent_display_name, 29, type: :string, json_name: "parentDisplayName", deprecated: false
  field :description, 30, type: :string
  field :exfiltration, 31, type: Google.Cloud.Securitycenter.V2.Exfiltration

  field :iam_bindings, 32,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.IamBinding,
    json_name: "iamBindings"

  field :next_steps, 33, type: :string, json_name: "nextSteps"
  field :module_name, 34, type: :string, json_name: "moduleName"
  field :containers, 35, repeated: true, type: Google.Cloud.Securitycenter.V2.Container
  field :kubernetes, 36, type: Google.Cloud.Securitycenter.V2.Kubernetes
  field :database, 37, type: Google.Cloud.Securitycenter.V2.Database

  field :attack_exposure, 38,
    type: Google.Cloud.Securitycenter.V2.AttackExposure,
    json_name: "attackExposure"

  field :files, 39, repeated: true, type: Google.Cloud.Securitycenter.V2.File

  field :cloud_dlp_inspection, 40,
    type: Google.Cloud.Securitycenter.V2.CloudDlpInspection,
    json_name: "cloudDlpInspection"

  field :cloud_dlp_data_profile, 41,
    type: Google.Cloud.Securitycenter.V2.CloudDlpDataProfile,
    json_name: "cloudDlpDataProfile"

  field :kernel_rootkit, 42,
    type: Google.Cloud.Securitycenter.V2.KernelRootkit,
    json_name: "kernelRootkit"

  field :org_policies, 43,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.OrgPolicy,
    json_name: "orgPolicies"

  field :application, 45, type: Google.Cloud.Securitycenter.V2.Application

  field :backup_disaster_recovery, 47,
    type: Google.Cloud.Securitycenter.V2.BackupDisasterRecovery,
    json_name: "backupDisasterRecovery"

  field :security_posture, 48,
    type: Google.Cloud.Securitycenter.V2.SecurityPosture,
    json_name: "securityPosture"

  field :log_entries, 49,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.LogEntry,
    json_name: "logEntries"

  field :load_balancers, 50,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.LoadBalancer,
    json_name: "loadBalancers"

  field :cloud_armor, 51, type: Google.Cloud.Securitycenter.V2.CloudArmor, json_name: "cloudArmor"
  field :notebook, 55, type: Google.Cloud.Securitycenter.V2.Notebook

  field :toxic_combination, 56,
    type: Google.Cloud.Securitycenter.V2.ToxicCombination,
    json_name: "toxicCombination"

  field :group_memberships, 57,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.GroupMembership,
    json_name: "groupMemberships"

  field :disk, 58, type: Google.Cloud.Securitycenter.V2.Disk

  field :data_access_events, 61,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.DataAccessEvent,
    json_name: "dataAccessEvents"

  field :data_flow_events, 62,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.DataFlowEvent,
    json_name: "dataFlowEvents"

  field :data_retention_deletion_events, 64,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.DataRetentionDeletionEvent,
    json_name: "dataRetentionDeletionEvents"
end
