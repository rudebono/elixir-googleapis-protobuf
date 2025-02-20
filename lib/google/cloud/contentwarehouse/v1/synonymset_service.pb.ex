defmodule Google.Cloud.Contentwarehouse.V1.SynonymSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contentwarehouse.v1.SynonymSetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateSynonymSet,
      Google.Cloud.Contentwarehouse.V1.CreateSynonymSetRequest,
      Google.Cloud.Contentwarehouse.V1.SynonymSet

  rpc :GetSynonymSet,
      Google.Cloud.Contentwarehouse.V1.GetSynonymSetRequest,
      Google.Cloud.Contentwarehouse.V1.SynonymSet

  rpc :UpdateSynonymSet,
      Google.Cloud.Contentwarehouse.V1.UpdateSynonymSetRequest,
      Google.Cloud.Contentwarehouse.V1.SynonymSet

  rpc :DeleteSynonymSet,
      Google.Cloud.Contentwarehouse.V1.DeleteSynonymSetRequest,
      Google.Protobuf.Empty

  rpc :ListSynonymSets,
      Google.Cloud.Contentwarehouse.V1.ListSynonymSetsRequest,
      Google.Cloud.Contentwarehouse.V1.ListSynonymSetsResponse
end

defmodule Google.Cloud.Contentwarehouse.V1.SynonymSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contentwarehouse.V1.SynonymSetService.Service
end
