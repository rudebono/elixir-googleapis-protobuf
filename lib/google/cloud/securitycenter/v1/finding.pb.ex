defmodule Google.Cloud.Securitycenter.V1.Finding.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :INACTIVE

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end
defmodule Google.Cloud.Securitycenter.V1.Finding.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEVERITY_UNSPECIFIED | :CRITICAL | :HIGH | :MEDIUM | :LOW

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end
defmodule Google.Cloud.Securitycenter.V1.Finding.Mute do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MUTE_UNSPECIFIED | :MUTED | :UNMUTED | :UNDEFINED

  field :MUTE_UNSPECIFIED, 0
  field :MUTED, 1
  field :UNMUTED, 2
  field :UNDEFINED, 4
end
defmodule Google.Cloud.Securitycenter.V1.Finding.FindingClass do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FINDING_CLASS_UNSPECIFIED
          | :THREAT
          | :VULNERABILITY
          | :MISCONFIGURATION
          | :OBSERVATION

  field :FINDING_CLASS_UNSPECIFIED, 0
  field :THREAT, 1
  field :VULNERABILITY, 2
  field :MISCONFIGURATION, 3
  field :OBSERVATION, 4
end
defmodule Google.Cloud.Securitycenter.V1.Finding.SourcePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Securitycenter.V1.Finding.ExternalSystemsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Securitycenter.V1.ExternalSystem.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Securitycenter.V1.ExternalSystem
end
defmodule Google.Cloud.Securitycenter.V1.Finding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          resource_name: String.t(),
          state: Google.Cloud.Securitycenter.V1.Finding.State.t(),
          category: String.t(),
          external_uri: String.t(),
          source_properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          security_marks: Google.Cloud.Securitycenter.V1.SecurityMarks.t() | nil,
          event_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          severity: Google.Cloud.Securitycenter.V1.Finding.Severity.t(),
          canonical_name: String.t(),
          mute: Google.Cloud.Securitycenter.V1.Finding.Mute.t(),
          finding_class: Google.Cloud.Securitycenter.V1.Finding.FindingClass.t(),
          indicator: Google.Cloud.Securitycenter.V1.Indicator.t() | nil,
          vulnerability: Google.Cloud.Securitycenter.V1.Vulnerability.t() | nil,
          mute_update_time: Google.Protobuf.Timestamp.t() | nil,
          external_systems: %{
            String.t() => Google.Cloud.Securitycenter.V1.ExternalSystem.t() | nil
          },
          access: Google.Cloud.Securitycenter.V1.Access.t() | nil,
          mute_initiator: String.t()
        }

  defstruct name: "",
            parent: "",
            resource_name: "",
            state: :STATE_UNSPECIFIED,
            category: "",
            external_uri: "",
            source_properties: %{},
            security_marks: nil,
            event_time: nil,
            create_time: nil,
            severity: :SEVERITY_UNSPECIFIED,
            canonical_name: "",
            mute: :MUTE_UNSPECIFIED,
            finding_class: :FINDING_CLASS_UNSPECIFIED,
            indicator: nil,
            vulnerability: nil,
            mute_update_time: nil,
            external_systems: %{},
            access: nil,
            mute_initiator: ""

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

  field :access, 26, type: Google.Cloud.Securitycenter.V1.Access
  field :mute_initiator, 28, type: :string, json_name: "muteInitiator"
end
