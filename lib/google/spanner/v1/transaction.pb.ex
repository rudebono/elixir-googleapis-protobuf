defmodule Google.Spanner.V1.TransactionOptions.ReadWrite.ReadLockMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :READ_LOCK_MODE_UNSPECIFIED, 0
  field :PESSIMISTIC, 1
  field :OPTIMISTIC, 2
end

defmodule Google.Spanner.V1.TransactionOptions.ReadWrite do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :read_lock_mode, 1,
    type: Google.Spanner.V1.TransactionOptions.ReadWrite.ReadLockMode,
    json_name: "readLockMode",
    enum: true
end

defmodule Google.Spanner.V1.TransactionOptions.PartitionedDml do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Spanner.V1.TransactionOptions.ReadOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Spanner.V1.TransactionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :exclude_txn_from_change_streams, 5, type: :bool, json_name: "excludeTxnFromChangeStreams"
end

defmodule Google.Spanner.V1.Transaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :bytes
  field :read_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "readTimestamp"
end

defmodule Google.Spanner.V1.TransactionSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :selector, 0

  field :single_use, 1,
    type: Google.Spanner.V1.TransactionOptions,
    json_name: "singleUse",
    oneof: 0

  field :id, 2, type: :bytes, oneof: 0
  field :begin, 3, type: Google.Spanner.V1.TransactionOptions, oneof: 0
end