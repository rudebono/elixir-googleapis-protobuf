defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :ARROW_0_14, 1
  field :ARROW_0_15, 2
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :serialized_schema, 1, type: :bytes, json_name: "serializedSchema"
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowRecordBatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :serialized_record_batch, 1, type: :bytes, json_name: "serializedRecordBatch"
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :format, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ArrowSerializationOptions.Format,
    enum: true
end
