defmodule Google.Cloud.Sql.V1beta4.SqlIamPoliciesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlIamPoliciesService",
    protoc_gen_elixir_version: "0.13.0"
end

defmodule Google.Cloud.Sql.V1beta4.SqlIamPoliciesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlIamPoliciesService.Service
end