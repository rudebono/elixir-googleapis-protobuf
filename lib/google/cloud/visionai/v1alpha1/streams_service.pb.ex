defmodule Google.Cloud.Visionai.V1alpha1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Visionai.V1alpha1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Visionai.V1alpha1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListStreamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListStreamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :streams, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
  field :stream, 3, type: Google.Cloud.Visionai.V1alpha1.Stream, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :stream, 2, type: Google.Cloud.Visionai.V1alpha1.Stream, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.GetStreamThumbnailResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.GenerateStreamHlsTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stream, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.GenerateStreamHlsTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :events, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Event
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :event_id, 2, type: :string, json_name: "eventId", deprecated: false
  field :event, 3, type: Google.Cloud.Visionai.V1alpha1.Event, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :event, 2, type: Google.Cloud.Visionai.V1alpha1.Event, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.ListSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListSeriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :series, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Series
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :series_id, 2, type: :string, json_name: "seriesId", deprecated: false
  field :series, 3, type: Google.Cloud.Visionai.V1alpha1.Series, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :series, 2, type: Google.Cloud.Visionai.V1alpha1.Series, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.MaterializeChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :channel, 3, type: Google.Cloud.Visionai.V1alpha1.Channel, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.StreamsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1alpha1.StreamsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListClusters,
      Google.Cloud.Visionai.V1alpha1.ListClustersRequest,
      Google.Cloud.Visionai.V1alpha1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Visionai.V1alpha1.GetClusterRequest,
      Google.Cloud.Visionai.V1alpha1.Cluster

  rpc :CreateCluster,
      Google.Cloud.Visionai.V1alpha1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Visionai.V1alpha1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Visionai.V1alpha1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :ListStreams,
      Google.Cloud.Visionai.V1alpha1.ListStreamsRequest,
      Google.Cloud.Visionai.V1alpha1.ListStreamsResponse

  rpc :GetStream,
      Google.Cloud.Visionai.V1alpha1.GetStreamRequest,
      Google.Cloud.Visionai.V1alpha1.Stream

  rpc :CreateStream,
      Google.Cloud.Visionai.V1alpha1.CreateStreamRequest,
      Google.Longrunning.Operation

  rpc :UpdateStream,
      Google.Cloud.Visionai.V1alpha1.UpdateStreamRequest,
      Google.Longrunning.Operation

  rpc :DeleteStream,
      Google.Cloud.Visionai.V1alpha1.DeleteStreamRequest,
      Google.Longrunning.Operation

  rpc :GenerateStreamHlsToken,
      Google.Cloud.Visionai.V1alpha1.GenerateStreamHlsTokenRequest,
      Google.Cloud.Visionai.V1alpha1.GenerateStreamHlsTokenResponse

  rpc :ListEvents,
      Google.Cloud.Visionai.V1alpha1.ListEventsRequest,
      Google.Cloud.Visionai.V1alpha1.ListEventsResponse

  rpc :GetEvent,
      Google.Cloud.Visionai.V1alpha1.GetEventRequest,
      Google.Cloud.Visionai.V1alpha1.Event

  rpc :CreateEvent,
      Google.Cloud.Visionai.V1alpha1.CreateEventRequest,
      Google.Longrunning.Operation

  rpc :UpdateEvent,
      Google.Cloud.Visionai.V1alpha1.UpdateEventRequest,
      Google.Longrunning.Operation

  rpc :DeleteEvent,
      Google.Cloud.Visionai.V1alpha1.DeleteEventRequest,
      Google.Longrunning.Operation

  rpc :ListSeries,
      Google.Cloud.Visionai.V1alpha1.ListSeriesRequest,
      Google.Cloud.Visionai.V1alpha1.ListSeriesResponse

  rpc :GetSeries,
      Google.Cloud.Visionai.V1alpha1.GetSeriesRequest,
      Google.Cloud.Visionai.V1alpha1.Series

  rpc :CreateSeries,
      Google.Cloud.Visionai.V1alpha1.CreateSeriesRequest,
      Google.Longrunning.Operation

  rpc :UpdateSeries,
      Google.Cloud.Visionai.V1alpha1.UpdateSeriesRequest,
      Google.Longrunning.Operation

  rpc :DeleteSeries,
      Google.Cloud.Visionai.V1alpha1.DeleteSeriesRequest,
      Google.Longrunning.Operation

  rpc :MaterializeChannel,
      Google.Cloud.Visionai.V1alpha1.MaterializeChannelRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Visionai.V1alpha1.StreamsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1alpha1.StreamsService.Service
end