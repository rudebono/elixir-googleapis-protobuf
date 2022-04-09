defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.AvroSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct text: ""

  field :text, 1, type: :string
end
defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.ThriftSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct text: ""

  field :text, 1, type: :string
end
defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.ProtobufSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct text: ""

  field :text, 1, type: :string
end
defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.ParquetSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.OrcSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema.CsvSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Datacatalog.V1.PhysicalSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema:
            {:avro, Google.Cloud.Datacatalog.V1.PhysicalSchema.AvroSchema.t() | nil}
            | {:thrift, Google.Cloud.Datacatalog.V1.PhysicalSchema.ThriftSchema.t() | nil}
            | {:protobuf, Google.Cloud.Datacatalog.V1.PhysicalSchema.ProtobufSchema.t() | nil}
            | {:parquet, Google.Cloud.Datacatalog.V1.PhysicalSchema.ParquetSchema.t() | nil}
            | {:orc, Google.Cloud.Datacatalog.V1.PhysicalSchema.OrcSchema.t() | nil}
            | {:csv, Google.Cloud.Datacatalog.V1.PhysicalSchema.CsvSchema.t() | nil}
        }

  defstruct schema: nil

  oneof :schema, 0

  field :avro, 1, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.AvroSchema, oneof: 0
  field :thrift, 2, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.ThriftSchema, oneof: 0
  field :protobuf, 3, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.ProtobufSchema, oneof: 0
  field :parquet, 4, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.ParquetSchema, oneof: 0
  field :orc, 5, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.OrcSchema, oneof: 0
  field :csv, 6, type: Google.Cloud.Datacatalog.V1.PhysicalSchema.CsvSchema, oneof: 0
end
