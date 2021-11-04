defmodule Google.Spanner.V1.TransactionOptions.ReadWrite do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Spanner.V1.TransactionOptions.PartitionedDml do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Spanner.V1.TransactionOptions.ReadOnly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          timestamp_bound:
            {:strong, boolean}
            | {:min_read_timestamp, Google.Protobuf.Timestamp.t() | nil}
            | {:max_staleness, Google.Protobuf.Duration.t() | nil}
            | {:read_timestamp, Google.Protobuf.Timestamp.t() | nil}
            | {:exact_staleness, Google.Protobuf.Duration.t() | nil},
          return_read_timestamp: boolean
        }

  defstruct [:timestamp_bound, :return_read_timestamp]

  oneof :timestamp_bound, 0

  field :strong, 1, type: :bool, oneof: 0

  field :min_read_timestamp, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "minReadTimestamp",
    oneof: 0

  field :max_staleness, 3, type: Google.Protobuf.Duration, json_name: "maxStaleness", oneof: 0
  field :read_timestamp, 4, type: Google.Protobuf.Timestamp, json_name: "readTimestamp", oneof: 0
  field :exact_staleness, 5, type: Google.Protobuf.Duration, json_name: "exactStaleness", oneof: 0
  field :return_read_timestamp, 6, type: :bool, json_name: "returnReadTimestamp"

  def transform_module(), do: nil
end

defmodule Google.Spanner.V1.TransactionOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode:
            {:read_write, Google.Spanner.V1.TransactionOptions.ReadWrite.t() | nil}
            | {:partitioned_dml, Google.Spanner.V1.TransactionOptions.PartitionedDml.t() | nil}
            | {:read_only, Google.Spanner.V1.TransactionOptions.ReadOnly.t() | nil}
        }

  defstruct [:mode]

  oneof :mode, 0

  field :read_write, 1,
    type: Google.Spanner.V1.TransactionOptions.ReadWrite,
    json_name: "readWrite",
    oneof: 0

  field :partitioned_dml, 3,
    type: Google.Spanner.V1.TransactionOptions.PartitionedDml,
    json_name: "partitionedDml",
    oneof: 0

  field :read_only, 2,
    type: Google.Spanner.V1.TransactionOptions.ReadOnly,
    json_name: "readOnly",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Spanner.V1.Transaction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: binary,
          read_timestamp: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:id, :read_timestamp]

  field :id, 1, type: :bytes
  field :read_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "readTimestamp"

  def transform_module(), do: nil
end

defmodule Google.Spanner.V1.TransactionSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector:
            {:single_use, Google.Spanner.V1.TransactionOptions.t() | nil}
            | {:id, binary}
            | {:begin, Google.Spanner.V1.TransactionOptions.t() | nil}
        }

  defstruct [:selector]

  oneof :selector, 0

  field :single_use, 1,
    type: Google.Spanner.V1.TransactionOptions,
    json_name: "singleUse",
    oneof: 0

  field :id, 2, type: :bytes, oneof: 0
  field :begin, 3, type: Google.Spanner.V1.TransactionOptions, oneof: 0

  def transform_module(), do: nil
end
