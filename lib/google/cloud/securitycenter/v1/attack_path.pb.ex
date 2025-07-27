defmodule Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.NodeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NODE_TYPE_UNSPECIFIED, 0
  field :NODE_TYPE_AND, 1
  field :NODE_TYPE_OR, 2
  field :NODE_TYPE_DEFENSE, 3
  field :NODE_TYPE_ATTACKER, 4
end

defmodule Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.PathNodeAssociatedFinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :canonical_finding, 1, type: :string, json_name: "canonicalFinding"
  field :finding_category, 2, type: :string, json_name: "findingCategory"
  field :name, 3, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.AttackStepNode.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.AttackStepNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uuid, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.NodeType,
    enum: true

  field :display_name, 3, type: :string, json_name: "displayName"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.AttackStepNode.LabelsEntry,
    map: true

  field :description, 5, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :display_name, 3, type: :string, json_name: "displayName"

  field :associated_findings, 4,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.PathNodeAssociatedFinding,
    json_name: "associatedFindings"

  field :uuid, 5, type: :string

  field :attack_steps, 6,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode.AttackStepNode,
    json_name: "attackSteps"
end

defmodule Google.Cloud.Securitycenter.V1.AttackPath.AttackPathEdge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source, 1, type: :string
  field :destination, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AttackPath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :path_nodes, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.AttackPath.AttackPathNode,
    json_name: "pathNodes"

  field :edges, 3, repeated: true, type: Google.Cloud.Securitycenter.V1.AttackPath.AttackPathEdge
end
