defmodule Google.Cloud.Lustre.V1.TransferType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRANSFER_TYPE_UNSPECIFIED, 0
  field :IMPORT, 1
  field :EXPORT, 2
end

defmodule Google.Cloud.Lustre.V1.ImportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :gcs_path, 2, type: Google.Cloud.Lustre.V1.GcsPath, json_name: "gcsPath", oneof: 0

  field :lustre_path, 3,
    type: Google.Cloud.Lustre.V1.LustrePath,
    json_name: "lustrePath",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Lustre.V1.ExportDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :lustre_path, 2,
    type: Google.Cloud.Lustre.V1.LustrePath,
    json_name: "lustrePath",
    oneof: 0

  field :gcs_path, 3, type: Google.Cloud.Lustre.V1.GcsPath, json_name: "gcsPath", oneof: 1
  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Lustre.V1.ExportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Lustre.V1.ImportDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Lustre.V1.ExportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Lustre.V1.TransferOperationMetadata,
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

defmodule Google.Cloud.Lustre.V1.ImportDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation_metadata, 1,
    type: Google.Cloud.Lustre.V1.TransferOperationMetadata,
    json_name: "operationMetadata"

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 4, type: :string, deprecated: false
  field :status_message, 6, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 7,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 8, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Lustre.V1.GcsPath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Lustre.V1.LustrePath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Lustre.V1.TransferCounters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :found_objects_count, 1, type: :int64, json_name: "foundObjectsCount"
  field :bytes_found_count, 2, type: :int64, json_name: "bytesFoundCount"
  field :objects_skipped_count, 3, type: :int64, json_name: "objectsSkippedCount"
  field :bytes_skipped_count, 4, type: :int64, json_name: "bytesSkippedCount"
  field :objects_copied_count, 5, type: :int64, json_name: "objectsCopiedCount"
  field :bytes_copied_count, 6, type: :int64, json_name: "bytesCopiedCount"
  field :objects_failed_count, 7, type: :int64, json_name: "objectsFailedCount", deprecated: false
  field :bytes_failed_count, 8, type: :int64, json_name: "bytesFailedCount", deprecated: false
end

defmodule Google.Cloud.Lustre.V1.ErrorLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :error_details, 2, repeated: true, type: :string, json_name: "errorDetails"
end

defmodule Google.Cloud.Lustre.V1.ErrorSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_code, 1,
    type: Google.Rpc.Code,
    json_name: "errorCode",
    enum: true,
    deprecated: false

  field :error_count, 2, type: :int64, json_name: "errorCount", deprecated: false

  field :error_log_entries, 3,
    repeated: true,
    type: Google.Cloud.Lustre.V1.ErrorLogEntry,
    json_name: "errorLogEntries"
end

defmodule Google.Cloud.Lustre.V1.TransferOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :destination, 1

  field :source_lustre_path, 3,
    type: Google.Cloud.Lustre.V1.LustrePath,
    json_name: "sourceLustrePath",
    oneof: 0,
    deprecated: false

  field :source_gcs_path, 4,
    type: Google.Cloud.Lustre.V1.GcsPath,
    json_name: "sourceGcsPath",
    oneof: 0,
    deprecated: false

  field :destination_gcs_path, 5,
    type: Google.Cloud.Lustre.V1.GcsPath,
    json_name: "destinationGcsPath",
    oneof: 1,
    deprecated: false

  field :destination_lustre_path, 6,
    type: Google.Cloud.Lustre.V1.LustrePath,
    json_name: "destinationLustrePath",
    oneof: 1,
    deprecated: false

  field :counters, 1, type: Google.Cloud.Lustre.V1.TransferCounters, deprecated: false

  field :transfer_type, 2,
    type: Google.Cloud.Lustre.V1.TransferType,
    json_name: "transferType",
    enum: true,
    deprecated: false

  field :error_summaries, 7,
    repeated: true,
    type: Google.Cloud.Lustre.V1.ErrorSummary,
    json_name: "errorSummaries",
    deprecated: false
end
