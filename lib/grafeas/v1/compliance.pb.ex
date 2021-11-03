defmodule Grafeas.V1.ComplianceNote.CisBenchmark do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profile_level: integer,
          severity: Grafeas.V1.Severity.t()
        }

  defstruct [:profile_level, :severity]

  field :profile_level, 1, type: :int32
  field :severity, 2, type: Grafeas.V1.Severity, enum: true
end

defmodule Grafeas.V1.ComplianceNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          compliance_type: {atom, any},
          title: String.t(),
          description: String.t(),
          version: [Grafeas.V1.ComplianceVersion.t()],
          rationale: String.t(),
          remediation: String.t(),
          scan_instructions: binary
        }

  defstruct [
    :compliance_type,
    :title,
    :description,
    :version,
    :rationale,
    :remediation,
    :scan_instructions
  ]

  oneof :compliance_type, 0
  field :title, 1, type: :string
  field :description, 2, type: :string
  field :version, 3, repeated: true, type: Grafeas.V1.ComplianceVersion
  field :rationale, 4, type: :string
  field :remediation, 5, type: :string
  field :cis_benchmark, 6, type: Grafeas.V1.ComplianceNote.CisBenchmark, oneof: 0
  field :scan_instructions, 7, type: :bytes
end

defmodule Grafeas.V1.ComplianceVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpe_uri: String.t(),
          version: String.t()
        }

  defstruct [:cpe_uri, :version]

  field :cpe_uri, 1, type: :string
  field :version, 2, type: :string
end

defmodule Grafeas.V1.ComplianceOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_compliant_files: [Grafeas.V1.NonCompliantFile.t()],
          non_compliance_reason: String.t()
        }

  defstruct [:non_compliant_files, :non_compliance_reason]

  field :non_compliant_files, 2, repeated: true, type: Grafeas.V1.NonCompliantFile
  field :non_compliance_reason, 3, type: :string
end

defmodule Grafeas.V1.NonCompliantFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: String.t(),
          display_command: String.t(),
          reason: String.t()
        }

  defstruct [:path, :display_command, :reason]

  field :path, 1, type: :string
  field :display_command, 2, type: :string
  field :reason, 3, type: :string
end
