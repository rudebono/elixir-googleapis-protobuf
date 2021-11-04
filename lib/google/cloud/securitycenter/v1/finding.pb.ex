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

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
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
          finding_class: Google.Cloud.Securitycenter.V1.Finding.FindingClass.t(),
          indicator: Google.Cloud.Securitycenter.V1.Indicator.t() | nil,
          vulnerability: Google.Cloud.Securitycenter.V1.Vulnerability.t() | nil
        }

  defstruct [
    :name,
    :parent,
    :resource_name,
    :state,
    :category,
    :external_uri,
    :source_properties,
    :security_marks,
    :event_time,
    :create_time,
    :severity,
    :canonical_name,
    :finding_class,
    :indicator,
    :vulnerability
  ]

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
    json_name: "securityMarks"

  field :event_time, 9, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :severity, 12, type: Google.Cloud.Securitycenter.V1.Finding.Severity, enum: true
  field :canonical_name, 14, type: :string, json_name: "canonicalName"

  field :finding_class, 17,
    type: Google.Cloud.Securitycenter.V1.Finding.FindingClass,
    enum: true,
    json_name: "findingClass"

  field :indicator, 18, type: Google.Cloud.Securitycenter.V1.Indicator
  field :vulnerability, 20, type: Google.Cloud.Securitycenter.V1.Vulnerability

  def transform_module(), do: nil
end
