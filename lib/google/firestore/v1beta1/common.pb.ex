defmodule Google.Firestore.V1beta1.DocumentMask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_paths: [String.t()]
        }

  defstruct [:field_paths]

  field :field_paths, 1, repeated: true, type: :string, json_name: "fieldPaths"

  def transform_module(), do: nil
end

defmodule Google.Firestore.V1beta1.Precondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition_type: {:exists, boolean} | {:update_time, Google.Protobuf.Timestamp.t() | nil}
        }

  defstruct [:condition_type]

  oneof :condition_type, 0

  field :exists, 1, type: :bool, oneof: 0
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Firestore.V1beta1.TransactionOptions.ReadWrite do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          retry_transaction: binary
        }

  defstruct [:retry_transaction]

  field :retry_transaction, 1, type: :bytes, json_name: "retryTransaction"

  def transform_module(), do: nil
end

defmodule Google.Firestore.V1beta1.TransactionOptions.ReadOnly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_selector: {:read_time, Google.Protobuf.Timestamp.t() | nil}
        }

  defstruct [:consistency_selector]

  oneof :consistency_selector, 0

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Firestore.V1beta1.TransactionOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode:
            {:read_only, Google.Firestore.V1beta1.TransactionOptions.ReadOnly.t() | nil}
            | {:read_write, Google.Firestore.V1beta1.TransactionOptions.ReadWrite.t() | nil}
        }

  defstruct [:mode]

  oneof :mode, 0

  field :read_only, 2,
    type: Google.Firestore.V1beta1.TransactionOptions.ReadOnly,
    json_name: "readOnly",
    oneof: 0

  field :read_write, 3,
    type: Google.Firestore.V1beta1.TransactionOptions.ReadWrite,
    json_name: "readWrite",
    oneof: 0

  def transform_module(), do: nil
end
