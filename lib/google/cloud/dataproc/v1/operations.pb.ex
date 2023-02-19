defmodule Google.Cloud.Dataproc.V1.BatchOperationMetadata.BatchOperationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :BATCH_OPERATION_TYPE_UNSPECIFIED, 0
  field :BATCH, 1
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupOperationMetadata.NodeGroupOperationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NODE_GROUP_OPERATION_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
  field :RESIZE, 4
end

defmodule Google.Cloud.Dataproc.V1.BatchOperationMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.BatchOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :batch, 1, type: :string
  field :batch_uuid, 2, type: :string, json_name: "batchUuid"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :done_time, 4, type: Google.Protobuf.Timestamp, json_name: "doneTime"

  field :operation_type, 6,
    type: Google.Cloud.Dataproc.V1.BatchOperationMetadata.BatchOperationType,
    json_name: "operationType",
    enum: true

  field :description, 7, type: :string

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.BatchOperationMetadata.LabelsEntry,
    map: true

  field :warnings, 9, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Dataproc.V1.ClusterOperationStatus.State,
    enum: true,
    deprecated: false

  field :inner_state, 2, type: :string, json_name: "innerState", deprecated: false
  field :details, 3, type: :string, deprecated: false

  field :state_start_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "stateStartTime",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.ClusterOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cluster_name, 7, type: :string, json_name: "clusterName", deprecated: false
  field :cluster_uuid, 8, type: :string, json_name: "clusterUuid", deprecated: false
  field :status, 9, type: Google.Cloud.Dataproc.V1.ClusterOperationStatus, deprecated: false

  field :status_history, 10,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterOperationStatus,
    json_name: "statusHistory",
    deprecated: false

  field :operation_type, 11, type: :string, json_name: "operationType", deprecated: false
  field :description, 12, type: :string, deprecated: false

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterOperationMetadata.LabelsEntry,
    map: true,
    deprecated: false

  field :warnings, 14, repeated: true, type: :string, deprecated: false

  field :child_operation_ids, 15,
    repeated: true,
    type: :string,
    json_name: "childOperationIds",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupOperationMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_group_id, 1, type: :string, json_name: "nodeGroupId", deprecated: false
  field :cluster_uuid, 2, type: :string, json_name: "clusterUuid", deprecated: false
  field :status, 3, type: Google.Cloud.Dataproc.V1.ClusterOperationStatus, deprecated: false

  field :status_history, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterOperationStatus,
    json_name: "statusHistory",
    deprecated: false

  field :operation_type, 5,
    type: Google.Cloud.Dataproc.V1.NodeGroupOperationMetadata.NodeGroupOperationType,
    json_name: "operationType",
    enum: true

  field :description, 6, type: :string, deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.NodeGroupOperationMetadata.LabelsEntry,
    map: true,
    deprecated: false

  field :warnings, 8, repeated: true, type: :string, deprecated: false
end