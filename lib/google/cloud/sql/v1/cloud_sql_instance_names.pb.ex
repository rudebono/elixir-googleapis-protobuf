defmodule Google.Cloud.Sql.V1.SqlInstanceNamesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlInstanceNamesService",
    protoc_gen_elixir_version: "0.12.0"
end

defmodule Google.Cloud.Sql.V1.SqlInstanceNamesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlInstanceNamesService.Service
end