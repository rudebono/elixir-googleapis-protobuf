defmodule Google.Cloud.Storagebatchoperations.V1.Job.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :CANCELED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Storagebatchoperations.V1.PutObjectHold.HoldStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HOLD_STATUS_UNSPECIFIED, 0
  field :SET, 1
  field :UNSET, 2
end

defmodule Google.Cloud.Storagebatchoperations.V1.LoggingConfig.LoggableAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOGGABLE_ACTION_UNSPECIFIED, 0
  field :TRANSFORM, 6
end

defmodule Google.Cloud.Storagebatchoperations.V1.LoggingConfig.LoggableActionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOGGABLE_ACTION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Storagebatchoperations.V1.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  oneof :transformation, 1

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :bucket_list, 19,
    type: Google.Cloud.Storagebatchoperations.V1.BucketList,
    json_name: "bucketList",
    oneof: 0

  field :put_object_hold, 5,
    type: Google.Cloud.Storagebatchoperations.V1.PutObjectHold,
    json_name: "putObjectHold",
    oneof: 1

  field :delete_object, 6,
    type: Google.Cloud.Storagebatchoperations.V1.DeleteObject,
    json_name: "deleteObject",
    oneof: 1

  field :put_metadata, 8,
    type: Google.Cloud.Storagebatchoperations.V1.PutMetadata,
    json_name: "putMetadata",
    oneof: 1

  field :rewrite_object, 20,
    type: Google.Cloud.Storagebatchoperations.V1.RewriteObject,
    json_name: "rewriteObject",
    oneof: 1

  field :logging_config, 9,
    type: Google.Cloud.Storagebatchoperations.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :schedule_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false

  field :complete_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :counters, 13, type: Google.Cloud.Storagebatchoperations.V1.Counters, deprecated: false

  field :error_summaries, 14,
    repeated: true,
    type: Google.Cloud.Storagebatchoperations.V1.ErrorSummary,
    json_name: "errorSummaries",
    deprecated: false

  field :state, 15,
    type: Google.Cloud.Storagebatchoperations.V1.Job.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.BucketList.Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :object_configuration, 0

  field :bucket, 1, type: :string, deprecated: false

  field :prefix_list, 2,
    type: Google.Cloud.Storagebatchoperations.V1.PrefixList,
    json_name: "prefixList",
    oneof: 0

  field :manifest, 3, type: Google.Cloud.Storagebatchoperations.V1.Manifest, oneof: 0
end

defmodule Google.Cloud.Storagebatchoperations.V1.BucketList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :buckets, 1,
    repeated: true,
    type: Google.Cloud.Storagebatchoperations.V1.BucketList.Bucket,
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.Manifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :manifest_location, 2, type: :string, json_name: "manifestLocation", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.PrefixList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :included_object_prefixes, 2,
    repeated: true,
    type: :string,
    json_name: "includedObjectPrefixes",
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.PutObjectHold do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :temporary_hold, 1,
    type: Google.Cloud.Storagebatchoperations.V1.PutObjectHold.HoldStatus,
    json_name: "temporaryHold",
    enum: true,
    deprecated: false

  field :event_based_hold, 2,
    type: Google.Cloud.Storagebatchoperations.V1.PutObjectHold.HoldStatus,
    json_name: "eventBasedHold",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.DeleteObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :permanent_object_deletion_enabled, 1,
    type: :bool,
    json_name: "permanentObjectDeletionEnabled",
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.RewriteObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_key, 1, proto3_optional: true, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.PutMetadata.CustomMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Storagebatchoperations.V1.PutMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content_disposition, 1,
    proto3_optional: true,
    type: :string,
    json_name: "contentDisposition",
    deprecated: false

  field :content_encoding, 2,
    proto3_optional: true,
    type: :string,
    json_name: "contentEncoding",
    deprecated: false

  field :content_language, 3,
    proto3_optional: true,
    type: :string,
    json_name: "contentLanguage",
    deprecated: false

  field :content_type, 4,
    proto3_optional: true,
    type: :string,
    json_name: "contentType",
    deprecated: false

  field :cache_control, 5,
    proto3_optional: true,
    type: :string,
    json_name: "cacheControl",
    deprecated: false

  field :custom_time, 6,
    proto3_optional: true,
    type: :string,
    json_name: "customTime",
    deprecated: false

  field :custom_metadata, 7,
    repeated: true,
    type: Google.Cloud.Storagebatchoperations.V1.PutMetadata.CustomMetadataEntry,
    json_name: "customMetadata",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.ErrorSummary do
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
    type: Google.Cloud.Storagebatchoperations.V1.ErrorLogEntry,
    json_name: "errorLogEntries",
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.ErrorLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :object_uri, 1, type: :string, json_name: "objectUri", deprecated: false

  field :error_details, 3,
    repeated: true,
    type: :string,
    json_name: "errorDetails",
    deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.Counters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_object_count, 1, type: :int64, json_name: "totalObjectCount", deprecated: false

  field :succeeded_object_count, 2,
    type: :int64,
    json_name: "succeededObjectCount",
    deprecated: false

  field :failed_object_count, 3, type: :int64, json_name: "failedObjectCount", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.LoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :log_actions, 1,
    repeated: true,
    type: Google.Cloud.Storagebatchoperations.V1.LoggingConfig.LoggableAction,
    json_name: "logActions",
    enum: true,
    deprecated: false

  field :log_action_states, 2,
    repeated: true,
    type: Google.Cloud.Storagebatchoperations.V1.LoggingConfig.LoggableActionState,
    json_name: "logActionStates",
    enum: true,
    deprecated: false
end
