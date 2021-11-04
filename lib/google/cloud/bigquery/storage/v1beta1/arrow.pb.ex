defmodule Google.Cloud.Bigquery.Storage.V1beta1.ArrowSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_schema: binary
        }

  defstruct [:serialized_schema]

  field :serialized_schema, 1, type: :bytes, json_name: "serializedSchema"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.ArrowRecordBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_record_batch: binary,
          row_count: integer
        }

  defstruct [:serialized_record_batch, :row_count]

  field :serialized_record_batch, 1, type: :bytes, json_name: "serializedRecordBatch"
  field :row_count, 2, type: :int64, json_name: "rowCount"

  def transform_module(), do: nil
end
