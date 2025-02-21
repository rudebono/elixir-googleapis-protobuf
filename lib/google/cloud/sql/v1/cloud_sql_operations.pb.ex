defmodule Google.Cloud.Sql.V1.SqlOperationsGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlOperationsListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.OperationsListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Operation
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Sql.V1.SqlOperationsCancelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlOperationsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlOperationsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Get, Google.Cloud.Sql.V1.SqlOperationsGetRequest, Google.Cloud.Sql.V1.Operation

  rpc :List,
      Google.Cloud.Sql.V1.SqlOperationsListRequest,
      Google.Cloud.Sql.V1.OperationsListResponse

  rpc :Cancel, Google.Cloud.Sql.V1.SqlOperationsCancelRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Sql.V1.SqlOperationsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlOperationsService.Service
end
