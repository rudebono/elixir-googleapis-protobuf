defmodule Google.Genomics.V1.OperationMetadata.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Genomics.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 5, type: Google.Protobuf.Any
  field :events, 6, repeated: true, type: Google.Genomics.V1.OperationEvent
  field :client_id, 7, type: :string, json_name: "clientId"
  field :runtime_metadata, 8, type: Google.Protobuf.Any, json_name: "runtimeMetadata"

  field :labels, 9,
    repeated: true,
    type: Google.Genomics.V1.OperationMetadata.LabelsEntry,
    map: true
end

defmodule Google.Genomics.V1.OperationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :description, 3, type: :string
end
