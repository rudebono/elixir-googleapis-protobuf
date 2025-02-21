defmodule Google.Cloud.Connectors.V1.Connectors.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.connectors.v1.Connectors",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListConnections,
      Google.Cloud.Connectors.V1.ListConnectionsRequest,
      Google.Cloud.Connectors.V1.ListConnectionsResponse

  rpc :GetConnection,
      Google.Cloud.Connectors.V1.GetConnectionRequest,
      Google.Cloud.Connectors.V1.Connection

  rpc :CreateConnection,
      Google.Cloud.Connectors.V1.CreateConnectionRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnection,
      Google.Cloud.Connectors.V1.UpdateConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnection,
      Google.Cloud.Connectors.V1.DeleteConnectionRequest,
      Google.Longrunning.Operation

  rpc :ListProviders,
      Google.Cloud.Connectors.V1.ListProvidersRequest,
      Google.Cloud.Connectors.V1.ListProvidersResponse

  rpc :GetProvider,
      Google.Cloud.Connectors.V1.GetProviderRequest,
      Google.Cloud.Connectors.V1.Provider

  rpc :ListConnectors,
      Google.Cloud.Connectors.V1.ListConnectorsRequest,
      Google.Cloud.Connectors.V1.ListConnectorsResponse

  rpc :GetConnector,
      Google.Cloud.Connectors.V1.GetConnectorRequest,
      Google.Cloud.Connectors.V1.Connector

  rpc :ListConnectorVersions,
      Google.Cloud.Connectors.V1.ListConnectorVersionsRequest,
      Google.Cloud.Connectors.V1.ListConnectorVersionsResponse

  rpc :GetConnectorVersion,
      Google.Cloud.Connectors.V1.GetConnectorVersionRequest,
      Google.Cloud.Connectors.V1.ConnectorVersion

  rpc :GetConnectionSchemaMetadata,
      Google.Cloud.Connectors.V1.GetConnectionSchemaMetadataRequest,
      Google.Cloud.Connectors.V1.ConnectionSchemaMetadata

  rpc :RefreshConnectionSchemaMetadata,
      Google.Cloud.Connectors.V1.RefreshConnectionSchemaMetadataRequest,
      Google.Longrunning.Operation

  rpc :ListRuntimeEntitySchemas,
      Google.Cloud.Connectors.V1.ListRuntimeEntitySchemasRequest,
      Google.Cloud.Connectors.V1.ListRuntimeEntitySchemasResponse

  rpc :ListRuntimeActionSchemas,
      Google.Cloud.Connectors.V1.ListRuntimeActionSchemasRequest,
      Google.Cloud.Connectors.V1.ListRuntimeActionSchemasResponse

  rpc :GetRuntimeConfig,
      Google.Cloud.Connectors.V1.GetRuntimeConfigRequest,
      Google.Cloud.Connectors.V1.RuntimeConfig

  rpc :GetGlobalSettings,
      Google.Cloud.Connectors.V1.GetGlobalSettingsRequest,
      Google.Cloud.Connectors.V1.Settings
end

defmodule Google.Cloud.Connectors.V1.Connectors.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Connectors.V1.Connectors.Service
end
