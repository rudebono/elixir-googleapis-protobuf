defmodule Google.Cloud.Gsuiteaddons.V1.GetAuthorizationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.Authorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :service_account_email, 2, type: :string, json_name: "serviceAccountEmail"
  field :oauth_client_id, 3, type: :string, json_name: "oauthClientId"
end

defmodule Google.Cloud.Gsuiteaddons.V1.CreateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :deployment, 3, type: Google.Cloud.Gsuiteaddons.V1.Deployment, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.ReplaceDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :deployment, 2, type: Google.Cloud.Gsuiteaddons.V1.Deployment, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.GetDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.ListDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Gsuiteaddons.V1.ListDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Gsuiteaddons.V1.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Gsuiteaddons.V1.DeleteDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Gsuiteaddons.V1.InstallDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.UninstallDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.GetInstallStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gsuiteaddons.V1.InstallStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :installed, 2, type: Google.Protobuf.BoolValue
end

defmodule Google.Cloud.Gsuiteaddons.V1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :oauth_scopes, 2, repeated: true, type: :string, json_name: "oauthScopes"
  field :add_ons, 3, type: Google.Cloud.Gsuiteaddons.V1.AddOns, json_name: "addOns"
  field :etag, 5, type: :string
end

defmodule Google.Cloud.Gsuiteaddons.V1.AddOns do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :common, 1, type: Google.Apps.Script.Type.CommonAddOnManifest
  field :gmail, 2, type: Google.Apps.Script.Type.Gmail.GmailAddOnManifest
  field :drive, 5, type: Google.Apps.Script.Type.Drive.DriveAddOnManifest
  field :calendar, 6, type: Google.Apps.Script.Type.Calendar.CalendarAddOnManifest
  field :docs, 7, type: Google.Apps.Script.Type.Docs.DocsAddOnManifest
  field :sheets, 8, type: Google.Apps.Script.Type.Sheets.SheetsAddOnManifest
  field :slides, 10, type: Google.Apps.Script.Type.Slides.SlidesAddOnManifest
  field :http_options, 15, type: Google.Apps.Script.Type.HttpOptions, json_name: "httpOptions"
end

defmodule Google.Cloud.Gsuiteaddons.V1.GSuiteAddOns.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gsuiteaddons.v1.GSuiteAddOns",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetAuthorization,
      Google.Cloud.Gsuiteaddons.V1.GetAuthorizationRequest,
      Google.Cloud.Gsuiteaddons.V1.Authorization

  rpc :CreateDeployment,
      Google.Cloud.Gsuiteaddons.V1.CreateDeploymentRequest,
      Google.Cloud.Gsuiteaddons.V1.Deployment

  rpc :ReplaceDeployment,
      Google.Cloud.Gsuiteaddons.V1.ReplaceDeploymentRequest,
      Google.Cloud.Gsuiteaddons.V1.Deployment

  rpc :GetDeployment,
      Google.Cloud.Gsuiteaddons.V1.GetDeploymentRequest,
      Google.Cloud.Gsuiteaddons.V1.Deployment

  rpc :ListDeployments,
      Google.Cloud.Gsuiteaddons.V1.ListDeploymentsRequest,
      Google.Cloud.Gsuiteaddons.V1.ListDeploymentsResponse

  rpc :DeleteDeployment,
      Google.Cloud.Gsuiteaddons.V1.DeleteDeploymentRequest,
      Google.Protobuf.Empty

  rpc :InstallDeployment,
      Google.Cloud.Gsuiteaddons.V1.InstallDeploymentRequest,
      Google.Protobuf.Empty

  rpc :UninstallDeployment,
      Google.Cloud.Gsuiteaddons.V1.UninstallDeploymentRequest,
      Google.Protobuf.Empty

  rpc :GetInstallStatus,
      Google.Cloud.Gsuiteaddons.V1.GetInstallStatusRequest,
      Google.Cloud.Gsuiteaddons.V1.InstallStatus
end

defmodule Google.Cloud.Gsuiteaddons.V1.GSuiteAddOns.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gsuiteaddons.V1.GSuiteAddOns.Service
end
