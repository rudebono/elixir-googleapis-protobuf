defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.AvroSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.ThriftSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.ProtobufSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.ParquetSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.OrcSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.CsvSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :schema, 0

  field :avro, 1, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.AvroSchema, oneof: 0
  field :thrift, 2, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.ThriftSchema, oneof: 0
  field :protobuf, 3, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.ProtobufSchema, oneof: 0
  field :parquet, 4, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.ParquetSchema, oneof: 0
  field :orc, 5, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.OrcSchema, oneof: 0
  field :csv, 6, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.CsvSchema, oneof: 0
end
