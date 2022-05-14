defmodule Google.Partner.Aistreams.V1alpha1.Cluster.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Partner.Aistreams.V1alpha1.Cluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Partner.Aistreams.V1alpha1.Cluster.LabelsEntry,
    map: true

  field :certificate, 5, type: :string, deprecated: false
  field :service_endpoint, 6, type: :string, json_name: "serviceEndpoint", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.ListClustersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Partner.Aistreams.V1alpha1.ListClustersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Partner.Aistreams.V1alpha1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Partner.Aistreams.V1alpha1.GetClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.CreateClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Partner.Aistreams.V1alpha1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Partner.Aistreams.V1alpha1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.Stream.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Partner.Aistreams.V1alpha1.Stream do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Partner.Aistreams.V1alpha1.Stream.LabelsEntry,
    map: true
end
defmodule Google.Partner.Aistreams.V1alpha1.ListStreamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Partner.Aistreams.V1alpha1.ListStreamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :streams, 1, repeated: true, type: Google.Partner.Aistreams.V1alpha1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Partner.Aistreams.V1alpha1.GetStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.CreateStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
  field :stream, 3, type: Google.Partner.Aistreams.V1alpha1.Stream, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.UpdateStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :stream, 2, type: Google.Partner.Aistreams.V1alpha1.Stream, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.DeleteStreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.AIStreams.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.partner.aistreams.v1alpha1.AIStreams",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListClusters,
      Google.Partner.Aistreams.V1alpha1.ListClustersRequest,
      Google.Partner.Aistreams.V1alpha1.ListClustersResponse

  rpc :GetCluster,
      Google.Partner.Aistreams.V1alpha1.GetClusterRequest,
      Google.Partner.Aistreams.V1alpha1.Cluster

  rpc :CreateCluster,
      Google.Partner.Aistreams.V1alpha1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Partner.Aistreams.V1alpha1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Partner.Aistreams.V1alpha1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :ListStreams,
      Google.Partner.Aistreams.V1alpha1.ListStreamsRequest,
      Google.Partner.Aistreams.V1alpha1.ListStreamsResponse

  rpc :GetStream,
      Google.Partner.Aistreams.V1alpha1.GetStreamRequest,
      Google.Partner.Aistreams.V1alpha1.Stream

  rpc :CreateStream,
      Google.Partner.Aistreams.V1alpha1.CreateStreamRequest,
      Google.Longrunning.Operation

  rpc :UpdateStream,
      Google.Partner.Aistreams.V1alpha1.UpdateStreamRequest,
      Google.Longrunning.Operation

  rpc :DeleteStream,
      Google.Partner.Aistreams.V1alpha1.DeleteStreamRequest,
      Google.Longrunning.Operation
end

defmodule Google.Partner.Aistreams.V1alpha1.AIStreams.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Partner.Aistreams.V1alpha1.AIStreams.Service
end
