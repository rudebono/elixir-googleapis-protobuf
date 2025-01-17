defmodule Google.Firestore.V1.DocumentMask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :field_paths, 1, repeated: true, type: :string, json_name: "fieldPaths"
end

defmodule Google.Firestore.V1.Precondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :condition_type, 0

  field :exists, 1, type: :bool, oneof: 0
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime", oneof: 0
end

defmodule Google.Firestore.V1.TransactionOptions.ReadWrite do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :retry_transaction, 1, type: :bytes, json_name: "retryTransaction"
end

defmodule Google.Firestore.V1.TransactionOptions.ReadOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :consistency_selector, 0

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end

defmodule Google.Firestore.V1.TransactionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :mode, 0

  field :read_only, 2,
    type: Google.Firestore.V1.TransactionOptions.ReadOnly,
    json_name: "readOnly",
    oneof: 0

  field :read_write, 3,
    type: Google.Firestore.V1.TransactionOptions.ReadWrite,
    json_name: "readWrite",
    oneof: 0
end
