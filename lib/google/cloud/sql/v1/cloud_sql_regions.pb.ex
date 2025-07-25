defmodule Google.Cloud.Sql.V1.SqlRegionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlRegionsService",
    protoc_gen_elixir_version: "0.15.0"
end

defmodule Google.Cloud.Sql.V1.SqlRegionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlRegionsService.Service
end
