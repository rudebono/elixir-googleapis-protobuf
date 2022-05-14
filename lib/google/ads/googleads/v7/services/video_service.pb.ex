defmodule Google.Ads.Googleads.V7.Services.GetVideoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.VideoService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.VideoService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetVideo,
      Google.Ads.Googleads.V7.Services.GetVideoRequest,
      Google.Ads.Googleads.V7.Resources.Video
end

defmodule Google.Ads.Googleads.V7.Services.VideoService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.VideoService.Service
end
