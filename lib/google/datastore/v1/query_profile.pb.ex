defmodule Google.Datastore.V1.QueryMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NORMAL, 0
  field :PLAN, 1
  field :PROFILE, 2
end

defmodule Google.Datastore.V1.QueryPlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :plan_info, 1, type: Google.Protobuf.Struct, json_name: "planInfo"
end

defmodule Google.Datastore.V1.ResultSetStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_plan, 1, type: Google.Datastore.V1.QueryPlan, json_name: "queryPlan"
  field :query_stats, 2, type: Google.Protobuf.Struct, json_name: "queryStats"
end