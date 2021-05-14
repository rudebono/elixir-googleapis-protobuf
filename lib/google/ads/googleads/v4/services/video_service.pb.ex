defmodule Google.Ads.Googleads.V4.Services.GetVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.VideoService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.VideoService"

  rpc :GetVideo,
      Google.Ads.Googleads.V4.Services.GetVideoRequest,
      Google.Ads.Googleads.V4.Resources.Video
end

defmodule Google.Ads.Googleads.V4.Services.VideoService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.VideoService.Service
end
