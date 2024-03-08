defmodule Google.Bigtable.Admin.V2.Type.Bytes.Encoding.Raw do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Bytes.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :encoding, 0

  field :raw, 1, type: Google.Bigtable.Admin.V2.Type.Bytes.Encoding.Raw, oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.Bytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encoding, 1, type: Google.Bigtable.Admin.V2.Type.Bytes.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.Int64.Encoding.BigEndianBytes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bytes_type, 1, type: Google.Bigtable.Admin.V2.Type.Bytes, json_name: "bytesType"
end

defmodule Google.Bigtable.Admin.V2.Type.Int64.Encoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :encoding, 0

  field :big_endian_bytes, 1,
    type: Google.Bigtable.Admin.V2.Type.Int64.Encoding.BigEndianBytes,
    json_name: "bigEndianBytes",
    oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type.Int64 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encoding, 1, type: Google.Bigtable.Admin.V2.Type.Int64.Encoding
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate.Sum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.Type.Aggregate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :aggregator, 0

  field :input_type, 1, type: Google.Bigtable.Admin.V2.Type, json_name: "inputType"

  field :state_type, 2,
    type: Google.Bigtable.Admin.V2.Type,
    json_name: "stateType",
    deprecated: false

  field :sum, 4, type: Google.Bigtable.Admin.V2.Type.Aggregate.Sum, oneof: 0
end

defmodule Google.Bigtable.Admin.V2.Type do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :kind, 0

  field :bytes_type, 1,
    type: Google.Bigtable.Admin.V2.Type.Bytes,
    json_name: "bytesType",
    oneof: 0

  field :int64_type, 5,
    type: Google.Bigtable.Admin.V2.Type.Int64,
    json_name: "int64Type",
    oneof: 0

  field :aggregate_type, 6,
    type: Google.Bigtable.Admin.V2.Type.Aggregate,
    json_name: "aggregateType",
    oneof: 0
end