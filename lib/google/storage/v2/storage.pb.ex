defmodule Google.Storage.V2.ServiceConstants.Values do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VALUES_UNSPECIFIED, 0
  field :MAX_READ_CHUNK_BYTES, 2_097_152
  field :MAX_WRITE_CHUNK_BYTES, 2_097_152
  field :MAX_OBJECT_SIZE_MB, 5_242_880
  field :MAX_CUSTOM_METADATA_FIELD_NAME_BYTES, 1024
  field :MAX_CUSTOM_METADATA_FIELD_VALUE_BYTES, 4096
  field :MAX_CUSTOM_METADATA_TOTAL_SIZE_BYTES, 8192
  field :MAX_BUCKET_METADATA_TOTAL_SIZE_BYTES, 20480
  field :MAX_NOTIFICATION_CONFIGS_PER_BUCKET, 100
  field :MAX_LIFECYCLE_RULES_PER_BUCKET, 100
  field :MAX_NOTIFICATION_CUSTOM_ATTRIBUTES, 5
  field :MAX_NOTIFICATION_CUSTOM_ATTRIBUTE_KEY_LENGTH, 256
  field :MAX_NOTIFICATION_CUSTOM_ATTRIBUTE_VALUE_LENGTH, 1024
  field :MAX_LABELS_ENTRIES_COUNT, 64
  field :MAX_LABELS_KEY_VALUE_LENGTH, 63
  field :MAX_LABELS_KEY_VALUE_BYTES, 128
  field :MAX_OBJECT_IDS_PER_DELETE_OBJECTS_REQUEST, 1000
  field :SPLIT_TOKEN_MAX_VALID_DAYS, 14
end

defmodule Google.Storage.V2.Object.Retention.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :UNLOCKED, 1
  field :LOCKED, 2
end

defmodule Google.Storage.V2.DeleteBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"
end

defmodule Google.Storage.V2.GetBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :read_mask, 5,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end

defmodule Google.Storage.V2.CreateBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :bucket, 2, type: Google.Storage.V2.Bucket, deprecated: false
  field :bucket_id, 3, type: :string, json_name: "bucketId", deprecated: false
  field :predefined_acl, 6, type: :string, json_name: "predefinedAcl", deprecated: false

  field :predefined_default_object_acl, 7,
    type: :string,
    json_name: "predefinedDefaultObjectAcl",
    deprecated: false

  field :enable_object_retention, 9,
    type: :bool,
    json_name: "enableObjectRetention",
    deprecated: false
end

defmodule Google.Storage.V2.ListBucketsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :prefix, 4, type: :string, deprecated: false

  field :read_mask, 5,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end

defmodule Google.Storage.V2.ListBucketsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :buckets, 1, repeated: true, type: Google.Storage.V2.Bucket
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V2.LockBucketRetentionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: :int64,
    json_name: "ifMetagenerationMatch",
    deprecated: false
end

defmodule Google.Storage.V2.UpdateBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: Google.Storage.V2.Bucket, deprecated: false

  field :if_metageneration_match, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 8, type: :string, json_name: "predefinedAcl", deprecated: false

  field :predefined_default_object_acl, 9,
    type: :string,
    json_name: "predefinedDefaultObjectAcl",
    deprecated: false

  field :update_mask, 6,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Storage.V2.ComposeObjectRequest.SourceObject.ObjectPreconditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :if_generation_match, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"
end

defmodule Google.Storage.V2.ComposeObjectRequest.SourceObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :generation, 2, type: :int64, deprecated: false

  field :object_preconditions, 3,
    type: Google.Storage.V2.ComposeObjectRequest.SourceObject.ObjectPreconditions,
    json_name: "objectPreconditions",
    deprecated: false
end

defmodule Google.Storage.V2.ComposeObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination, 1, type: Google.Storage.V2.Object, deprecated: false

  field :source_objects, 2,
    repeated: true,
    type: Google.Storage.V2.ComposeObjectRequest.SourceObject,
    json_name: "sourceObjects",
    deprecated: false

  field :destination_predefined_acl, 9,
    type: :string,
    json_name: "destinationPredefinedAcl",
    deprecated: false

  field :if_generation_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_metageneration_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :kms_key, 6, type: :string, json_name: "kmsKey", deprecated: false

  field :common_object_request_params, 7,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :object_checksums, 10,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums",
    deprecated: false
end

defmodule Google.Storage.V2.DeleteObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 4, type: :int64, deprecated: false

  field :if_generation_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :common_object_request_params, 10,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false
end

defmodule Google.Storage.V2.RestoreObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
  field :restore_token, 11, type: :string, json_name: "restoreToken", deprecated: false

  field :if_generation_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :copy_source_acl, 9, proto3_optional: true, type: :bool, json_name: "copySourceAcl"

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false
end

defmodule Google.Storage.V2.CancelResumableWriteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId", deprecated: false
end

defmodule Google.Storage.V2.CancelResumableWriteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Storage.V2.ReadObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
  field :read_offset, 4, type: :int64, json_name: "readOffset", deprecated: false
  field :read_limit, 5, type: :int64, json_name: "readLimit", deprecated: false

  field :if_generation_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :common_object_request_params, 10,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :read_mask, 12,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end

defmodule Google.Storage.V2.GetObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
  field :soft_deleted, 11, proto3_optional: true, type: :bool, json_name: "softDeleted"

  field :if_generation_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :read_mask, 10,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"

  field :restore_token, 12, type: :string, json_name: "restoreToken", deprecated: false
end

defmodule Google.Storage.V2.ReadObjectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :checksummed_data, 1,
    type: Google.Storage.V2.ChecksummedData,
    json_name: "checksummedData"

  field :object_checksums, 2,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums"

  field :content_range, 3, type: Google.Storage.V2.ContentRange, json_name: "contentRange"
  field :metadata, 4, type: Google.Storage.V2.Object
end

defmodule Google.Storage.V2.BidiReadObjectSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false

  field :if_generation_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :read_mask, 12,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask",
    deprecated: true

  field :read_handle, 13,
    proto3_optional: true,
    type: Google.Storage.V2.BidiReadHandle,
    json_name: "readHandle"

  field :routing_token, 14, proto3_optional: true, type: :string, json_name: "routingToken"
end

defmodule Google.Storage.V2.BidiReadObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_object_spec, 1,
    type: Google.Storage.V2.BidiReadObjectSpec,
    json_name: "readObjectSpec",
    deprecated: false

  field :read_ranges, 8,
    repeated: true,
    type: Google.Storage.V2.ReadRange,
    json_name: "readRanges",
    deprecated: false
end

defmodule Google.Storage.V2.BidiReadObjectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :object_data_ranges, 6,
    repeated: true,
    type: Google.Storage.V2.ObjectRangeData,
    json_name: "objectDataRanges"

  field :metadata, 4, type: Google.Storage.V2.Object
  field :read_handle, 7, type: Google.Storage.V2.BidiReadHandle, json_name: "readHandle"
end

defmodule Google.Storage.V2.BidiReadObjectRedirectedError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_handle, 1, type: Google.Storage.V2.BidiReadHandle, json_name: "readHandle"
  field :routing_token, 2, proto3_optional: true, type: :string, json_name: "routingToken"
end

defmodule Google.Storage.V2.BidiWriteObjectRedirectedError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :routing_token, 1, proto3_optional: true, type: :string, json_name: "routingToken"

  field :write_handle, 2,
    proto3_optional: true,
    type: Google.Storage.V2.BidiWriteHandle,
    json_name: "writeHandle"

  field :generation, 3, proto3_optional: true, type: :int64
end

defmodule Google.Storage.V2.BidiReadObjectError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_range_errors, 1,
    repeated: true,
    type: Google.Storage.V2.ReadRangeError,
    json_name: "readRangeErrors"
end

defmodule Google.Storage.V2.ReadRangeError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_id, 1, type: :int64, json_name: "readId"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Storage.V2.ReadRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_offset, 1, type: :int64, json_name: "readOffset", deprecated: false
  field :read_length, 2, type: :int64, json_name: "readLength", deprecated: false
  field :read_id, 3, type: :int64, json_name: "readId", deprecated: false
end

defmodule Google.Storage.V2.ObjectRangeData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :checksummed_data, 1,
    type: Google.Storage.V2.ChecksummedData,
    json_name: "checksummedData"

  field :read_range, 2, type: Google.Storage.V2.ReadRange, json_name: "readRange"
  field :range_end, 3, type: :bool, json_name: "rangeEnd"
end

defmodule Google.Storage.V2.BidiReadHandle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :handle, 1, type: :bytes, deprecated: false
end

defmodule Google.Storage.V2.BidiWriteHandle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :handle, 1, type: :bytes, deprecated: false
end

defmodule Google.Storage.V2.WriteObjectSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: Google.Storage.V2.Object, deprecated: false
  field :predefined_acl, 7, type: :string, json_name: "predefinedAcl", deprecated: false

  field :if_generation_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :object_size, 8, proto3_optional: true, type: :int64, json_name: "objectSize"
  field :appendable, 9, proto3_optional: true, type: :bool
end

defmodule Google.Storage.V2.WriteObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :first_message, 0

  oneof :data, 1

  field :upload_id, 1, type: :string, json_name: "uploadId", oneof: 0

  field :write_object_spec, 2,
    type: Google.Storage.V2.WriteObjectSpec,
    json_name: "writeObjectSpec",
    oneof: 0

  field :write_offset, 3, type: :int64, json_name: "writeOffset", deprecated: false

  field :checksummed_data, 4,
    type: Google.Storage.V2.ChecksummedData,
    json_name: "checksummedData",
    oneof: 1

  field :object_checksums, 6,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums",
    deprecated: false

  field :finish_write, 7, type: :bool, json_name: "finishWrite", deprecated: false

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false
end

defmodule Google.Storage.V2.WriteObjectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :write_status, 0

  field :persisted_size, 1, type: :int64, json_name: "persistedSize", oneof: 0
  field :resource, 2, type: Google.Storage.V2.Object, oneof: 0
end

defmodule Google.Storage.V2.AppendObjectSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false

  field :if_metageneration_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :routing_token, 6, proto3_optional: true, type: :string, json_name: "routingToken"

  field :write_handle, 7,
    proto3_optional: true,
    type: Google.Storage.V2.BidiWriteHandle,
    json_name: "writeHandle"
end

defmodule Google.Storage.V2.BidiWriteObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :first_message, 0

  oneof :data, 1

  field :upload_id, 1, type: :string, json_name: "uploadId", oneof: 0

  field :write_object_spec, 2,
    type: Google.Storage.V2.WriteObjectSpec,
    json_name: "writeObjectSpec",
    oneof: 0

  field :append_object_spec, 11,
    type: Google.Storage.V2.AppendObjectSpec,
    json_name: "appendObjectSpec",
    oneof: 0

  field :write_offset, 3, type: :int64, json_name: "writeOffset", deprecated: false

  field :checksummed_data, 4,
    type: Google.Storage.V2.ChecksummedData,
    json_name: "checksummedData",
    oneof: 1

  field :object_checksums, 6,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums",
    deprecated: false

  field :state_lookup, 7, type: :bool, json_name: "stateLookup", deprecated: false
  field :flush, 8, type: :bool, deprecated: false
  field :finish_write, 9, type: :bool, json_name: "finishWrite", deprecated: false

  field :common_object_request_params, 10,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false
end

defmodule Google.Storage.V2.BidiWriteObjectResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :write_status, 0

  field :persisted_size, 1, type: :int64, json_name: "persistedSize", oneof: 0
  field :resource, 2, type: Google.Storage.V2.Object, oneof: 0

  field :write_handle, 3,
    proto3_optional: true,
    type: Google.Storage.V2.BidiWriteHandle,
    json_name: "writeHandle"
end

defmodule Google.Storage.V2.ListObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :delimiter, 4, type: :string, deprecated: false

  field :include_trailing_delimiter, 5,
    type: :bool,
    json_name: "includeTrailingDelimiter",
    deprecated: false

  field :prefix, 6, type: :string, deprecated: false
  field :versions, 7, type: :bool, deprecated: false

  field :read_mask, 8,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"

  field :lexicographic_start, 10,
    type: :string,
    json_name: "lexicographicStart",
    deprecated: false

  field :lexicographic_end, 11, type: :string, json_name: "lexicographicEnd", deprecated: false
  field :soft_deleted, 12, type: :bool, json_name: "softDeleted", deprecated: false

  field :include_folders_as_prefixes, 13,
    type: :bool,
    json_name: "includeFoldersAsPrefixes",
    deprecated: false

  field :match_glob, 14, type: :string, json_name: "matchGlob", deprecated: false
  field :filter, 15, type: :string, deprecated: false
end

defmodule Google.Storage.V2.QueryWriteStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId", deprecated: false

  field :common_object_request_params, 2,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false
end

defmodule Google.Storage.V2.QueryWriteStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :write_status, 0

  field :persisted_size, 1, type: :int64, json_name: "persistedSize", oneof: 0
  field :resource, 2, type: Google.Storage.V2.Object, oneof: 0
end

defmodule Google.Storage.V2.RewriteObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_name, 24, type: :string, json_name: "destinationName", deprecated: false
  field :destination_bucket, 25, type: :string, json_name: "destinationBucket", deprecated: false
  field :destination_kms_key, 27, type: :string, json_name: "destinationKmsKey", deprecated: false
  field :destination, 1, type: Google.Storage.V2.Object, deprecated: false
  field :source_bucket, 2, type: :string, json_name: "sourceBucket", deprecated: false
  field :source_object, 3, type: :string, json_name: "sourceObject", deprecated: false
  field :source_generation, 4, type: :int64, json_name: "sourceGeneration", deprecated: false
  field :rewrite_token, 5, type: :string, json_name: "rewriteToken", deprecated: false

  field :destination_predefined_acl, 28,
    type: :string,
    json_name: "destinationPredefinedAcl",
    deprecated: false

  field :if_generation_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :if_source_generation_match, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceGenerationMatch"

  field :if_source_generation_not_match, 12,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceGenerationNotMatch"

  field :if_source_metageneration_match, 13,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceMetagenerationMatch"

  field :if_source_metageneration_not_match, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceMetagenerationNotMatch"

  field :max_bytes_rewritten_per_call, 15,
    type: :int64,
    json_name: "maxBytesRewrittenPerCall",
    deprecated: false

  field :copy_source_encryption_algorithm, 16,
    type: :string,
    json_name: "copySourceEncryptionAlgorithm",
    deprecated: false

  field :copy_source_encryption_key_bytes, 21,
    type: :bytes,
    json_name: "copySourceEncryptionKeyBytes",
    deprecated: false

  field :copy_source_encryption_key_sha256_bytes, 22,
    type: :bytes,
    json_name: "copySourceEncryptionKeySha256Bytes",
    deprecated: false

  field :common_object_request_params, 19,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :object_checksums, 29,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums",
    deprecated: false
end

defmodule Google.Storage.V2.RewriteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_bytes_rewritten, 1, type: :int64, json_name: "totalBytesRewritten"
  field :object_size, 2, type: :int64, json_name: "objectSize"
  field :done, 3, type: :bool
  field :rewrite_token, 4, type: :string, json_name: "rewriteToken"
  field :resource, 5, type: Google.Storage.V2.Object
end

defmodule Google.Storage.V2.MoveObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :source_object, 2, type: :string, json_name: "sourceObject", deprecated: false
  field :destination_object, 3, type: :string, json_name: "destinationObject", deprecated: false

  field :if_source_generation_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceGenerationMatch",
    deprecated: false

  field :if_source_generation_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceGenerationNotMatch",
    deprecated: false

  field :if_source_metageneration_match, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceMetagenerationMatch",
    deprecated: false

  field :if_source_metageneration_not_match, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "ifSourceMetagenerationNotMatch",
    deprecated: false

  field :if_generation_match, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch",
    deprecated: false

  field :if_generation_not_match, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch",
    deprecated: false

  field :if_metageneration_match, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch",
    deprecated: false

  field :if_metageneration_not_match, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch",
    deprecated: false
end

defmodule Google.Storage.V2.StartResumableWriteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :write_object_spec, 1,
    type: Google.Storage.V2.WriteObjectSpec,
    json_name: "writeObjectSpec",
    deprecated: false

  field :common_object_request_params, 3,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :object_checksums, 5,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums",
    deprecated: false
end

defmodule Google.Storage.V2.StartResumableWriteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId"
end

defmodule Google.Storage.V2.UpdateObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :object, 1, type: Google.Storage.V2.Object, deprecated: false

  field :if_generation_match, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"

  field :if_generation_not_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 10, type: :string, json_name: "predefinedAcl", deprecated: false

  field :update_mask, 7,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams",
    deprecated: false

  field :override_unlocked_retention, 11,
    type: :bool,
    json_name: "overrideUnlockedRetention",
    deprecated: false
end

defmodule Google.Storage.V2.CommonObjectRequestParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encryption_algorithm, 1,
    type: :string,
    json_name: "encryptionAlgorithm",
    deprecated: false

  field :encryption_key_bytes, 4, type: :bytes, json_name: "encryptionKeyBytes", deprecated: false

  field :encryption_key_sha256_bytes, 5,
    type: :bytes,
    json_name: "encryptionKeySha256Bytes",
    deprecated: false
end

defmodule Google.Storage.V2.ServiceConstants do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Storage.V2.Bucket.Billing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :requester_pays, 1, type: :bool, json_name: "requesterPays", deprecated: false
end

defmodule Google.Storage.V2.Bucket.Cors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :origin, 1, repeated: true, type: :string, deprecated: false
  field :method, 2, repeated: true, type: :string, deprecated: false

  field :response_header, 3,
    repeated: true,
    type: :string,
    json_name: "responseHeader",
    deprecated: false

  field :max_age_seconds, 4, type: :int32, json_name: "maxAgeSeconds", deprecated: false
end

defmodule Google.Storage.V2.Bucket.Encryption.GoogleManagedEncryptionEnforcementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :restriction_mode, 3, proto3_optional: true, type: :string, json_name: "restrictionMode"

  field :effective_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime"
end

defmodule Google.Storage.V2.Bucket.Encryption.CustomerManagedEncryptionEnforcementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :restriction_mode, 3, proto3_optional: true, type: :string, json_name: "restrictionMode"

  field :effective_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime"
end

defmodule Google.Storage.V2.Bucket.Encryption.CustomerSuppliedEncryptionEnforcementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :restriction_mode, 3, proto3_optional: true, type: :string, json_name: "restrictionMode"

  field :effective_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime"
end

defmodule Google.Storage.V2.Bucket.Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_kms_key, 1, type: :string, json_name: "defaultKmsKey", deprecated: false

  field :google_managed_encryption_enforcement_config, 2,
    proto3_optional: true,
    type: Google.Storage.V2.Bucket.Encryption.GoogleManagedEncryptionEnforcementConfig,
    json_name: "googleManagedEncryptionEnforcementConfig",
    deprecated: false

  field :customer_managed_encryption_enforcement_config, 3,
    proto3_optional: true,
    type: Google.Storage.V2.Bucket.Encryption.CustomerManagedEncryptionEnforcementConfig,
    json_name: "customerManagedEncryptionEnforcementConfig",
    deprecated: false

  field :customer_supplied_encryption_enforcement_config, 4,
    proto3_optional: true,
    type: Google.Storage.V2.Bucket.Encryption.CustomerSuppliedEncryptionEnforcementConfig,
    json_name: "customerSuppliedEncryptionEnforcementConfig",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.IamConfig.UniformBucketLevelAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
  field :lock_time, 2, type: Google.Protobuf.Timestamp, json_name: "lockTime", deprecated: false
end

defmodule Google.Storage.V2.Bucket.IamConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uniform_bucket_level_access, 1,
    type: Google.Storage.V2.Bucket.IamConfig.UniformBucketLevelAccess,
    json_name: "uniformBucketLevelAccess",
    deprecated: false

  field :public_access_prevention, 3,
    type: :string,
    json_name: "publicAccessPrevention",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.Lifecycle.Rule.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :storage_class, 2, type: :string, json_name: "storageClass", deprecated: false
end

defmodule Google.Storage.V2.Bucket.Lifecycle.Rule.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :age_days, 1, proto3_optional: true, type: :int32, json_name: "ageDays"
  field :created_before, 2, type: Google.Type.Date, json_name: "createdBefore", deprecated: false
  field :is_live, 3, proto3_optional: true, type: :bool, json_name: "isLive"
  field :num_newer_versions, 4, proto3_optional: true, type: :int32, json_name: "numNewerVersions"

  field :matches_storage_class, 5,
    repeated: true,
    type: :string,
    json_name: "matchesStorageClass",
    deprecated: false

  field :days_since_custom_time, 7,
    proto3_optional: true,
    type: :int32,
    json_name: "daysSinceCustomTime"

  field :custom_time_before, 8,
    type: Google.Type.Date,
    json_name: "customTimeBefore",
    deprecated: false

  field :days_since_noncurrent_time, 9,
    proto3_optional: true,
    type: :int32,
    json_name: "daysSinceNoncurrentTime"

  field :noncurrent_time_before, 10,
    type: Google.Type.Date,
    json_name: "noncurrentTimeBefore",
    deprecated: false

  field :matches_prefix, 11,
    repeated: true,
    type: :string,
    json_name: "matchesPrefix",
    deprecated: false

  field :matches_suffix, 12,
    repeated: true,
    type: :string,
    json_name: "matchesSuffix",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.Lifecycle.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action, 1, type: Google.Storage.V2.Bucket.Lifecycle.Rule.Action, deprecated: false
  field :condition, 2, type: Google.Storage.V2.Bucket.Lifecycle.Rule.Condition, deprecated: false
end

defmodule Google.Storage.V2.Bucket.Lifecycle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rule, 1, repeated: true, type: Google.Storage.V2.Bucket.Lifecycle.Rule, deprecated: false
end

defmodule Google.Storage.V2.Bucket.Logging do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :log_bucket, 1, type: :string, json_name: "logBucket", deprecated: false
  field :log_object_prefix, 2, type: :string, json_name: "logObjectPrefix", deprecated: false
end

defmodule Google.Storage.V2.Bucket.ObjectRetention do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Storage.V2.Bucket.RetentionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :effective_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime",
    deprecated: false

  field :is_locked, 2, type: :bool, json_name: "isLocked", deprecated: false

  field :retention_duration, 4,
    type: Google.Protobuf.Duration,
    json_name: "retentionDuration",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.SoftDeletePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retention_duration, 1,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "retentionDuration"

  field :effective_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime"
end

defmodule Google.Storage.V2.Bucket.Versioning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Storage.V2.Bucket.Website do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :main_page_suffix, 1, type: :string, json_name: "mainPageSuffix", deprecated: false
  field :not_found_page, 2, type: :string, json_name: "notFoundPage", deprecated: false
end

defmodule Google.Storage.V2.Bucket.CustomPlacementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_locations, 1,
    repeated: true,
    type: :string,
    json_name: "dataLocations",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.Autoclass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false

  field :toggle_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "toggleTime",
    deprecated: false

  field :terminal_storage_class, 3,
    proto3_optional: true,
    type: :string,
    json_name: "terminalStorageClass"

  field :terminal_storage_class_update_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "terminalStorageClassUpdateTime",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.IpFilter.PublicNetworkSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allowed_ip_cidr_ranges, 1,
    repeated: true,
    type: :string,
    json_name: "allowedIpCidrRanges",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.IpFilter.VpcNetworkSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, proto3_optional: true, type: :string

  field :allowed_ip_cidr_ranges, 2,
    repeated: true,
    type: :string,
    json_name: "allowedIpCidrRanges",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.IpFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, proto3_optional: true, type: :string

  field :public_network_source, 2,
    proto3_optional: true,
    type: Google.Storage.V2.Bucket.IpFilter.PublicNetworkSource,
    json_name: "publicNetworkSource"

  field :vpc_network_sources, 3,
    repeated: true,
    type: Google.Storage.V2.Bucket.IpFilter.VpcNetworkSource,
    json_name: "vpcNetworkSources",
    deprecated: false

  field :allow_cross_org_vpcs, 4, type: :bool, json_name: "allowCrossOrgVpcs", deprecated: false

  field :allow_all_service_agent_access, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "allowAllServiceAgentAccess"
end

defmodule Google.Storage.V2.Bucket.HierarchicalNamespace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Storage.V2.Bucket.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V2.Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :bucket_id, 2, type: :string, json_name: "bucketId", deprecated: false
  field :etag, 29, type: :string
  field :project, 3, type: :string, deprecated: false
  field :metageneration, 4, type: :int64, deprecated: false
  field :location, 5, type: :string, deprecated: false
  field :location_type, 6, type: :string, json_name: "locationType", deprecated: false
  field :storage_class, 7, type: :string, json_name: "storageClass", deprecated: false
  field :rpo, 27, type: :string, deprecated: false
  field :acl, 8, repeated: true, type: Google.Storage.V2.BucketAccessControl, deprecated: false

  field :default_object_acl, 9,
    repeated: true,
    type: Google.Storage.V2.ObjectAccessControl,
    json_name: "defaultObjectAcl",
    deprecated: false

  field :lifecycle, 10, type: Google.Storage.V2.Bucket.Lifecycle, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :cors, 12, repeated: true, type: Google.Storage.V2.Bucket.Cors, deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :default_event_based_hold, 14,
    type: :bool,
    json_name: "defaultEventBasedHold",
    deprecated: false

  field :labels, 15,
    repeated: true,
    type: Google.Storage.V2.Bucket.LabelsEntry,
    map: true,
    deprecated: false

  field :website, 16, type: Google.Storage.V2.Bucket.Website, deprecated: false
  field :versioning, 17, type: Google.Storage.V2.Bucket.Versioning, deprecated: false
  field :logging, 18, type: Google.Storage.V2.Bucket.Logging, deprecated: false
  field :owner, 19, type: Google.Storage.V2.Owner, deprecated: false
  field :encryption, 20, type: Google.Storage.V2.Bucket.Encryption, deprecated: false
  field :billing, 21, type: Google.Storage.V2.Bucket.Billing, deprecated: false

  field :retention_policy, 22,
    type: Google.Storage.V2.Bucket.RetentionPolicy,
    json_name: "retentionPolicy",
    deprecated: false

  field :iam_config, 23,
    type: Google.Storage.V2.Bucket.IamConfig,
    json_name: "iamConfig",
    deprecated: false

  field :satisfies_pzs, 25, type: :bool, json_name: "satisfiesPzs", deprecated: false

  field :custom_placement_config, 26,
    type: Google.Storage.V2.Bucket.CustomPlacementConfig,
    json_name: "customPlacementConfig",
    deprecated: false

  field :autoclass, 28, type: Google.Storage.V2.Bucket.Autoclass, deprecated: false

  field :hierarchical_namespace, 32,
    type: Google.Storage.V2.Bucket.HierarchicalNamespace,
    json_name: "hierarchicalNamespace",
    deprecated: false

  field :soft_delete_policy, 31,
    type: Google.Storage.V2.Bucket.SoftDeletePolicy,
    json_name: "softDeletePolicy",
    deprecated: false

  field :object_retention, 33,
    type: Google.Storage.V2.Bucket.ObjectRetention,
    json_name: "objectRetention",
    deprecated: false

  field :ip_filter, 38,
    proto3_optional: true,
    type: Google.Storage.V2.Bucket.IpFilter,
    json_name: "ipFilter",
    deprecated: false
end

defmodule Google.Storage.V2.BucketAccessControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :entity, 3, type: :string, deprecated: false
  field :entity_alt, 9, type: :string, json_name: "entityAlt", deprecated: false
  field :entity_id, 4, type: :string, json_name: "entityId", deprecated: false
  field :etag, 8, type: :string, deprecated: false
  field :email, 5, type: :string, deprecated: false
  field :domain, 6, type: :string, deprecated: false

  field :project_team, 7,
    type: Google.Storage.V2.ProjectTeam,
    json_name: "projectTeam",
    deprecated: false
end

defmodule Google.Storage.V2.ChecksummedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content, 1, type: :bytes, deprecated: false
  field :crc32c, 2, proto3_optional: true, type: :fixed32
end

defmodule Google.Storage.V2.ObjectChecksums do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :crc32c, 1, proto3_optional: true, type: :fixed32
  field :md5_hash, 2, type: :bytes, json_name: "md5Hash", deprecated: false
end

defmodule Google.Storage.V2.ObjectCustomContextPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Storage.V2.ObjectContexts.CustomEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Storage.V2.ObjectCustomContextPayload
end

defmodule Google.Storage.V2.ObjectContexts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom, 1,
    repeated: true,
    type: Google.Storage.V2.ObjectContexts.CustomEntry,
    map: true,
    deprecated: false
end

defmodule Google.Storage.V2.CustomerEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encryption_algorithm, 1,
    type: :string,
    json_name: "encryptionAlgorithm",
    deprecated: false

  field :key_sha256_bytes, 3, type: :bytes, json_name: "keySha256Bytes", deprecated: false
end

defmodule Google.Storage.V2.Object.Retention do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, type: Google.Storage.V2.Object.Retention.Mode, enum: true, deprecated: false

  field :retain_until_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "retainUntilTime",
    deprecated: false
end

defmodule Google.Storage.V2.Object.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V2.Object do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :bucket, 2, type: :string, deprecated: false
  field :etag, 27, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false

  field :restore_token, 35,
    proto3_optional: true,
    type: :string,
    json_name: "restoreToken",
    deprecated: false

  field :metageneration, 4, type: :int64, deprecated: false
  field :storage_class, 5, type: :string, json_name: "storageClass", deprecated: false
  field :size, 6, type: :int64, deprecated: false
  field :content_encoding, 7, type: :string, json_name: "contentEncoding", deprecated: false
  field :content_disposition, 8, type: :string, json_name: "contentDisposition", deprecated: false
  field :cache_control, 9, type: :string, json_name: "cacheControl", deprecated: false
  field :acl, 10, repeated: true, type: Google.Storage.V2.ObjectAccessControl, deprecated: false
  field :content_language, 11, type: :string, json_name: "contentLanguage", deprecated: false

  field :delete_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :finalize_time, 36,
    type: Google.Protobuf.Timestamp,
    json_name: "finalizeTime",
    deprecated: false

  field :content_type, 13, type: :string, json_name: "contentType", deprecated: false

  field :create_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :component_count, 15, type: :int32, json_name: "componentCount", deprecated: false
  field :checksums, 16, type: Google.Storage.V2.ObjectChecksums, deprecated: false

  field :update_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :kms_key, 18, type: :string, json_name: "kmsKey", deprecated: false

  field :update_storage_class_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "updateStorageClassTime",
    deprecated: false

  field :temporary_hold, 20, type: :bool, json_name: "temporaryHold", deprecated: false

  field :retention_expire_time, 21,
    type: Google.Protobuf.Timestamp,
    json_name: "retentionExpireTime",
    deprecated: false

  field :metadata, 22,
    repeated: true,
    type: Google.Storage.V2.Object.MetadataEntry,
    map: true,
    deprecated: false

  field :contexts, 38, type: Google.Storage.V2.ObjectContexts, deprecated: false
  field :event_based_hold, 23, proto3_optional: true, type: :bool, json_name: "eventBasedHold"
  field :owner, 24, type: Google.Storage.V2.Owner, deprecated: false

  field :customer_encryption, 25,
    type: Google.Storage.V2.CustomerEncryption,
    json_name: "customerEncryption",
    deprecated: false

  field :custom_time, 26,
    type: Google.Protobuf.Timestamp,
    json_name: "customTime",
    deprecated: false

  field :soft_delete_time, 28,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "softDeleteTime",
    deprecated: false

  field :hard_delete_time, 29,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "hardDeleteTime",
    deprecated: false

  field :retention, 30, type: Google.Storage.V2.Object.Retention, deprecated: false
end

defmodule Google.Storage.V2.ObjectAccessControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :entity, 3, type: :string, deprecated: false
  field :entity_alt, 9, type: :string, json_name: "entityAlt", deprecated: false
  field :entity_id, 4, type: :string, json_name: "entityId", deprecated: false
  field :etag, 8, type: :string, deprecated: false
  field :email, 5, type: :string, deprecated: false
  field :domain, 6, type: :string, deprecated: false

  field :project_team, 7,
    type: Google.Storage.V2.ProjectTeam,
    json_name: "projectTeam",
    deprecated: false
end

defmodule Google.Storage.V2.ListObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :objects, 1, repeated: true, type: Google.Storage.V2.Object
  field :prefixes, 2, repeated: true, type: :string
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V2.ProjectTeam do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_number, 1, type: :string, json_name: "projectNumber", deprecated: false
  field :team, 2, type: :string, deprecated: false
end

defmodule Google.Storage.V2.Owner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entity, 1, type: :string, deprecated: false
  field :entity_id, 2, type: :string, json_name: "entityId", deprecated: false
end

defmodule Google.Storage.V2.ContentRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
  field :complete_length, 3, type: :int64, json_name: "completeLength"
end

defmodule Google.Storage.V2.Storage.Service do
  @moduledoc false

  use GRPC.Service, name: "google.storage.v2.Storage", protoc_gen_elixir_version: "0.15.0"

  rpc :DeleteBucket, Google.Storage.V2.DeleteBucketRequest, Google.Protobuf.Empty

  rpc :GetBucket, Google.Storage.V2.GetBucketRequest, Google.Storage.V2.Bucket

  rpc :CreateBucket, Google.Storage.V2.CreateBucketRequest, Google.Storage.V2.Bucket

  rpc :ListBuckets, Google.Storage.V2.ListBucketsRequest, Google.Storage.V2.ListBucketsResponse

  rpc :LockBucketRetentionPolicy,
      Google.Storage.V2.LockBucketRetentionPolicyRequest,
      Google.Storage.V2.Bucket

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :UpdateBucket, Google.Storage.V2.UpdateBucketRequest, Google.Storage.V2.Bucket

  rpc :ComposeObject, Google.Storage.V2.ComposeObjectRequest, Google.Storage.V2.Object

  rpc :DeleteObject, Google.Storage.V2.DeleteObjectRequest, Google.Protobuf.Empty

  rpc :RestoreObject, Google.Storage.V2.RestoreObjectRequest, Google.Storage.V2.Object

  rpc :CancelResumableWrite,
      Google.Storage.V2.CancelResumableWriteRequest,
      Google.Storage.V2.CancelResumableWriteResponse

  rpc :GetObject, Google.Storage.V2.GetObjectRequest, Google.Storage.V2.Object

  rpc :ReadObject,
      Google.Storage.V2.ReadObjectRequest,
      stream(Google.Storage.V2.ReadObjectResponse)

  rpc :BidiReadObject,
      stream(Google.Storage.V2.BidiReadObjectRequest),
      stream(Google.Storage.V2.BidiReadObjectResponse)

  rpc :UpdateObject, Google.Storage.V2.UpdateObjectRequest, Google.Storage.V2.Object

  rpc :WriteObject,
      stream(Google.Storage.V2.WriteObjectRequest),
      Google.Storage.V2.WriteObjectResponse

  rpc :BidiWriteObject,
      stream(Google.Storage.V2.BidiWriteObjectRequest),
      stream(Google.Storage.V2.BidiWriteObjectResponse)

  rpc :ListObjects, Google.Storage.V2.ListObjectsRequest, Google.Storage.V2.ListObjectsResponse

  rpc :RewriteObject, Google.Storage.V2.RewriteObjectRequest, Google.Storage.V2.RewriteResponse

  rpc :StartResumableWrite,
      Google.Storage.V2.StartResumableWriteRequest,
      Google.Storage.V2.StartResumableWriteResponse

  rpc :QueryWriteStatus,
      Google.Storage.V2.QueryWriteStatusRequest,
      Google.Storage.V2.QueryWriteStatusResponse

  rpc :MoveObject, Google.Storage.V2.MoveObjectRequest, Google.Storage.V2.Object
end

defmodule Google.Storage.V2.Storage.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Storage.V2.Storage.Service
end
