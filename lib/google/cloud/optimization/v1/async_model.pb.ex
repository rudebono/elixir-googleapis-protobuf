defmodule Google.Cloud.Optimization.V1.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
  field :STRING, 2
end

defmodule Google.Cloud.Optimization.V1.AsyncModelMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :CANCELLED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Optimization.V1.InputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Optimization.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :data_format, 2,
    type: Google.Cloud.Optimization.V1.DataFormat,
    json_name: "dataFormat",
    enum: true
end

defmodule Google.Cloud.Optimization.V1.OutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Optimization.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :data_format, 2,
    type: Google.Cloud.Optimization.V1.DataFormat,
    json_name: "dataFormat",
    enum: true
end

defmodule Google.Cloud.Optimization.V1.GcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Optimization.V1.GcsDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Optimization.V1.AsyncModelMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Optimization.V1.AsyncModelMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end