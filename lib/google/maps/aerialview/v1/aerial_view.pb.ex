defmodule Google.Maps.Aerialview.V1.Video.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROCESSING, 1
  field :ACTIVE, 2
  field :FAILED, 3
end

defmodule Google.Maps.Aerialview.V1.Video.UrisEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Maps.Aerialview.V1.Uris
end

defmodule Google.Maps.Aerialview.V1.Video do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uris, 1, repeated: true, type: Google.Maps.Aerialview.V1.Video.UrisEntry, map: true
  field :state, 2, type: Google.Maps.Aerialview.V1.Video.State, enum: true
  field :metadata, 3, type: Google.Maps.Aerialview.V1.VideoMetadata
end

defmodule Google.Maps.Aerialview.V1.Uris do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :landscape_uri, 1, type: :string, json_name: "landscapeUri"
  field :portrait_uri, 2, type: :string, json_name: "portraitUri"
end

defmodule Google.Maps.Aerialview.V1.VideoMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :video_id, 1, type: :string, json_name: "videoId"
  field :capture_date, 2, type: Google.Type.Date, json_name: "captureDate"
  field :duration, 3, type: Google.Protobuf.Duration
end

defmodule Google.Maps.Aerialview.V1.RenderVideoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :address, 1, type: :string, deprecated: false
end

defmodule Google.Maps.Aerialview.V1.RenderVideoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1, type: Google.Maps.Aerialview.V1.Video.State, enum: true
  field :metadata, 2, type: Google.Maps.Aerialview.V1.VideoMetadata
end

defmodule Google.Maps.Aerialview.V1.LookupVideoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :key, 0

  field :video_id, 1, type: :string, json_name: "videoId", oneof: 0
  field :address, 2, type: :string, oneof: 0
end

defmodule Google.Maps.Aerialview.V1.AerialView.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.aerialview.v1.AerialView",
    protoc_gen_elixir_version: "0.14.0"

  rpc :RenderVideo,
      Google.Maps.Aerialview.V1.RenderVideoRequest,
      Google.Maps.Aerialview.V1.RenderVideoResponse

  rpc :LookupVideo, Google.Maps.Aerialview.V1.LookupVideoRequest, Google.Maps.Aerialview.V1.Video
end

defmodule Google.Maps.Aerialview.V1.AerialView.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Aerialview.V1.AerialView.Service
end
