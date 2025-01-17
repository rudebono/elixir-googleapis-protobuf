defmodule Google.Cloud.Sql.V1.SqlIamPoliciesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlIamPoliciesService",
    protoc_gen_elixir_version: "0.14.0"
end

defmodule Google.Cloud.Sql.V1.SqlIamPoliciesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlIamPoliciesService.Service
end
