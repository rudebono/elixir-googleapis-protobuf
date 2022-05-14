defmodule Grafeas.V1.ComplianceNote.CisBenchmark do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :profile_level, 1, type: :int32, json_name: "profileLevel"
  field :severity, 2, type: Grafeas.V1.Severity, enum: true
end
defmodule Grafeas.V1.ComplianceNote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :compliance_type, 0

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :version, 3, repeated: true, type: Grafeas.V1.ComplianceVersion
  field :rationale, 4, type: :string
  field :remediation, 5, type: :string

  field :cis_benchmark, 6,
    type: Grafeas.V1.ComplianceNote.CisBenchmark,
    json_name: "cisBenchmark",
    oneof: 0

  field :scan_instructions, 7, type: :bytes, json_name: "scanInstructions"
end
defmodule Grafeas.V1.ComplianceVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :version, 2, type: :string
end
defmodule Grafeas.V1.ComplianceOccurrence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :non_compliant_files, 2,
    repeated: true,
    type: Grafeas.V1.NonCompliantFile,
    json_name: "nonCompliantFiles"

  field :non_compliance_reason, 3, type: :string, json_name: "nonComplianceReason"
end
defmodule Grafeas.V1.NonCompliantFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :path, 1, type: :string
  field :display_command, 2, type: :string, json_name: "displayCommand"
  field :reason, 3, type: :string
end
