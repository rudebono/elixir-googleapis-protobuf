defmodule Google.Cloud.Securitycenter.V1.Finding.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Google.Cloud.Securitycenter.V1.Finding.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Securitycenter.V1.Finding.Mute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MUTE_UNSPECIFIED, 0
  field :MUTED, 1
  field :UNMUTED, 2
  field :UNDEFINED, 4
end

defmodule Google.Cloud.Securitycenter.V1.Finding.FindingClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FINDING_CLASS_UNSPECIFIED, 0
  field :THREAT, 1
  field :VULNERABILITY, 2
  field :MISCONFIGURATION, 3
  field :OBSERVATION, 4
  field :SCC_ERROR, 5
end

defmodule Google.Cloud.Securitycenter.V1.Finding.SourcePropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V1.Finding.ExternalSystemsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.V1.ExternalSystem
end

defmodule Google.Cloud.Securitycenter.V1.Finding.ContactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.V1.ContactDetails
end

defmodule Google.Cloud.Securitycenter.V1.Finding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :resource_name, 3, type: :string, json_name: "resourceName"
  field :state, 4, type: Google.Cloud.Securitycenter.V1.Finding.State, enum: true
  field :category, 5, type: :string
  field :external_uri, 6, type: :string, json_name: "externalUri"

  field :source_properties, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.Finding.SourcePropertiesEntry,
    json_name: "sourceProperties",
    map: true

  field :security_marks, 8,
    type: Google.Cloud.Securitycenter.V1.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :event_time, 9, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :severity, 12, type: Google.Cloud.Securitycenter.V1.Finding.Severity, enum: true
  field :canonical_name, 14, type: :string, json_name: "canonicalName"
  field :mute, 15, type: Google.Cloud.Securitycenter.V1.Finding.Mute, enum: true

  field :finding_class, 17,
    type: Google.Cloud.Securitycenter.V1.Finding.FindingClass,
    json_name: "findingClass",
    enum: true

  field :indicator, 18, type: Google.Cloud.Securitycenter.V1.Indicator
  field :vulnerability, 20, type: Google.Cloud.Securitycenter.V1.Vulnerability

  field :mute_update_time, 21,
    type: Google.Protobuf.Timestamp,
    json_name: "muteUpdateTime",
    deprecated: false

  field :external_systems, 22,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.Finding.ExternalSystemsEntry,
    json_name: "externalSystems",
    map: true,
    deprecated: false

  field :mitre_attack, 25,
    type: Google.Cloud.Securitycenter.V1.MitreAttack,
    json_name: "mitreAttack"

  field :access, 26, type: Google.Cloud.Securitycenter.V1.Access
  field :connections, 31, repeated: true, type: Google.Cloud.Securitycenter.V1.Connection
  field :mute_initiator, 28, type: :string, json_name: "muteInitiator"
  field :processes, 30, repeated: true, type: Google.Cloud.Securitycenter.V1.Process

  field :contacts, 33,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.Finding.ContactsEntry,
    map: true,
    deprecated: false

  field :compliances, 34, repeated: true, type: Google.Cloud.Securitycenter.V1.Compliance
  field :parent_display_name, 36, type: :string, json_name: "parentDisplayName", deprecated: false
  field :description, 37, type: :string
  field :exfiltration, 38, type: Google.Cloud.Securitycenter.V1.Exfiltration

  field :iam_bindings, 39,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.IamBinding,
    json_name: "iamBindings"

  field :next_steps, 40, type: :string, json_name: "nextSteps"
  field :module_name, 41, type: :string, json_name: "moduleName"
  field :containers, 42, repeated: true, type: Google.Cloud.Securitycenter.V1.Container
  field :kubernetes, 43, type: Google.Cloud.Securitycenter.V1.Kubernetes
  field :database, 44, type: Google.Cloud.Securitycenter.V1.Database
  field :files, 46, repeated: true, type: Google.Cloud.Securitycenter.V1.File

  field :cloud_dlp_inspection, 48,
    type: Google.Cloud.Securitycenter.V1.CloudDlpInspection,
    json_name: "cloudDlpInspection"

  field :cloud_dlp_data_profile, 49,
    type: Google.Cloud.Securitycenter.V1.CloudDlpDataProfile,
    json_name: "cloudDlpDataProfile"

  field :kernel_rootkit, 50,
    type: Google.Cloud.Securitycenter.V1.KernelRootkit,
    json_name: "kernelRootkit"
end