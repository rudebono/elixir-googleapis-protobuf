defmodule Google.Cloud.Sql.V1.SqlDatabasesDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlDatabasesGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlDatabasesInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.Database
end

defmodule Google.Cloud.Sql.V1.SqlDatabasesListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlDatabasesUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :database, 1, type: :string
  field :instance, 2, type: :string
  field :project, 3, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.Database
end

defmodule Google.Cloud.Sql.V1.DatabasesListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Database
end

defmodule Google.Cloud.Sql.V1.SqlDatabasesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlDatabasesService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Delete, Google.Cloud.Sql.V1.SqlDatabasesDeleteRequest, Google.Cloud.Sql.V1.Operation

  rpc :Get, Google.Cloud.Sql.V1.SqlDatabasesGetRequest, Google.Cloud.Sql.V1.Database

  rpc :Insert, Google.Cloud.Sql.V1.SqlDatabasesInsertRequest, Google.Cloud.Sql.V1.Operation

  rpc :List,
      Google.Cloud.Sql.V1.SqlDatabasesListRequest,
      Google.Cloud.Sql.V1.DatabasesListResponse

  rpc :Patch, Google.Cloud.Sql.V1.SqlDatabasesUpdateRequest, Google.Cloud.Sql.V1.Operation

  rpc :Update, Google.Cloud.Sql.V1.SqlDatabasesUpdateRequest, Google.Cloud.Sql.V1.Operation
end

defmodule Google.Cloud.Sql.V1.SqlDatabasesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlDatabasesService.Service
end
