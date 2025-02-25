defmodule Google.Cloud.Sql.V1.SqlAvailableDatabaseVersionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlAvailableDatabaseVersionsService",
    protoc_gen_elixir_version: "0.14.1"
end

defmodule Google.Cloud.Sql.V1.SqlAvailableDatabaseVersionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlAvailableDatabaseVersionsService.Service
end
