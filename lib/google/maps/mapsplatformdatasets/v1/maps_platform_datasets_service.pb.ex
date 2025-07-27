defmodule Google.Maps.Mapsplatformdatasets.V1.MapsPlatformDatasets.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.mapsplatformdatasets.v1.MapsPlatformDatasets",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateDataset,
      Google.Maps.Mapsplatformdatasets.V1.CreateDatasetRequest,
      Google.Maps.Mapsplatformdatasets.V1.Dataset

  rpc :UpdateDatasetMetadata,
      Google.Maps.Mapsplatformdatasets.V1.UpdateDatasetMetadataRequest,
      Google.Maps.Mapsplatformdatasets.V1.Dataset

  rpc :GetDataset,
      Google.Maps.Mapsplatformdatasets.V1.GetDatasetRequest,
      Google.Maps.Mapsplatformdatasets.V1.Dataset

  rpc :FetchDatasetErrors,
      Google.Maps.Mapsplatformdatasets.V1.FetchDatasetErrorsRequest,
      Google.Maps.Mapsplatformdatasets.V1.FetchDatasetErrorsResponse

  rpc :ListDatasets,
      Google.Maps.Mapsplatformdatasets.V1.ListDatasetsRequest,
      Google.Maps.Mapsplatformdatasets.V1.ListDatasetsResponse

  rpc :DeleteDataset,
      Google.Maps.Mapsplatformdatasets.V1.DeleteDatasetRequest,
      Google.Protobuf.Empty
end

defmodule Google.Maps.Mapsplatformdatasets.V1.MapsPlatformDatasets.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Mapsplatformdatasets.V1.MapsPlatformDatasets.Service
end
