defmodule Google.Cloud.Bigquery.V2.GetServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.GetServiceAccountResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :email, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.ProjectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.v2.ProjectService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetServiceAccount,
      Google.Cloud.Bigquery.V2.GetServiceAccountRequest,
      Google.Cloud.Bigquery.V2.GetServiceAccountResponse
end

defmodule Google.Cloud.Bigquery.V2.ProjectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.V2.ProjectService.Service
end
