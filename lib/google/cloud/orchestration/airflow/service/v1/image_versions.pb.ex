defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :include_past_releases, 4, type: :bool, json_name: "includePastReleases"
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image_versions, 1,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersion,
    json_name: "imageVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image_version_id, 1, type: :string, json_name: "imageVersionId"
  field :is_default, 2, type: :bool, json_name: "isDefault"

  field :supported_python_versions, 3,
    repeated: true,
    type: :string,
    json_name: "supportedPythonVersions"

  field :release_date, 4, type: Google.Type.Date, json_name: "releaseDate"
  field :creation_disabled, 5, type: :bool, json_name: "creationDisabled"
  field :upgrade_disabled, 6, type: :bool, json_name: "upgradeDisabled"
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.orchestration.airflow.service.v1.ImageVersions",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListImageVersions,
      Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsRequest,
      Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsResponse
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersions.Service
end
