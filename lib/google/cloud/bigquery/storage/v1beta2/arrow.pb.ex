defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FORMAT_UNSPECIFIED | :ARROW_0_14 | :ARROW_0_15

  field :FORMAT_UNSPECIFIED, 0
  field :ARROW_0_14, 1
  field :ARROW_0_15, 2
end
defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_schema: binary
        }

  defstruct serialized_schema: ""

  field :serialized_schema, 1, type: :bytes, json_name: "serializedSchema"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowRecordBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_record_batch: binary
        }

  defstruct serialized_record_batch: ""

  field :serialized_record_batch, 1, type: :bytes, json_name: "serializedRecordBatch"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions.Format.t()
        }

  defstruct format: :FORMAT_UNSPECIFIED

  field :format, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions.Format,
    enum: true
end
