defmodule Google.Cloud.Visionai.V1alpha1.Cluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :STOPPING, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Visionai.V1alpha1.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Cluster.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

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
    type: Google.Cloud.Visionai.V1alpha1.Cluster.LabelsEntry,
    map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Cluster.AnnotationsEntry,
    map: true

  field :dataplane_service_endpoint, 6,
    type: :string,
    json_name: "dataplaneServiceEndpoint",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Visionai.V1alpha1.Cluster.State,
    enum: true,
    deprecated: false

  field :psc_target, 8, type: :string, json_name: "pscTarget", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

defmodule Google.Cloud.Visionai.V1alpha1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
end