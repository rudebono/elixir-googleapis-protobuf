defmodule Google.Watcher.V1.Change.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EXISTS, 0
  field :DOES_NOT_EXIST, 1
  field :INITIAL_STATE_SKIPPED, 2
  field :ERROR, 3
end

defmodule Google.Watcher.V1.Request do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target, 1, type: :string
  field :resume_marker, 2, type: :bytes, json_name: "resumeMarker"
end

defmodule Google.Watcher.V1.ChangeBatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :changes, 1, repeated: true, type: Google.Watcher.V1.Change
end

defmodule Google.Watcher.V1.Change do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :element, 1, type: :string
  field :state, 2, type: Google.Watcher.V1.Change.State, enum: true
  field :data, 6, type: Google.Protobuf.Any
  field :resume_marker, 4, type: :bytes, json_name: "resumeMarker"
  field :continued, 5, type: :bool
end

defmodule Google.Watcher.V1.Watcher.Service do
  @moduledoc false

  use GRPC.Service, name: "google.watcher.v1.Watcher", protoc_gen_elixir_version: "0.13.0"

  rpc :Watch, Google.Watcher.V1.Request, stream(Google.Watcher.V1.ChangeBatch)
end

defmodule Google.Watcher.V1.Watcher.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Watcher.V1.Watcher.Service
end