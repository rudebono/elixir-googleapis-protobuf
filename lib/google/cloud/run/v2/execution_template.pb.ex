defmodule Google.Cloud.Run.V2.ExecutionTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.ExecutionTemplate.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.ExecutionTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Run.V2.ExecutionTemplate.LabelsEntry,
    map: true

  field :annotations, 2,
    repeated: true,
    type: Google.Cloud.Run.V2.ExecutionTemplate.AnnotationsEntry,
    map: true

  field :parallelism, 3, type: :int32
  field :task_count, 4, type: :int32, json_name: "taskCount"
  field :template, 5, type: Google.Cloud.Run.V2.TaskTemplate, deprecated: false
end
