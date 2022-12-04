defmodule Google.Storage.V2.ServiceConstants.Values do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Storage.V2.DeleteBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :bucket, 2, type: Google.Storage.V2.Bucket
  field :bucket_id, 3, type: :string, json_name: "bucketId", deprecated: false
  field :predefined_acl, 6, type: :string, json_name: "predefinedAcl"
  field :predefined_default_object_acl, 7, type: :string, json_name: "predefinedDefaultObjectAcl"
end

defmodule Google.Storage.V2.ListBucketsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :prefix, 4, type: :string

  field :read_mask, 5,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end

defmodule Google.Storage.V2.ListBucketsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :buckets, 1, repeated: true, type: Google.Storage.V2.Bucket
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V2.LockBucketRetentionPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: :int64,
    json_name: "ifMetagenerationMatch",
    deprecated: false
end

defmodule Google.Storage.V2.UpdateBucketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: Google.Storage.V2.Bucket, deprecated: false

  field :if_metageneration_match, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 8, type: :string, json_name: "predefinedAcl"
  field :predefined_default_object_acl, 9, type: :string, json_name: "predefinedDefaultObjectAcl"

  field :update_mask, 6,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Storage.V2.DeleteNotificationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storage.V2.GetNotificationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storage.V2.CreateNotificationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :notification, 2, type: Google.Storage.V2.Notification, deprecated: false
end

defmodule Google.Storage.V2.ListNotificationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Storage.V2.ListNotificationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notifications, 1, repeated: true, type: Google.Storage.V2.Notification
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V2.ComposeObjectRequest.SourceObject.ObjectPreconditions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :if_generation_match, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "ifGenerationMatch"
end

defmodule Google.Storage.V2.ComposeObjectRequest.SourceObject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :generation, 2, type: :int64

  field :object_preconditions, 3,
    type: Google.Storage.V2.ComposeObjectRequest.SourceObject.ObjectPreconditions,
    json_name: "objectPreconditions"
end

defmodule Google.Storage.V2.ComposeObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :destination, 1, type: Google.Storage.V2.Object, deprecated: false

  field :source_objects, 2,
    repeated: true,
    type: Google.Storage.V2.ComposeObjectRequest.SourceObject,
    json_name: "sourceObjects"

  field :destination_predefined_acl, 9, type: :string, json_name: "destinationPredefinedAcl"

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
    json_name: "commonObjectRequestParams"

  field :object_checksums, 10,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums"
end

defmodule Google.Storage.V2.DeleteObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 4, type: :int64

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
    json_name: "commonObjectRequestParams"
end

defmodule Google.Storage.V2.CancelResumableWriteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId", deprecated: false
end

defmodule Google.Storage.V2.CancelResumableWriteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Storage.V2.ReadObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64
  field :read_offset, 4, type: :int64, json_name: "readOffset"
  field :read_limit, 5, type: :int64, json_name: "readLimit"

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
    json_name: "commonObjectRequestParams"

  field :read_mask, 12,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end

defmodule Google.Storage.V2.GetObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64

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
    json_name: "commonObjectRequestParams"

  field :read_mask, 10,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"
end

defmodule Google.Storage.V2.ReadObjectResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :checksummed_data, 1,
    type: Google.Storage.V2.ChecksummedData,
    json_name: "checksummedData"

  field :object_checksums, 2,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums"

  field :content_range, 3, type: Google.Storage.V2.ContentRange, json_name: "contentRange"
  field :metadata, 4, type: Google.Storage.V2.Object
end

defmodule Google.Storage.V2.WriteObjectSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource, 1, type: Google.Storage.V2.Object, deprecated: false
  field :predefined_acl, 7, type: :string, json_name: "predefinedAcl"

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
end

defmodule Google.Storage.V2.WriteObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
    json_name: "objectChecksums"

  field :finish_write, 7, type: :bool, json_name: "finishWrite"

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"
end

defmodule Google.Storage.V2.WriteObjectResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :write_status, 0

  field :persisted_size, 1, type: :int64, json_name: "persistedSize", oneof: 0
  field :resource, 2, type: Google.Storage.V2.Object, oneof: 0
end

defmodule Google.Storage.V2.ListObjectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :delimiter, 4, type: :string
  field :include_trailing_delimiter, 5, type: :bool, json_name: "includeTrailingDelimiter"
  field :prefix, 6, type: :string
  field :versions, 7, type: :bool

  field :read_mask, 8,
    proto3_optional: true,
    type: Google.Protobuf.FieldMask,
    json_name: "readMask"

  field :lexicographic_start, 10,
    type: :string,
    json_name: "lexicographicStart",
    deprecated: false

  field :lexicographic_end, 11, type: :string, json_name: "lexicographicEnd", deprecated: false
end

defmodule Google.Storage.V2.QueryWriteStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId", deprecated: false

  field :common_object_request_params, 2,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"
end

defmodule Google.Storage.V2.QueryWriteStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :write_status, 0

  field :persisted_size, 1, type: :int64, json_name: "persistedSize", oneof: 0
  field :resource, 2, type: Google.Storage.V2.Object, oneof: 0
end

defmodule Google.Storage.V2.RewriteObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :destination_name, 24, type: :string, json_name: "destinationName", deprecated: false
  field :destination_bucket, 25, type: :string, json_name: "destinationBucket", deprecated: false
  field :destination_kms_key, 27, type: :string, json_name: "destinationKmsKey", deprecated: false
  field :destination, 1, type: Google.Storage.V2.Object
  field :source_bucket, 2, type: :string, json_name: "sourceBucket", deprecated: false
  field :source_object, 3, type: :string, json_name: "sourceObject", deprecated: false
  field :source_generation, 4, type: :int64, json_name: "sourceGeneration"
  field :rewrite_token, 5, type: :string, json_name: "rewriteToken"
  field :destination_predefined_acl, 28, type: :string, json_name: "destinationPredefinedAcl"

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

  field :max_bytes_rewritten_per_call, 15, type: :int64, json_name: "maxBytesRewrittenPerCall"

  field :copy_source_encryption_algorithm, 16,
    type: :string,
    json_name: "copySourceEncryptionAlgorithm"

  field :copy_source_encryption_key_bytes, 21,
    type: :bytes,
    json_name: "copySourceEncryptionKeyBytes"

  field :copy_source_encryption_key_sha256_bytes, 22,
    type: :bytes,
    json_name: "copySourceEncryptionKeySha256Bytes"

  field :common_object_request_params, 19,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :object_checksums, 29,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums"
end

defmodule Google.Storage.V2.RewriteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_bytes_rewritten, 1, type: :int64, json_name: "totalBytesRewritten"
  field :object_size, 2, type: :int64, json_name: "objectSize"
  field :done, 3, type: :bool
  field :rewrite_token, 4, type: :string, json_name: "rewriteToken"
  field :resource, 5, type: Google.Storage.V2.Object
end

defmodule Google.Storage.V2.StartResumableWriteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :write_object_spec, 1,
    type: Google.Storage.V2.WriteObjectSpec,
    json_name: "writeObjectSpec",
    deprecated: false

  field :common_object_request_params, 3,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :object_checksums, 5,
    type: Google.Storage.V2.ObjectChecksums,
    json_name: "objectChecksums"
end

defmodule Google.Storage.V2.StartResumableWriteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId"
end

defmodule Google.Storage.V2.UpdateObjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :predefined_acl, 10, type: :string, json_name: "predefinedAcl"

  field :update_mask, 7,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :common_object_request_params, 8,
    type: Google.Storage.V2.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"
end

defmodule Google.Storage.V2.GetServiceAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
end

defmodule Google.Storage.V2.CreateHmacKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false

  field :service_account_email, 2,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false
end

defmodule Google.Storage.V2.CreateHmacKeyResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata, 1, type: Google.Storage.V2.HmacKeyMetadata
  field :secret_key_bytes, 3, type: :bytes, json_name: "secretKeyBytes"
end

defmodule Google.Storage.V2.DeleteHmacKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_id, 1, type: :string, json_name: "accessId", deprecated: false
  field :project, 2, type: :string, deprecated: false
end

defmodule Google.Storage.V2.GetHmacKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_id, 1, type: :string, json_name: "accessId", deprecated: false
  field :project, 2, type: :string, deprecated: false
end

defmodule Google.Storage.V2.ListHmacKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :service_account_email, 4, type: :string, json_name: "serviceAccountEmail"
  field :show_deleted_keys, 5, type: :bool, json_name: "showDeletedKeys"
end

defmodule Google.Storage.V2.ListHmacKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hmac_keys, 1,
    repeated: true,
    type: Google.Storage.V2.HmacKeyMetadata,
    json_name: "hmacKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V2.UpdateHmacKeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hmac_key, 1,
    type: Google.Storage.V2.HmacKeyMetadata,
    json_name: "hmacKey",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Storage.V2.CommonObjectRequestParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :encryption_algorithm, 1, type: :string, json_name: "encryptionAlgorithm"
  field :encryption_key_bytes, 4, type: :bytes, json_name: "encryptionKeyBytes"
  field :encryption_key_sha256_bytes, 5, type: :bytes, json_name: "encryptionKeySha256Bytes"
end

defmodule Google.Storage.V2.ServiceConstants do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Storage.V2.Bucket.Billing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :requester_pays, 1, type: :bool, json_name: "requesterPays"
end

defmodule Google.Storage.V2.Bucket.Cors do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :origin, 1, repeated: true, type: :string
  field :method, 2, repeated: true, type: :string
  field :response_header, 3, repeated: true, type: :string, json_name: "responseHeader"
  field :max_age_seconds, 4, type: :int32, json_name: "maxAgeSeconds"
end

defmodule Google.Storage.V2.Bucket.Encryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :default_kms_key, 1, type: :string, json_name: "defaultKmsKey", deprecated: false
end

defmodule Google.Storage.V2.Bucket.IamConfig.UniformBucketLevelAccess do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :lock_time, 2, type: Google.Protobuf.Timestamp, json_name: "lockTime"
end

defmodule Google.Storage.V2.Bucket.IamConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uniform_bucket_level_access, 1,
    type: Google.Storage.V2.Bucket.IamConfig.UniformBucketLevelAccess,
    json_name: "uniformBucketLevelAccess"

  field :public_access_prevention, 3, type: :string, json_name: "publicAccessPrevention"
end

defmodule Google.Storage.V2.Bucket.Lifecycle.Rule.Action do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :string
  field :storage_class, 2, type: :string, json_name: "storageClass"
end

defmodule Google.Storage.V2.Bucket.Lifecycle.Rule.Condition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :age_days, 1, proto3_optional: true, type: :int32, json_name: "ageDays"
  field :created_before, 2, type: Google.Type.Date, json_name: "createdBefore"
  field :is_live, 3, proto3_optional: true, type: :bool, json_name: "isLive"
  field :num_newer_versions, 4, proto3_optional: true, type: :int32, json_name: "numNewerVersions"
  field :matches_storage_class, 5, repeated: true, type: :string, json_name: "matchesStorageClass"

  field :days_since_custom_time, 7,
    proto3_optional: true,
    type: :int32,
    json_name: "daysSinceCustomTime"

  field :custom_time_before, 8, type: Google.Type.Date, json_name: "customTimeBefore"

  field :days_since_noncurrent_time, 9,
    proto3_optional: true,
    type: :int32,
    json_name: "daysSinceNoncurrentTime"

  field :noncurrent_time_before, 10, type: Google.Type.Date, json_name: "noncurrentTimeBefore"
  field :matches_prefix, 11, repeated: true, type: :string, json_name: "matchesPrefix"
  field :matches_suffix, 12, repeated: true, type: :string, json_name: "matchesSuffix"
end

defmodule Google.Storage.V2.Bucket.Lifecycle.Rule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action, 1, type: Google.Storage.V2.Bucket.Lifecycle.Rule.Action
  field :condition, 2, type: Google.Storage.V2.Bucket.Lifecycle.Rule.Condition
end

defmodule Google.Storage.V2.Bucket.Lifecycle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rule, 1, repeated: true, type: Google.Storage.V2.Bucket.Lifecycle.Rule
end

defmodule Google.Storage.V2.Bucket.Logging do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :log_bucket, 1, type: :string, json_name: "logBucket"
  field :log_object_prefix, 2, type: :string, json_name: "logObjectPrefix"
end

defmodule Google.Storage.V2.Bucket.RetentionPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :effective_time, 1, type: Google.Protobuf.Timestamp, json_name: "effectiveTime"
  field :is_locked, 2, type: :bool, json_name: "isLocked"
  field :retention_period, 3, proto3_optional: true, type: :int64, json_name: "retentionPeriod"
  field :retention_duration, 4, type: Google.Protobuf.Duration, json_name: "retentionDuration"
end

defmodule Google.Storage.V2.Bucket.Versioning do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Storage.V2.Bucket.Website do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :main_page_suffix, 1, type: :string, json_name: "mainPageSuffix"
  field :not_found_page, 2, type: :string, json_name: "notFoundPage"
end

defmodule Google.Storage.V2.Bucket.CustomPlacementConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_locations, 1, repeated: true, type: :string, json_name: "dataLocations"
end

defmodule Google.Storage.V2.Bucket.Autoclass do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :toggle_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "toggleTime",
    deprecated: false
end

defmodule Google.Storage.V2.Bucket.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V2.Bucket do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :bucket_id, 2, type: :string, json_name: "bucketId", deprecated: false
  field :etag, 29, type: :string
  field :project, 3, type: :string, deprecated: false
  field :metageneration, 4, type: :int64, deprecated: false
  field :location, 5, type: :string, deprecated: false
  field :location_type, 6, type: :string, json_name: "locationType", deprecated: false
  field :storage_class, 7, type: :string, json_name: "storageClass"
  field :rpo, 27, type: :string
  field :acl, 8, repeated: true, type: Google.Storage.V2.BucketAccessControl

  field :default_object_acl, 9,
    repeated: true,
    type: Google.Storage.V2.ObjectAccessControl,
    json_name: "defaultObjectAcl"

  field :lifecycle, 10, type: Google.Storage.V2.Bucket.Lifecycle

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :cors, 12, repeated: true, type: Google.Storage.V2.Bucket.Cors

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :default_event_based_hold, 14, type: :bool, json_name: "defaultEventBasedHold"
  field :labels, 15, repeated: true, type: Google.Storage.V2.Bucket.LabelsEntry, map: true
  field :website, 16, type: Google.Storage.V2.Bucket.Website
  field :versioning, 17, type: Google.Storage.V2.Bucket.Versioning
  field :logging, 18, type: Google.Storage.V2.Bucket.Logging
  field :owner, 19, type: Google.Storage.V2.Owner, deprecated: false
  field :encryption, 20, type: Google.Storage.V2.Bucket.Encryption
  field :billing, 21, type: Google.Storage.V2.Bucket.Billing

  field :retention_policy, 22,
    type: Google.Storage.V2.Bucket.RetentionPolicy,
    json_name: "retentionPolicy"

  field :iam_config, 23, type: Google.Storage.V2.Bucket.IamConfig, json_name: "iamConfig"
  field :satisfies_pzs, 25, type: :bool, json_name: "satisfiesPzs"

  field :custom_placement_config, 26,
    type: Google.Storage.V2.Bucket.CustomPlacementConfig,
    json_name: "customPlacementConfig"

  field :autoclass, 28, type: Google.Storage.V2.Bucket.Autoclass
end

defmodule Google.Storage.V2.BucketAccessControl do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :role, 1, type: :string
  field :id, 2, type: :string
  field :entity, 3, type: :string
  field :entity_alt, 9, type: :string, json_name: "entityAlt", deprecated: false
  field :entity_id, 4, type: :string, json_name: "entityId"
  field :etag, 8, type: :string
  field :email, 5, type: :string
  field :domain, 6, type: :string
  field :project_team, 7, type: Google.Storage.V2.ProjectTeam, json_name: "projectTeam"
end

defmodule Google.Storage.V2.ChecksummedData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :crc32c, 2, proto3_optional: true, type: :fixed32
end

defmodule Google.Storage.V2.ObjectChecksums do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :crc32c, 1, proto3_optional: true, type: :fixed32
  field :md5_hash, 2, type: :bytes, json_name: "md5Hash"
end

defmodule Google.Storage.V2.HmacKeyMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :access_id, 2, type: :string, json_name: "accessId", deprecated: false
  field :project, 3, type: :string, deprecated: false

  field :service_account_email, 4,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false

  field :state, 5, type: :string

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 8, type: :string
end

defmodule Google.Storage.V2.Notification.CustomAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V2.Notification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :topic, 2, type: :string, deprecated: false
  field :etag, 7, type: :string
  field :event_types, 3, repeated: true, type: :string, json_name: "eventTypes"

  field :custom_attributes, 4,
    repeated: true,
    type: Google.Storage.V2.Notification.CustomAttributesEntry,
    json_name: "customAttributes",
    map: true

  field :object_name_prefix, 5, type: :string, json_name: "objectNamePrefix"
  field :payload_format, 6, type: :string, json_name: "payloadFormat", deprecated: false
end

defmodule Google.Storage.V2.CustomerEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :encryption_algorithm, 1, type: :string, json_name: "encryptionAlgorithm"
  field :key_sha256_bytes, 3, type: :bytes, json_name: "keySha256Bytes"
end

defmodule Google.Storage.V2.Object.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V2.Object do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :bucket, 2, type: :string, deprecated: false
  field :etag, 27, type: :string
  field :generation, 3, type: :int64, deprecated: false
  field :metageneration, 4, type: :int64, deprecated: false
  field :storage_class, 5, type: :string, json_name: "storageClass"
  field :size, 6, type: :int64, deprecated: false
  field :content_encoding, 7, type: :string, json_name: "contentEncoding"
  field :content_disposition, 8, type: :string, json_name: "contentDisposition"
  field :cache_control, 9, type: :string, json_name: "cacheControl"
  field :acl, 10, repeated: true, type: Google.Storage.V2.ObjectAccessControl
  field :content_language, 11, type: :string, json_name: "contentLanguage"

  field :delete_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :content_type, 13, type: :string, json_name: "contentType"

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

  field :temporary_hold, 20, type: :bool, json_name: "temporaryHold"

  field :retention_expire_time, 21,
    type: Google.Protobuf.Timestamp,
    json_name: "retentionExpireTime"

  field :metadata, 22, repeated: true, type: Google.Storage.V2.Object.MetadataEntry, map: true
  field :event_based_hold, 23, proto3_optional: true, type: :bool, json_name: "eventBasedHold"
  field :owner, 24, type: Google.Storage.V2.Owner, deprecated: false

  field :customer_encryption, 25,
    type: Google.Storage.V2.CustomerEncryption,
    json_name: "customerEncryption"

  field :custom_time, 26, type: Google.Protobuf.Timestamp, json_name: "customTime"
end

defmodule Google.Storage.V2.ObjectAccessControl do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :role, 1, type: :string
  field :id, 2, type: :string
  field :entity, 3, type: :string
  field :entity_alt, 9, type: :string, json_name: "entityAlt", deprecated: false
  field :entity_id, 4, type: :string, json_name: "entityId"
  field :etag, 8, type: :string
  field :email, 5, type: :string
  field :domain, 6, type: :string
  field :project_team, 7, type: Google.Storage.V2.ProjectTeam, json_name: "projectTeam"
end

defmodule Google.Storage.V2.ListObjectsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :objects, 1, repeated: true, type: Google.Storage.V2.Object
  field :prefixes, 2, repeated: true, type: :string
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V2.ProjectTeam do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_number, 1, type: :string, json_name: "projectNumber"
  field :team, 2, type: :string
end

defmodule Google.Storage.V2.ServiceAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :email_address, 1, type: :string, json_name: "emailAddress"
end

defmodule Google.Storage.V2.Owner do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entity, 1, type: :string
  field :entity_id, 2, type: :string, json_name: "entityId"
end

defmodule Google.Storage.V2.ContentRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
  field :complete_length, 3, type: :int64, json_name: "completeLength"
end

defmodule Google.Storage.V2.Storage.Service do
  @moduledoc false
  use GRPC.Service, name: "google.storage.v2.Storage", protoc_gen_elixir_version: "0.11.0"

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

  rpc :DeleteNotification, Google.Storage.V2.DeleteNotificationRequest, Google.Protobuf.Empty

  rpc :GetNotification, Google.Storage.V2.GetNotificationRequest, Google.Storage.V2.Notification

  rpc :CreateNotification,
      Google.Storage.V2.CreateNotificationRequest,
      Google.Storage.V2.Notification

  rpc :ListNotifications,
      Google.Storage.V2.ListNotificationsRequest,
      Google.Storage.V2.ListNotificationsResponse

  rpc :ComposeObject, Google.Storage.V2.ComposeObjectRequest, Google.Storage.V2.Object

  rpc :DeleteObject, Google.Storage.V2.DeleteObjectRequest, Google.Protobuf.Empty

  rpc :CancelResumableWrite,
      Google.Storage.V2.CancelResumableWriteRequest,
      Google.Storage.V2.CancelResumableWriteResponse

  rpc :GetObject, Google.Storage.V2.GetObjectRequest, Google.Storage.V2.Object

  rpc :ReadObject,
      Google.Storage.V2.ReadObjectRequest,
      stream(Google.Storage.V2.ReadObjectResponse)

  rpc :UpdateObject, Google.Storage.V2.UpdateObjectRequest, Google.Storage.V2.Object

  rpc :WriteObject,
      stream(Google.Storage.V2.WriteObjectRequest),
      Google.Storage.V2.WriteObjectResponse

  rpc :ListObjects, Google.Storage.V2.ListObjectsRequest, Google.Storage.V2.ListObjectsResponse

  rpc :RewriteObject, Google.Storage.V2.RewriteObjectRequest, Google.Storage.V2.RewriteResponse

  rpc :StartResumableWrite,
      Google.Storage.V2.StartResumableWriteRequest,
      Google.Storage.V2.StartResumableWriteResponse

  rpc :QueryWriteStatus,
      Google.Storage.V2.QueryWriteStatusRequest,
      Google.Storage.V2.QueryWriteStatusResponse

  rpc :GetServiceAccount,
      Google.Storage.V2.GetServiceAccountRequest,
      Google.Storage.V2.ServiceAccount

  rpc :CreateHmacKey,
      Google.Storage.V2.CreateHmacKeyRequest,
      Google.Storage.V2.CreateHmacKeyResponse

  rpc :DeleteHmacKey, Google.Storage.V2.DeleteHmacKeyRequest, Google.Protobuf.Empty

  rpc :GetHmacKey, Google.Storage.V2.GetHmacKeyRequest, Google.Storage.V2.HmacKeyMetadata

  rpc :ListHmacKeys, Google.Storage.V2.ListHmacKeysRequest, Google.Storage.V2.ListHmacKeysResponse

  rpc :UpdateHmacKey, Google.Storage.V2.UpdateHmacKeyRequest, Google.Storage.V2.HmacKeyMetadata
end

defmodule Google.Storage.V2.Storage.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Storage.V2.Storage.Service
end