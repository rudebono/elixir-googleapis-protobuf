defmodule Google.Cloud.Parallelstore.V1.TransferType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TRANSFER_TYPE_UNSPECIFIED, 0
  field :IMPORT, 1
  field :EXPORT, 2
end

defmodule Google.Cloud.Parallelstore.V1.FileStripeLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FILE_STRIPE_LEVEL_UNSPECIFIED, 0
  field :FILE_STRIPE_LEVEL_MIN, 1
  field :FILE_STRIPE_LEVEL_BALANCED, 2
  field :FILE_STRIPE_LEVEL_MAX, 3
end

defmodule Google.Cloud.Parallelstore.V1.DirectoryStripeLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DIRECTORY_STRIPE_LEVEL_UNSPECIFIED, 0
  field :DIRECTORY_STRIPE_LEVEL_MIN, 1
  field :DIRECTORY_STRIPE_LEVEL_BALANCED, 2
  field :DIRECTORY_STRIPE_LEVEL_MAX, 3
end

defmodule Google.Cloud.Parallelstore.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
  field :UPGRADING, 5
end

defmodule Google.Cloud.Parallelstore.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Parallelstore.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Parallelstore.V1.Instance.State,
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Parallelstore.V1.Instance.LabelsEntry,
    map: true,
    deprecated: false

  field :capacity_gib, 8, type: :int64, json_name: "capacityGib", deprecated: false
  field :daos_version, 9, type: :string, json_name: "daosVersion", deprecated: false

  field :access_points, 10,
    repeated: true,
    type: :string,
    json_name: "accessPoints",
    deprecated: false

  field :network, 11, type: :string, deprecated: false
  field :reserved_ip_range, 12, type: :string, json_name: "reservedIpRange", deprecated: false

  field :effective_reserved_ip_range, 14,
    type: :string,
    json_name: "effectiveReservedIpRange",
    deprecated: false

  field :file_stripe_level, 15,
    type: Google.Cloud.Parallelstore.V1.FileStripeLevel,
    json_name: "fileStripeLevel",
    enum: true,
    deprecated: false

  field :directory_stripe_level, 16,
    type: Google.Cloud.Parallelstore.V1.DirectoryStripeLevel,
    json_name: "directoryStripeLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Parallelstore.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Parallelstore.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Parallelstore.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Parallelstore.V1.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Parallelstore.V1.SourceGcsBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.DestinationGcsBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.SourceParallelstore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.DestinationParallelstore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_gcs_bucket, 2,
    type: Google.Cloud.Parallelstore.V1.SourceGcsBucket,
    json_name: "sourceGcsBucket",
    oneof: 0

  field :destination_parallelstore, 3,
    type: Google.Cloud.Parallelstore.V1.DestinationParallelstore,
    json_name: "destinationParallelstore",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_parallelstore, 2,
    type: Google.Cloud.Parallelstore.V1.SourceParallelstore,
    json_name: "sourceParallelstore",
    oneof: 0

  field :destination_gcs_bucket, 3,
    type: Google.Cloud.Parallelstore.V1.DestinationGcsBucket,
    json_name: "destinationGcsBucket",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.ImportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Parallelstore.V1.ImportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Parallelstore.V1.TransferOperationMetadata,
    json_name: "operationMetadata"

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 4, type: :string, deprecated: false
  field :verb, 5, type: :string, deprecated: false
  field :status_message, 6, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 7,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 8, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.ExportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Parallelstore.V1.ExportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Parallelstore.V1.TransferOperationMetadata,
    json_name: "operationMetadata"

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 4, type: :string, deprecated: false
  field :verb, 5, type: :string, deprecated: false
  field :status_message, 6, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 7,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 8, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.TransferOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_parallelstore, 7,
    type: Google.Cloud.Parallelstore.V1.SourceParallelstore,
    json_name: "sourceParallelstore",
    oneof: 0,
    deprecated: false

  field :source_gcs_bucket, 8,
    type: Google.Cloud.Parallelstore.V1.SourceGcsBucket,
    json_name: "sourceGcsBucket",
    oneof: 0,
    deprecated: false

  field :destination_gcs_bucket, 9,
    type: Google.Cloud.Parallelstore.V1.DestinationGcsBucket,
    json_name: "destinationGcsBucket",
    oneof: 1,
    deprecated: false

  field :destination_parallelstore, 10,
    type: Google.Cloud.Parallelstore.V1.DestinationParallelstore,
    json_name: "destinationParallelstore",
    oneof: 1,
    deprecated: false

  field :counters, 3, type: Google.Cloud.Parallelstore.V1.TransferCounters, deprecated: false

  field :transfer_type, 6,
    type: Google.Cloud.Parallelstore.V1.TransferType,
    json_name: "transferType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1.TransferCounters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :objects_found, 1, type: :int64, json_name: "objectsFound"
  field :bytes_found, 2, type: :int64, json_name: "bytesFound"
  field :objects_skipped, 3, type: :int64, json_name: "objectsSkipped"
  field :bytes_skipped, 4, type: :int64, json_name: "bytesSkipped"
  field :objects_copied, 5, type: :int64, json_name: "objectsCopied"
  field :bytes_copied, 6, type: :int64, json_name: "bytesCopied"
end

defmodule Google.Cloud.Parallelstore.V1.Parallelstore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.parallelstore.v1.Parallelstore",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListInstances,
      Google.Cloud.Parallelstore.V1.ListInstancesRequest,
      Google.Cloud.Parallelstore.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Parallelstore.V1.GetInstanceRequest,
      Google.Cloud.Parallelstore.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Parallelstore.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Parallelstore.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Parallelstore.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Parallelstore.V1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Parallelstore.V1.ExportDataRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Parallelstore.V1.Parallelstore.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Parallelstore.V1.Parallelstore.Service
end
