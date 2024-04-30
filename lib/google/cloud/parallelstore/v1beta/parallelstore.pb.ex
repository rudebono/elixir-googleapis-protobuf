defmodule Google.Cloud.Parallelstore.V1beta.TransferType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRANSFER_TYPE_UNSPECIFIED, 0
  field :IMPORT, 1
  field :EXPORT, 2
end

defmodule Google.Cloud.Parallelstore.V1beta.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Parallelstore.V1beta.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Parallelstore.V1beta.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Parallelstore.V1beta.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Parallelstore.V1beta.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Parallelstore.V1beta.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Parallelstore.V1beta.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Parallelstore.V1beta.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Parallelstore.V1beta.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_gcs_uri, 2, type: :string, json_name: "sourceGcsUri", oneof: 0

  field :destination_path, 3,
    type: :string,
    json_name: "destinationPath",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_path, 2, type: :string, json_name: "sourcePath", oneof: 0, deprecated: false
  field :destination_gcs_uri, 3, type: :string, json_name: "destinationGcsUri", oneof: 1
  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parallelstore.V1beta.ImportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Parallelstore.V1beta.ImportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Parallelstore.V1beta.TransferOperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Parallelstore.V1beta.ExportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Parallelstore.V1beta.ExportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Parallelstore.V1beta.TransferOperationMetadata,
    json_name: "operationMetadata"
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :counters, 3, type: Google.Cloud.Parallelstore.V1beta.TransferCounters
  field :source, 4, type: :string, deprecated: false
  field :destination, 5, type: :string, deprecated: false

  field :transfer_type, 6,
    type: Google.Cloud.Parallelstore.V1beta.TransferType,
    json_name: "transferType",
    enum: true
end

defmodule Google.Cloud.Parallelstore.V1beta.TransferCounters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :objects_found, 1, type: :int64, json_name: "objectsFound"
  field :bytes_found, 2, type: :int64, json_name: "bytesFound"
  field :objects_skipped, 3, type: :int64, json_name: "objectsSkipped"
  field :bytes_skipped, 4, type: :int64, json_name: "bytesSkipped"
  field :objects_copied, 5, type: :int64, json_name: "objectsCopied"
  field :bytes_copied, 6, type: :int64, json_name: "bytesCopied"
end

defmodule Google.Cloud.Parallelstore.V1beta.Parallelstore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.parallelstore.v1beta.Parallelstore",
    protoc_gen_elixir_version: "0.12.0"

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