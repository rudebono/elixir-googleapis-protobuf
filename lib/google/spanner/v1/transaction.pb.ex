defmodule Google.Spanner.V1.TransactionOptions.ReadWrite do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Spanner.V1.TransactionOptions.PartitionedDml do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Spanner.V1.TransactionOptions.ReadOnly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          timestamp_bound: {atom, any},
          return_read_timestamp: boolean
        }

  defstruct [:timestamp_bound, :return_read_timestamp]

  oneof :timestamp_bound, 0
  field :strong, 1, type: :bool, oneof: 0
  field :min_read_timestamp, 2, type: Google.Protobuf.Timestamp, oneof: 0
  field :max_staleness, 3, type: Google.Protobuf.Duration, oneof: 0
  field :read_timestamp, 4, type: Google.Protobuf.Timestamp, oneof: 0
  field :exact_staleness, 5, type: Google.Protobuf.Duration, oneof: 0
  field :return_read_timestamp, 6, type: :bool
end

defmodule Google.Spanner.V1.TransactionOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: {atom, any}
        }

  defstruct [:mode]

  oneof :mode, 0
  field :read_write, 1, type: Google.Spanner.V1.TransactionOptions.ReadWrite, oneof: 0
  field :partitioned_dml, 3, type: Google.Spanner.V1.TransactionOptions.PartitionedDml, oneof: 0
  field :read_only, 2, type: Google.Spanner.V1.TransactionOptions.ReadOnly, oneof: 0
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
  field :read_timestamp, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Spanner.V1.TransactionSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: {atom, any}
        }

  defstruct [:selector]

  oneof :selector, 0
  field :single_use, 1, type: Google.Spanner.V1.TransactionOptions, oneof: 0
  field :id, 2, type: :bytes, oneof: 0
  field :begin, 3, type: Google.Spanner.V1.TransactionOptions, oneof: 0
end
