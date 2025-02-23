defmodule Google.Spanner.V1.PlanNode.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :RELATIONAL, 1
  field :SCALAR, 2
end

defmodule Google.Spanner.V1.PlanNode.ChildLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :child_index, 1, type: :int32, json_name: "childIndex"
  field :type, 2, type: :string
  field :variable, 3, type: :string
end

defmodule Google.Spanner.V1.PlanNode.ShortRepresentation.SubqueriesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Spanner.V1.PlanNode.ShortRepresentation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :description, 1, type: :string

  field :subqueries, 2,
    repeated: true,
    type: Google.Spanner.V1.PlanNode.ShortRepresentation.SubqueriesEntry,
    map: true
end

defmodule Google.Spanner.V1.PlanNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plan_nodes, 1, repeated: true, type: Google.Spanner.V1.PlanNode, json_name: "planNodes"
end
