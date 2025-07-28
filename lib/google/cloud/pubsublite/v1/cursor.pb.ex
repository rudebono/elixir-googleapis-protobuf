defmodule Google.Cloud.Pubsublite.V1.InitialCommitCursorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subscription, 1, type: :string
  field :partition, 2, type: :int64
end

defmodule Google.Cloud.Pubsublite.V1.InitialCommitCursorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Pubsublite.V1.SequencedCommitCursorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.SequencedCommitCursorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :acknowledged_commits, 1, type: :int64, json_name: "acknowledgedCommits"
end

defmodule Google.Cloud.Pubsublite.V1.StreamingCommitCursorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :request, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialCommitCursorRequest, oneof: 0
  field :commit, 2, type: Google.Cloud.Pubsublite.V1.SequencedCommitCursorRequest, oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.StreamingCommitCursorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :request, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialCommitCursorResponse, oneof: 0
  field :commit, 2, type: Google.Cloud.Pubsublite.V1.SequencedCommitCursorResponse, oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.CommitCursorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subscription, 1, type: :string
  field :partition, 2, type: :int64
  field :cursor, 3, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.CommitCursorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Pubsublite.V1.ListPartitionCursorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Pubsublite.V1.PartitionCursor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partition, 1, type: :int64
  field :cursor, 2, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.ListPartitionCursorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partition_cursors, 1,
    repeated: true,
    type: Google.Cloud.Pubsublite.V1.PartitionCursor,
    json_name: "partitionCursors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Pubsublite.V1.CursorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.pubsublite.v1.CursorService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :StreamingCommitCursor,
      stream(Google.Cloud.Pubsublite.V1.StreamingCommitCursorRequest),
      stream(Google.Cloud.Pubsublite.V1.StreamingCommitCursorResponse)

  rpc :CommitCursor,
      Google.Cloud.Pubsublite.V1.CommitCursorRequest,
      Google.Cloud.Pubsublite.V1.CommitCursorResponse

  rpc :ListPartitionCursors,
      Google.Cloud.Pubsublite.V1.ListPartitionCursorsRequest,
      Google.Cloud.Pubsublite.V1.ListPartitionCursorsResponse
end

defmodule Google.Cloud.Pubsublite.V1.CursorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.CursorService.Service
end
