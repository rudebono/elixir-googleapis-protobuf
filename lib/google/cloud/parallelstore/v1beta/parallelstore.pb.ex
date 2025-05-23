defmodule Google.Cloud.Parallelstore.V1beta.TransferType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSFER_TYPE_UNSPECIFIED, 0
  field :IMPORT, 1
  field :EXPORT, 2
end

defmodule Google.Cloud.Parallelstore.V1beta.FileStripeLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILE_STRIPE_LEVEL_UNSPECIFIED, 0
  field :FILE_STRIPE_LEVEL_MIN, 1
  field :FILE_STRIPE_LEVEL_BALANCED, 2
  field :FILE_STRIPE_LEVEL_MAX, 3
end

defmodule Google.Cloud.Parallelstore.V1beta.DirectoryStripeLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DIRECTORY_STRIPE_LEVEL_UNSPECIFIED, 0
  field :DIRECTORY_STRIPE_LEVEL_MIN, 1
  field :DIRECTORY_STRIPE_LEVEL_BALANCED, 2
  field :DIRECTORY_STRIPE_LEVEL_MAX, 3
end

defmodule Google.Cloud.Parallelstore.V1beta.DeploymentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEPLOYMENT_TYPE_UNSPECIFIED, 0
  field :SCRATCH, 1
  field :PERSISTENT, 2
end

defmodule Google.Cloud.Parallelstore.V1beta.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
  field :UPGRADING, 5
  field :REPAIRING, 6
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions.Uid do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UID_UNSPECIFIED, 0
  field :UID_SKIP, 1
  field :UID_NUMBER_PRESERVE, 2
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions.Gid do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GID_UNSPECIFIED, 0
  field :GID_SKIP, 1
  field :GID_NUMBER_PRESERVE, 2
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :MODE_SKIP, 1
  field :MODE_PRESERVE, 2
end

defmodule Google.Cloud.Parallelstore.V1beta.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Parallelstore.V1beta.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Parallelstore.V1beta.Instance.State,
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
    type: Google.Cloud.Parallelstore.V1beta.Instance.LabelsEntry,
    map: true,
    deprecated: false

  field :capacity_gib, 8, type: :int64, json_name: "capacityGib", deprecated: false
  field :daos_version, 9, type: :string, json_name: "daosVersion", deprecated: true

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
    type: Google.Cloud.Parallelstore.V1beta.FileStripeLevel,
    json_name: "fileStripeLevel",
    enum: true,
    deprecated: false

  field :directory_stripe_level, 16,
    type: Google.Cloud.Parallelstore.V1beta.DirectoryStripeLevel,
    json_name: "directoryStripeLevel",
    enum: true,
    deprecated: false

  field :deployment_type, 17,
    type: Google.Cloud.Parallelstore.V1beta.DeploymentType,
    json_name: "deploymentType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uid, 1,
    type: Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions.Uid,
    enum: true,
    deprecated: false

  field :gid, 2,
    type: Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions.Gid,
    enum: true,
    deprecated: false

  field :mode, 3,
    type: Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions.Mode,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Parallelstore.V1beta.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Parallelstore.V1beta.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Parallelstore.V1beta.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Parallelstore.V1beta.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Parallelstore.V1beta.SourceGcsBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.DestinationGcsBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.SourceParallelstore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.DestinationParallelstore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_gcs_bucket, 2,
    type: Google.Cloud.Parallelstore.V1beta.SourceGcsBucket,
    json_name: "sourceGcsBucket",
    oneof: 0

  field :destination_parallelstore, 3,
    type: Google.Cloud.Parallelstore.V1beta.DestinationParallelstore,
    json_name: "destinationParallelstore",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false

  field :metadata_options, 6,
    type: Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions,
    json_name: "metadataOptions",
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_parallelstore, 2,
    type: Google.Cloud.Parallelstore.V1beta.SourceParallelstore,
    json_name: "sourceParallelstore",
    oneof: 0

  field :destination_gcs_bucket, 3,
    type: Google.Cloud.Parallelstore.V1beta.DestinationGcsBucket,
    json_name: "destinationGcsBucket",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false

  field :metadata_options, 6,
    type: Google.Cloud.Parallelstore.V1beta.TransferMetadataOptions,
    json_name: "metadataOptions",
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ImportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferErrorLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
  field :error_details, 2, repeated: true, type: :string, json_name: "errorDetails"
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferErrorSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_code, 1, type: Google.Rpc.Code, json_name: "errorCode", enum: true
  field :error_count, 2, type: :int64, json_name: "errorCount"

  field :error_log_entries, 4,
    repeated: true,
    type: Google.Cloud.Parallelstore.V1beta.TransferErrorLogEntry,
    json_name: "errorLogEntries"
end

defmodule Google.Cloud.Parallelstore.V1beta.ImportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Parallelstore.V1beta.TransferOperationMetadata,
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

defmodule Google.Cloud.Parallelstore.V1beta.ExportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Parallelstore.V1beta.ExportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Parallelstore.V1beta.TransferOperationMetadata,
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

defmodule Google.Cloud.Parallelstore.V1beta.TransferOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_parallelstore, 7,
    type: Google.Cloud.Parallelstore.V1beta.SourceParallelstore,
    json_name: "sourceParallelstore",
    oneof: 0,
    deprecated: false

  field :source_gcs_bucket, 8,
    type: Google.Cloud.Parallelstore.V1beta.SourceGcsBucket,
    json_name: "sourceGcsBucket",
    oneof: 0,
    deprecated: false

  field :destination_gcs_bucket, 9,
    type: Google.Cloud.Parallelstore.V1beta.DestinationGcsBucket,
    json_name: "destinationGcsBucket",
    oneof: 1,
    deprecated: false

  field :destination_parallelstore, 10,
    type: Google.Cloud.Parallelstore.V1beta.DestinationParallelstore,
    json_name: "destinationParallelstore",
    oneof: 1,
    deprecated: false

  field :counters, 3, type: Google.Cloud.Parallelstore.V1beta.TransferCounters, deprecated: false

  field :transfer_type, 6,
    type: Google.Cloud.Parallelstore.V1beta.TransferType,
    json_name: "transferType",
    enum: true,
    deprecated: false

  field :error_summary, 13,
    repeated: true,
    type: Google.Cloud.Parallelstore.V1beta.TransferErrorSummary,
    json_name: "errorSummary",
    deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferCounters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :objects_found, 1, type: :int64, json_name: "objectsFound"
  field :bytes_found, 2, type: :int64, json_name: "bytesFound"
  field :objects_skipped, 3, type: :int64, json_name: "objectsSkipped"
  field :bytes_skipped, 4, type: :int64, json_name: "bytesSkipped"
  field :objects_copied, 5, type: :int64, json_name: "objectsCopied"
  field :bytes_copied, 6, type: :int64, json_name: "bytesCopied"
  field :objects_failed, 7, type: :int64, json_name: "objectsFailed"
  field :bytes_failed, 8, type: :int64, json_name: "bytesFailed"
end

defmodule Google.Cloud.Parallelstore.V1beta.Parallelstore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.parallelstore.v1beta.Parallelstore",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListInstances,
      Google.Cloud.Parallelstore.V1beta.ListInstancesRequest,
      Google.Cloud.Parallelstore.V1beta.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Parallelstore.V1beta.GetInstanceRequest,
      Google.Cloud.Parallelstore.V1beta.Instance

  rpc :CreateInstance,
      Google.Cloud.Parallelstore.V1beta.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Parallelstore.V1beta.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Parallelstore.V1beta.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ImportData,
      Google.Cloud.Parallelstore.V1beta.ImportDataRequest,
      Google.Longrunning.Operation

  rpc :ExportData,
      Google.Cloud.Parallelstore.V1beta.ExportDataRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Parallelstore.V1beta.Parallelstore.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Parallelstore.V1beta.Parallelstore.Service
end
