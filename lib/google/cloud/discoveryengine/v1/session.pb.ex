defmodule Google.Cloud.Discoveryengine.V1.Session.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
end

defmodule Google.Cloud.Discoveryengine.V1.Session.Turn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: Google.Cloud.Discoveryengine.V1.Query
  field :answer, 2, type: :string, deprecated: false

  field :detailed_answer, 7,
    type: Google.Cloud.Discoveryengine.V1.Answer,
    json_name: "detailedAnswer",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Session do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false
  field :state, 2, type: Google.Cloud.Discoveryengine.V1.Session.State, enum: true
  field :user_pseudo_id, 3, type: :string, json_name: "userPseudoId"
  field :turns, 4, repeated: true, type: Google.Cloud.Discoveryengine.V1.Session.Turn
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :is_pinned, 8, type: :bool, json_name: "isPinned", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Query do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  field :text, 2, type: :string, oneof: 0
  field :query_id, 1, type: :string, json_name: "queryId"
end
