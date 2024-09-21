defmodule Google.Cloud.Bigquery.Migration.V2.ResourceErrorDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_info, 1,
    type: Google.Rpc.ResourceInfo,
    json_name: "resourceInfo",
    deprecated: false

  field :error_details, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ErrorDetail,
    json_name: "errorDetails",
    deprecated: false

  field :error_count, 3, type: :int32, json_name: "errorCount", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.ErrorDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location, 1, type: Google.Cloud.Bigquery.Migration.V2.ErrorLocation, deprecated: false
  field :error_info, 2, type: Google.Rpc.ErrorInfo, json_name: "errorInfo", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.ErrorLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :line, 1, type: :int32, deprecated: false
  field :column, 2, type: :int32, deprecated: false
end