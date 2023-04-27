defmodule Google.Maps.Mapsplatformdatasets.V1alpha.MapsPlatformDatasetsV1Alpha.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.mapsplatformdatasets.v1alpha.MapsPlatformDatasetsV1Alpha",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateDataset,
      Google.Maps.Mapsplatformdatasets.V1alpha.CreateDatasetRequest,
      Google.Maps.Mapsplatformdatasets.V1alpha.Dataset

  rpc :UpdateDatasetMetadata,
      Google.Maps.Mapsplatformdatasets.V1alpha.UpdateDatasetMetadataRequest,
      Google.Maps.Mapsplatformdatasets.V1alpha.Dataset

  rpc :GetDataset,
      Google.Maps.Mapsplatformdatasets.V1alpha.GetDatasetRequest,
      Google.Maps.Mapsplatformdatasets.V1alpha.Dataset

  rpc :ListDatasetVersions,
      Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetVersionsRequest,
      Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetVersionsResponse

  rpc :ListDatasets,
      Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetsRequest,
      Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetsResponse

  rpc :DeleteDataset,
      Google.Maps.Mapsplatformdatasets.V1alpha.DeleteDatasetRequest,
      Google.Protobuf.Empty

  rpc :DeleteDatasetVersion,
      Google.Maps.Mapsplatformdatasets.V1alpha.DeleteDatasetVersionRequest,
      Google.Protobuf.Empty
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.MapsPlatformDatasetsV1Alpha.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Maps.Mapsplatformdatasets.V1alpha.MapsPlatformDatasetsV1Alpha.Service
end