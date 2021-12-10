defmodule Google.Spanner.V1.CommitResponse.CommitStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mutation_count: integer
        }

  defstruct mutation_count: 0

  field :mutation_count, 1, type: :int64, json_name: "mutationCount"
end
defmodule Google.Spanner.V1.CommitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commit_timestamp: Google.Protobuf.Timestamp.t() | nil,
          commit_stats: Google.Spanner.V1.CommitResponse.CommitStats.t() | nil
        }

  defstruct commit_timestamp: nil,
            commit_stats: nil

  field :commit_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "commitTimestamp"

  field :commit_stats, 2,
    type: Google.Spanner.V1.CommitResponse.CommitStats,
    json_name: "commitStats"
end
