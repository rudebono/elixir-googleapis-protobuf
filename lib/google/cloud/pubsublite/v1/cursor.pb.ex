defmodule Google.Cloud.Pubsublite.V1.InitialCommitCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          partition: integer
        }

  defstruct [:subscription, :partition]

  field :subscription, 1, type: :string
  field :partition, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.InitialCommitCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SequencedCommitCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:cursor]

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SequencedCommitCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          acknowledged_commits: integer
        }

  defstruct [:acknowledged_commits]

  field :acknowledged_commits, 1, type: :int64, json_name: "acknowledgedCommits"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.StreamingCommitCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:initial, Google.Cloud.Pubsublite.V1.InitialCommitCursorRequest.t() | nil}
            | {:commit, Google.Cloud.Pubsublite.V1.SequencedCommitCursorRequest.t() | nil}
        }

  defstruct [:request]

  oneof :request, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialCommitCursorRequest, oneof: 0
  field :commit, 2, type: Google.Cloud.Pubsublite.V1.SequencedCommitCursorRequest, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.StreamingCommitCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:initial, Google.Cloud.Pubsublite.V1.InitialCommitCursorResponse.t() | nil}
            | {:commit, Google.Cloud.Pubsublite.V1.SequencedCommitCursorResponse.t() | nil}
        }

  defstruct [:request]

  oneof :request, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialCommitCursorResponse, oneof: 0
  field :commit, 2, type: Google.Cloud.Pubsublite.V1.SequencedCommitCursorResponse, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.CommitCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          partition: integer,
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:subscription, :partition, :cursor]

  field :subscription, 1, type: :string
  field :partition, 2, type: :int64
  field :cursor, 3, type: Google.Cloud.Pubsublite.V1.Cursor

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.CommitCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.ListPartitionCursorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.PartitionCursor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition: integer,
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:partition, :cursor]

  field :partition, 1, type: :int64
  field :cursor, 2, type: Google.Cloud.Pubsublite.V1.Cursor

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.ListPartitionCursorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_cursors: [Google.Cloud.Pubsublite.V1.PartitionCursor.t()],
          next_page_token: String.t()
        }

  defstruct [:partition_cursors, :next_page_token]

  field :partition_cursors, 1,
    repeated: true,
    type: Google.Cloud.Pubsublite.V1.PartitionCursor,
    json_name: "partitionCursors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.CursorService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.pubsublite.v1.CursorService"

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
