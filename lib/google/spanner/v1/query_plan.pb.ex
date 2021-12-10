defmodule Google.Spanner.V1.PlanNode.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :KIND_UNSPECIFIED | :RELATIONAL | :SCALAR

  field :KIND_UNSPECIFIED, 0
  field :RELATIONAL, 1
  field :SCALAR, 2
end
defmodule Google.Spanner.V1.PlanNode.ChildLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          child_index: integer,
          type: String.t(),
          variable: String.t()
        }

  defstruct child_index: 0,
            type: "",
            variable: ""

  field :child_index, 1, type: :int32, json_name: "childIndex"
  field :type, 2, type: :string
  field :variable, 3, type: :string
end
defmodule Google.Spanner.V1.PlanNode.ShortRepresentation.SubqueriesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int32
end
defmodule Google.Spanner.V1.PlanNode.ShortRepresentation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          subqueries: %{String.t() => integer}
        }

  defstruct description: "",
            subqueries: %{}

  field :description, 1, type: :string

  field :subqueries, 2,
    repeated: true,
    type: Google.Spanner.V1.PlanNode.ShortRepresentation.SubqueriesEntry,
    map: true
end
defmodule Google.Spanner.V1.PlanNode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: integer,
          kind: Google.Spanner.V1.PlanNode.Kind.t(),
          display_name: String.t(),
          child_links: [Google.Spanner.V1.PlanNode.ChildLink.t()],
          short_representation: Google.Spanner.V1.PlanNode.ShortRepresentation.t() | nil,
          metadata: Google.Protobuf.Struct.t() | nil,
          execution_stats: Google.Protobuf.Struct.t() | nil
        }

  defstruct index: 0,
            kind: :KIND_UNSPECIFIED,
            display_name: "",
            child_links: [],
            short_representation: nil,
            metadata: nil,
            execution_stats: nil

  field :index, 1, type: :int32
  field :kind, 2, type: Google.Spanner.V1.PlanNode.Kind, enum: true
  field :display_name, 3, type: :string, json_name: "displayName"

  field :child_links, 4,
    repeated: true,
    type: Google.Spanner.V1.PlanNode.ChildLink,
    json_name: "childLinks"

  field :short_representation, 5,
    type: Google.Spanner.V1.PlanNode.ShortRepresentation,
    json_name: "shortRepresentation"

  field :metadata, 6, type: Google.Protobuf.Struct
  field :execution_stats, 7, type: Google.Protobuf.Struct, json_name: "executionStats"
end
defmodule Google.Spanner.V1.QueryPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plan_nodes: [Google.Spanner.V1.PlanNode.t()]
        }

  defstruct plan_nodes: []

  field :plan_nodes, 1, repeated: true, type: Google.Spanner.V1.PlanNode, json_name: "planNodes"
end
