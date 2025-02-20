defmodule Google.Storage.V1.Bucket.IamConfiguration.PublicAccessPrevention do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PUBLIC_ACCESS_PREVENTION_UNSPECIFIED, 0
  field :ENFORCED, 1
  field :INHERITED, 2
end

defmodule Google.Storage.V1.CommonEnums.Projection do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PROJECTION_UNSPECIFIED, 0
  field :NO_ACL, 1
  field :FULL, 2
end

defmodule Google.Storage.V1.CommonEnums.PredefinedBucketAcl do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PREDEFINED_BUCKET_ACL_UNSPECIFIED, 0
  field :BUCKET_ACL_AUTHENTICATED_READ, 1
  field :BUCKET_ACL_PRIVATE, 2
  field :BUCKET_ACL_PROJECT_PRIVATE, 3
  field :BUCKET_ACL_PUBLIC_READ, 4
  field :BUCKET_ACL_PUBLIC_READ_WRITE, 5
end

defmodule Google.Storage.V1.CommonEnums.PredefinedObjectAcl do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PREDEFINED_OBJECT_ACL_UNSPECIFIED, 0
  field :OBJECT_ACL_AUTHENTICATED_READ, 1
  field :OBJECT_ACL_BUCKET_OWNER_FULL_CONTROL, 2
  field :OBJECT_ACL_BUCKET_OWNER_READ, 3
  field :OBJECT_ACL_PRIVATE, 4
  field :OBJECT_ACL_PROJECT_PRIVATE, 5
  field :OBJECT_ACL_PUBLIC_READ, 6
end

defmodule Google.Storage.V1.Bucket.Billing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :requester_pays, 1, type: :bool, json_name: "requesterPays"
end

defmodule Google.Storage.V1.Bucket.Cors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :origin, 1, repeated: true, type: :string
  field :method, 2, repeated: true, type: :string
  field :response_header, 3, repeated: true, type: :string, json_name: "responseHeader"
  field :max_age_seconds, 4, type: :int32, json_name: "maxAgeSeconds"
end

defmodule Google.Storage.V1.Bucket.Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :default_kms_key_name, 1, type: :string, json_name: "defaultKmsKeyName"
end

defmodule Google.Storage.V1.Bucket.IamConfiguration.UniformBucketLevelAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
  field :locked_time, 2, type: Google.Protobuf.Timestamp, json_name: "lockedTime"
end

defmodule Google.Storage.V1.Bucket.IamConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uniform_bucket_level_access, 1,
    type: Google.Storage.V1.Bucket.IamConfiguration.UniformBucketLevelAccess,
    json_name: "uniformBucketLevelAccess"

  field :public_access_prevention, 2,
    type: Google.Storage.V1.Bucket.IamConfiguration.PublicAccessPrevention,
    json_name: "publicAccessPrevention",
    enum: true
end

defmodule Google.Storage.V1.Bucket.Lifecycle.Rule.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: :string
  field :storage_class, 2, type: :string, json_name: "storageClass"
end

defmodule Google.Storage.V1.Bucket.Lifecycle.Rule.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :age, 1, type: :int32
  field :created_before, 2, type: Google.Protobuf.Timestamp, json_name: "createdBefore"
  field :is_live, 3, type: Google.Protobuf.BoolValue, json_name: "isLive"
  field :num_newer_versions, 4, type: :int32, json_name: "numNewerVersions"
  field :matches_storage_class, 5, repeated: true, type: :string, json_name: "matchesStorageClass"
  field :matches_pattern, 6, type: :string, json_name: "matchesPattern"
  field :days_since_custom_time, 7, type: :int32, json_name: "daysSinceCustomTime"
  field :custom_time_before, 8, type: Google.Protobuf.Timestamp, json_name: "customTimeBefore"
  field :days_since_noncurrent_time, 9, type: :int32, json_name: "daysSinceNoncurrentTime"

  field :noncurrent_time_before, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "noncurrentTimeBefore"

  field :matches_prefix, 11, repeated: true, type: :string, json_name: "matchesPrefix"
  field :matches_suffix, 12, repeated: true, type: :string, json_name: "matchesSuffix"
end

defmodule Google.Storage.V1.Bucket.Lifecycle.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :action, 1, type: Google.Storage.V1.Bucket.Lifecycle.Rule.Action
  field :condition, 2, type: Google.Storage.V1.Bucket.Lifecycle.Rule.Condition
end

defmodule Google.Storage.V1.Bucket.Lifecycle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rule, 1, repeated: true, type: Google.Storage.V1.Bucket.Lifecycle.Rule
end

defmodule Google.Storage.V1.Bucket.Logging do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :log_bucket, 1, type: :string, json_name: "logBucket"
  field :log_object_prefix, 2, type: :string, json_name: "logObjectPrefix"
end

defmodule Google.Storage.V1.Bucket.RetentionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :effective_time, 1, type: Google.Protobuf.Timestamp, json_name: "effectiveTime"
  field :is_locked, 2, type: :bool, json_name: "isLocked"
  field :retention_period, 3, type: :int64, json_name: "retentionPeriod"
end

defmodule Google.Storage.V1.Bucket.Versioning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Storage.V1.Bucket.Website do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :main_page_suffix, 1, type: :string, json_name: "mainPageSuffix"
  field :not_found_page, 2, type: :string, json_name: "notFoundPage"
end

defmodule Google.Storage.V1.Bucket.Autoclass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
  field :toggle_time, 2, type: Google.Protobuf.Timestamp, json_name: "toggleTime"
end

defmodule Google.Storage.V1.Bucket.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V1.Bucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acl, 1, repeated: true, type: Google.Storage.V1.BucketAccessControl

  field :default_object_acl, 2,
    repeated: true,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "defaultObjectAcl"

  field :lifecycle, 3, type: Google.Storage.V1.Bucket.Lifecycle
  field :time_created, 4, type: Google.Protobuf.Timestamp, json_name: "timeCreated"
  field :id, 5, type: :string
  field :name, 6, type: :string
  field :project_number, 7, type: :int64, json_name: "projectNumber"
  field :metageneration, 8, type: :int64
  field :cors, 9, repeated: true, type: Google.Storage.V1.Bucket.Cors
  field :location, 10, type: :string
  field :storage_class, 11, type: :string, json_name: "storageClass"
  field :etag, 12, type: :string
  field :updated, 13, type: Google.Protobuf.Timestamp
  field :default_event_based_hold, 14, type: :bool, json_name: "defaultEventBasedHold"
  field :labels, 15, repeated: true, type: Google.Storage.V1.Bucket.LabelsEntry, map: true
  field :website, 16, type: Google.Storage.V1.Bucket.Website
  field :versioning, 17, type: Google.Storage.V1.Bucket.Versioning
  field :logging, 18, type: Google.Storage.V1.Bucket.Logging
  field :owner, 19, type: Google.Storage.V1.Owner
  field :encryption, 20, type: Google.Storage.V1.Bucket.Encryption
  field :billing, 21, type: Google.Storage.V1.Bucket.Billing

  field :retention_policy, 22,
    type: Google.Storage.V1.Bucket.RetentionPolicy,
    json_name: "retentionPolicy"

  field :location_type, 23, type: :string, json_name: "locationType"

  field :iam_configuration, 24,
    type: Google.Storage.V1.Bucket.IamConfiguration,
    json_name: "iamConfiguration"

  field :zone_affinity, 25,
    repeated: true,
    type: :string,
    json_name: "zoneAffinity",
    deprecated: true

  field :satisfies_pzs, 26, type: :bool, json_name: "satisfiesPzs"
  field :autoclass, 28, type: Google.Storage.V1.Bucket.Autoclass
end

defmodule Google.Storage.V1.BucketAccessControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :role, 1, type: :string
  field :etag, 2, type: :string
  field :id, 3, type: :string
  field :bucket, 4, type: :string
  field :entity, 6, type: :string
  field :entity_id, 7, type: :string, json_name: "entityId"
  field :email, 8, type: :string
  field :domain, 9, type: :string
  field :project_team, 10, type: Google.Storage.V1.ProjectTeam, json_name: "projectTeam"
end

defmodule Google.Storage.V1.ListBucketAccessControlsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Storage.V1.BucketAccessControl
end

defmodule Google.Storage.V1.ListBucketsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Storage.V1.Bucket
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V1.Channel.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V1.Channel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :resource_id, 2, type: :string, json_name: "resourceId"
  field :resource_uri, 3, type: :string, json_name: "resourceUri"
  field :token, 4, type: :string
  field :expiration, 5, type: Google.Protobuf.Timestamp
  field :type, 6, type: :string
  field :address, 7, type: :string
  field :params, 8, repeated: true, type: Google.Storage.V1.Channel.ParamsEntry, map: true
  field :payload, 9, type: :bool
end

defmodule Google.Storage.V1.ListChannelsResponse.Items do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId"
  field :resource_id, 2, type: :string, json_name: "resourceId"
  field :push_url, 3, type: :string, json_name: "pushUrl"
  field :subscriber_email, 4, type: :string, json_name: "subscriberEmail"
  field :creation_time, 5, type: Google.Protobuf.Timestamp, json_name: "creationTime"
end

defmodule Google.Storage.V1.ListChannelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Storage.V1.ListChannelsResponse.Items
end

defmodule Google.Storage.V1.ChecksummedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 1, type: :bytes
  field :crc32c, 2, type: Google.Protobuf.UInt32Value
end

defmodule Google.Storage.V1.ObjectChecksums do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :crc32c, 1, type: Google.Protobuf.UInt32Value
  field :md5_hash, 2, type: :string, json_name: "md5Hash"
end

defmodule Google.Storage.V1.CommonEnums do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Storage.V1.ContentRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
  field :complete_length, 3, type: :int64, json_name: "completeLength"
end

defmodule Google.Storage.V1.HmacKeyMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :access_id, 2, type: :string, json_name: "accessId"
  field :project_id, 3, type: :string, json_name: "projectId"
  field :service_account_email, 4, type: :string, json_name: "serviceAccountEmail"
  field :state, 5, type: :string
  field :time_created, 6, type: Google.Protobuf.Timestamp, json_name: "timeCreated"
  field :updated, 7, type: Google.Protobuf.Timestamp
  field :etag, 8, type: :string
end

defmodule Google.Storage.V1.Notification.CustomAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V1.Notification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :topic, 1, type: :string
  field :event_types, 2, repeated: true, type: :string, json_name: "eventTypes"

  field :custom_attributes, 3,
    repeated: true,
    type: Google.Storage.V1.Notification.CustomAttributesEntry,
    json_name: "customAttributes",
    map: true

  field :etag, 4, type: :string
  field :object_name_prefix, 5, type: :string, json_name: "objectNamePrefix"
  field :payload_format, 6, type: :string, json_name: "payloadFormat"
  field :id, 7, type: :string
end

defmodule Google.Storage.V1.ListNotificationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Storage.V1.Notification
end

defmodule Google.Storage.V1.Object.CustomerEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encryption_algorithm, 1, type: :string, json_name: "encryptionAlgorithm"
  field :key_sha256, 2, type: :string, json_name: "keySha256"
end

defmodule Google.Storage.V1.Object.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Storage.V1.Object do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content_encoding, 1, type: :string, json_name: "contentEncoding"
  field :content_disposition, 2, type: :string, json_name: "contentDisposition"
  field :cache_control, 3, type: :string, json_name: "cacheControl"
  field :acl, 4, repeated: true, type: Google.Storage.V1.ObjectAccessControl
  field :content_language, 5, type: :string, json_name: "contentLanguage"
  field :metageneration, 6, type: :int64
  field :time_deleted, 7, type: Google.Protobuf.Timestamp, json_name: "timeDeleted"
  field :content_type, 8, type: :string, json_name: "contentType"
  field :size, 9, type: :int64
  field :time_created, 10, type: Google.Protobuf.Timestamp, json_name: "timeCreated"
  field :crc32c, 11, type: Google.Protobuf.UInt32Value
  field :component_count, 12, type: :int32, json_name: "componentCount"
  field :md5_hash, 13, type: :string, json_name: "md5Hash"
  field :etag, 14, type: :string
  field :updated, 15, type: Google.Protobuf.Timestamp
  field :storage_class, 16, type: :string, json_name: "storageClass"
  field :kms_key_name, 17, type: :string, json_name: "kmsKeyName"

  field :time_storage_class_updated, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "timeStorageClassUpdated"

  field :temporary_hold, 19, type: :bool, json_name: "temporaryHold"

  field :retention_expiration_time, 20,
    type: Google.Protobuf.Timestamp,
    json_name: "retentionExpirationTime"

  field :metadata, 21, repeated: true, type: Google.Storage.V1.Object.MetadataEntry, map: true
  field :event_based_hold, 29, type: Google.Protobuf.BoolValue, json_name: "eventBasedHold"
  field :name, 23, type: :string
  field :id, 24, type: :string
  field :bucket, 25, type: :string
  field :generation, 26, type: :int64
  field :owner, 27, type: Google.Storage.V1.Owner

  field :customer_encryption, 28,
    type: Google.Storage.V1.Object.CustomerEncryption,
    json_name: "customerEncryption"

  field :custom_time, 30, type: Google.Protobuf.Timestamp, json_name: "customTime"
end

defmodule Google.Storage.V1.ObjectAccessControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :role, 1, type: :string
  field :etag, 2, type: :string
  field :id, 3, type: :string
  field :bucket, 4, type: :string
  field :object, 5, type: :string
  field :generation, 6, type: :int64
  field :entity, 7, type: :string
  field :entity_id, 8, type: :string, json_name: "entityId"
  field :email, 9, type: :string
  field :domain, 10, type: :string
  field :project_team, 11, type: Google.Storage.V1.ProjectTeam, json_name: "projectTeam"
end

defmodule Google.Storage.V1.ListObjectAccessControlsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Storage.V1.ObjectAccessControl
end

defmodule Google.Storage.V1.ListObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :prefixes, 1, repeated: true, type: :string
  field :items, 2, repeated: true, type: Google.Storage.V1.Object
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.V1.ProjectTeam do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_number, 1, type: :string, json_name: "projectNumber"
  field :team, 2, type: :string
end

defmodule Google.Storage.V1.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :email_address, 1, type: :string, json_name: "emailAddress"
end

defmodule Google.Storage.V1.Owner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity, 1, type: :string
  field :entity_id, 2, type: :string, json_name: "entityId"
end
