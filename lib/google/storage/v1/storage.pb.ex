defmodule Google.Storage.V1.DeleteBucketAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetBucketAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.InsertBucketAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :bucket_access_control, 3,
    type: Google.Storage.V1.BucketAccessControl,
    json_name: "bucketAccessControl"

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListBucketAccessControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.PatchBucketAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :bucket_access_control, 4,
    type: Google.Storage.V1.BucketAccessControl,
    json_name: "bucketAccessControl"

  field :update_mask, 5, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.UpdateBucketAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :bucket_access_control, 4,
    type: Google.Storage.V1.BucketAccessControl,
    json_name: "bucketAccessControl"

  field :common_request_params, 5,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.DeleteBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :common_request_params, 5,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :projection, 4, type: Google.Storage.V1.CommonEnums.Projection, enum: true

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.InsertBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :predefined_acl, 1,
    type: Google.Storage.V1.CommonEnums.PredefinedBucketAcl,
    json_name: "predefinedAcl",
    enum: true

  field :predefined_default_object_acl, 2,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "predefinedDefaultObjectAcl",
    enum: true

  field :project, 3, type: :string, deprecated: false
  field :projection, 4, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :bucket, 6, type: Google.Storage.V1.Bucket

  field :common_request_params, 7,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListChannelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListBucketsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_results, 1, type: :int32, json_name: "maxResults"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :prefix, 3, type: :string
  field :project, 4, type: :string, deprecated: false
  field :projection, 5, type: Google.Storage.V1.CommonEnums.Projection, enum: true

  field :common_request_params, 7,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.LockRetentionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :if_metageneration_match, 2, type: :int64, json_name: "ifMetagenerationMatch"

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.PatchBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 4,
    type: Google.Storage.V1.CommonEnums.PredefinedBucketAcl,
    json_name: "predefinedAcl",
    enum: true

  field :predefined_default_object_acl, 5,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "predefinedDefaultObjectAcl",
    enum: true

  field :projection, 6, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 8, type: Google.Storage.V1.Bucket
  field :update_mask, 9, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :common_request_params, 10,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.UpdateBucketRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 4,
    type: Google.Storage.V1.CommonEnums.PredefinedBucketAcl,
    json_name: "predefinedAcl",
    enum: true

  field :predefined_default_object_acl, 5,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "predefinedDefaultObjectAcl",
    enum: true

  field :projection, 6, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 8, type: Google.Storage.V1.Bucket

  field :common_request_params, 9,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.StopChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :channel, 1, type: Google.Storage.V1.Channel

  field :common_request_params, 2,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.DeleteDefaultObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetDefaultObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.InsertDefaultObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :object_access_control, 3,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "objectAccessControl"

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListDefaultObjectAccessControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :if_metageneration_match, 2,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :common_request_params, 5,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.PatchDefaultObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :object_access_control, 4,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "objectAccessControl"

  field :update_mask, 5, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.UpdateDefaultObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false

  field :object_access_control, 4,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "objectAccessControl"

  field :common_request_params, 5,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.DeleteNotificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :notification, 2, type: :string, deprecated: false

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetNotificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :notification, 2, type: :string, deprecated: false

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.InsertNotificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :notification, 3, type: Google.Storage.V1.Notification

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListNotificationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.DeleteObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false
  field :object, 3, type: :string, deprecated: false
  field :generation, 4, type: :int64

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false
  field :object, 3, type: :string, deprecated: false
  field :generation, 4, type: :int64

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.InsertObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64

  field :object_access_control, 5,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "objectAccessControl"

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListObjectAccessControlsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64

  field :common_request_params, 5,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.PatchObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false
  field :object, 3, type: :string, deprecated: false
  field :generation, 4, type: :int64

  field :object_access_control, 5,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "objectAccessControl"

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"

  field :update_mask, 7, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Storage.V1.UpdateObjectAccessControlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :entity, 2, type: :string, deprecated: false
  field :object, 3, type: :string, deprecated: false
  field :generation, 4, type: :int64

  field :object_access_control, 6,
    type: Google.Storage.V1.ObjectAccessControl,
    json_name: "objectAccessControl"

  field :common_request_params, 7,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"

  field :update_mask, 8, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Storage.V1.ComposeObjectRequest.SourceObjects.ObjectPreconditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :if_generation_match, 1, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"
end

defmodule Google.Storage.V1.ComposeObjectRequest.SourceObjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :generation, 2, type: :int64

  field :object_preconditions, 3,
    type: Google.Storage.V1.ComposeObjectRequest.SourceObjects.ObjectPreconditions,
    json_name: "objectPreconditions"
end

defmodule Google.Storage.V1.ComposeObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :destination_bucket, 1, type: :string, json_name: "destinationBucket", deprecated: false
  field :destination_object, 2, type: :string, json_name: "destinationObject", deprecated: false

  field :destination_predefined_acl, 3,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "destinationPredefinedAcl",
    enum: true

  field :destination, 11, type: Google.Storage.V1.Object

  field :source_objects, 12,
    repeated: true,
    type: Google.Storage.V1.ComposeObjectRequest.SourceObjects,
    json_name: "sourceObjects"

  field :if_generation_match, 4, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_metageneration_match, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :kms_key_name, 6, type: :string, json_name: "kmsKeyName"

  field :common_object_request_params, 9,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 10,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.CopyObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :destination_bucket, 1, type: :string, json_name: "destinationBucket", deprecated: false
  field :destination_object, 2, type: :string, json_name: "destinationObject", deprecated: false

  field :destination_predefined_acl, 3,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "destinationPredefinedAcl",
    enum: true

  field :if_generation_match, 4, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :if_source_generation_match, 8,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceGenerationMatch"

  field :if_source_generation_not_match, 9,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceGenerationNotMatch"

  field :if_source_metageneration_match, 10,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceMetagenerationMatch"

  field :if_source_metageneration_not_match, 11,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceMetagenerationNotMatch"

  field :projection, 12, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :source_bucket, 13, type: :string, json_name: "sourceBucket", deprecated: false
  field :source_object, 14, type: :string, json_name: "sourceObject", deprecated: false
  field :source_generation, 15, type: :int64, json_name: "sourceGeneration"
  field :destination, 17, type: Google.Storage.V1.Object
  field :destination_kms_key_name, 20, type: :string, json_name: "destinationKmsKeyName"

  field :common_object_request_params, 18,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 19,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.DeleteObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :upload_id, 3, type: :string, json_name: "uploadId"
  field :generation, 4, type: :int64
  field :if_generation_match, 5, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 8,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :common_object_request_params, 10,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 11,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetObjectMediaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :read_offset, 4, type: :int64, json_name: "readOffset"
  field :read_limit, 5, type: :int64, json_name: "readLimit"
  field :if_generation_match, 6, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 8,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 9,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :common_object_request_params, 11,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 12,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64
  field :if_generation_match, 4, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :projection, 8, type: Google.Storage.V1.CommonEnums.Projection, enum: true

  field :common_object_request_params, 10,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 11,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetObjectMediaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :checksummed_data, 1,
    type: Google.Storage.V1.ChecksummedData,
    json_name: "checksummedData"

  field :object_checksums, 2,
    type: Google.Storage.V1.ObjectChecksums,
    json_name: "objectChecksums"

  field :content_range, 3, type: Google.Storage.V1.ContentRange, json_name: "contentRange"
  field :metadata, 4, type: Google.Storage.V1.Object
end

defmodule Google.Storage.V1.InsertObjectSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource, 1, type: Google.Storage.V1.Object

  field :predefined_acl, 2,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "predefinedAcl",
    enum: true

  field :if_generation_match, 3, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 4,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :projection, 7, type: Google.Storage.V1.CommonEnums.Projection, enum: true
end

defmodule Google.Storage.V1.InsertObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :first_message, 0

  oneof :data, 1

  field :upload_id, 1, type: :string, json_name: "uploadId", oneof: 0

  field :insert_object_spec, 2,
    type: Google.Storage.V1.InsertObjectSpec,
    json_name: "insertObjectSpec",
    oneof: 0

  field :write_offset, 3, type: :int64, json_name: "writeOffset", deprecated: false

  field :checksummed_data, 4,
    type: Google.Storage.V1.ChecksummedData,
    json_name: "checksummedData",
    oneof: 1

  field :reference, 5, type: Google.Storage.V1.GetObjectMediaRequest, oneof: 1

  field :object_checksums, 6,
    type: Google.Storage.V1.ObjectChecksums,
    json_name: "objectChecksums"

  field :finish_write, 7, type: :bool, json_name: "finishWrite"

  field :common_object_request_params, 8,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 9,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :delimiter, 2, type: :string
  field :include_trailing_delimiter, 3, type: :bool, json_name: "includeTrailingDelimiter"
  field :max_results, 4, type: :int32, json_name: "maxResults"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :prefix, 6, type: :string
  field :projection, 7, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :versions, 9, type: :bool
  field :lexicographic_start, 11, type: :string, json_name: "lexicographicStart"
  field :lexicographic_end, 12, type: :string, json_name: "lexicographicEnd"

  field :common_request_params, 10,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.QueryWriteStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId", deprecated: false

  field :common_object_request_params, 2,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.QueryWriteStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :committed_size, 1, type: :int64, json_name: "committedSize"
  field :complete, 2, type: :bool
  field :resource, 3, type: Google.Storage.V1.Object
end

defmodule Google.Storage.V1.RewriteObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :destination_bucket, 1, type: :string, json_name: "destinationBucket", deprecated: false
  field :destination_object, 2, type: :string, json_name: "destinationObject", deprecated: false
  field :destination_kms_key_name, 3, type: :string, json_name: "destinationKmsKeyName"

  field :destination_predefined_acl, 4,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "destinationPredefinedAcl",
    enum: true

  field :if_generation_match, 5, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 8,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :if_source_generation_match, 9,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceGenerationMatch"

  field :if_source_generation_not_match, 10,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceGenerationNotMatch"

  field :if_source_metageneration_match, 11,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceMetagenerationMatch"

  field :if_source_metageneration_not_match, 12,
    type: Google.Protobuf.Int64Value,
    json_name: "ifSourceMetagenerationNotMatch"

  field :max_bytes_rewritten_per_call, 13, type: :int64, json_name: "maxBytesRewrittenPerCall"
  field :projection, 14, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :rewrite_token, 15, type: :string, json_name: "rewriteToken"
  field :source_bucket, 16, type: :string, json_name: "sourceBucket", deprecated: false
  field :source_object, 17, type: :string, json_name: "sourceObject", deprecated: false
  field :source_generation, 18, type: :int64, json_name: "sourceGeneration"
  field :object, 20, type: Google.Storage.V1.Object

  field :copy_source_encryption_algorithm, 21,
    type: :string,
    json_name: "copySourceEncryptionAlgorithm"

  field :copy_source_encryption_key, 22, type: :string, json_name: "copySourceEncryptionKey"

  field :copy_source_encryption_key_sha256, 23,
    type: :string,
    json_name: "copySourceEncryptionKeySha256"

  field :common_object_request_params, 24,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 25,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.RewriteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_bytes_rewritten, 1, type: :int64, json_name: "totalBytesRewritten"
  field :object_size, 2, type: :int64, json_name: "objectSize"
  field :done, 3, type: :bool
  field :rewrite_token, 4, type: :string, json_name: "rewriteToken"
  field :resource, 5, type: Google.Storage.V1.Object
end

defmodule Google.Storage.V1.StartResumableWriteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :insert_object_spec, 1,
    type: Google.Storage.V1.InsertObjectSpec,
    json_name: "insertObjectSpec"

  field :common_object_request_params, 3,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 4,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.StartResumableWriteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :upload_id, 1, type: :string, json_name: "uploadId"
end

defmodule Google.Storage.V1.PatchObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64
  field :if_generation_match, 4, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 8,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "predefinedAcl",
    enum: true

  field :projection, 9, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 11, type: Google.Storage.V1.Object
  field :update_mask, 12, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :common_object_request_params, 13,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 14,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.UpdateObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64
  field :if_generation_match, 4, type: Google.Protobuf.Int64Value, json_name: "ifGenerationMatch"

  field :if_generation_not_match, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ifGenerationNotMatch"

  field :if_metageneration_match, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "ifMetagenerationNotMatch"

  field :predefined_acl, 8,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    json_name: "predefinedAcl",
    enum: true

  field :projection, 9, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 11, type: Google.Storage.V1.Object

  field :common_object_request_params, 12,
    type: Google.Storage.V1.CommonObjectRequestParams,
    json_name: "commonObjectRequestParams"

  field :common_request_params, 13,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.WatchAllObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :versions, 2, type: :bool
  field :delimiter, 3, type: :string
  field :max_results, 4, type: :int32, json_name: "maxResults"
  field :prefix, 5, type: :string
  field :include_trailing_delimiter, 6, type: :bool, json_name: "includeTrailingDelimiter"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :projection, 8, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :channel, 10, type: Google.Storage.V1.Channel

  field :common_request_params, 11,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetProjectServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.CreateHmacKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :service_account_email, 2,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.CreateHmacKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metadata, 1, type: Google.Storage.V1.HmacKeyMetadata
  field :secret, 2, type: :string
end

defmodule Google.Storage.V1.DeleteHmacKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :access_id, 1, type: :string, json_name: "accessId", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetHmacKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :access_id, 1, type: :string, json_name: "accessId", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false

  field :common_request_params, 3,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListHmacKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :service_account_email, 2, type: :string, json_name: "serviceAccountEmail"
  field :show_deleted_keys, 3, type: :bool, json_name: "showDeletedKeys"
  field :max_results, 4, type: :int32, json_name: "maxResults"
  field :page_token, 5, type: :string, json_name: "pageToken"

  field :common_request_params, 6,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.ListHmacKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :next_page_token, 1, type: :string, json_name: "nextPageToken"
  field :items, 2, repeated: true, type: Google.Storage.V1.HmacKeyMetadata
end

defmodule Google.Storage.V1.UpdateHmacKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :access_id, 1, type: :string, json_name: "accessId", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
  field :metadata, 3, type: Google.Storage.V1.HmacKeyMetadata, deprecated: false

  field :common_request_params, 5,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.GetIamPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :iam_request, 1, type: Google.Iam.V1.GetIamPolicyRequest, json_name: "iamRequest"

  field :common_request_params, 2,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.SetIamPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :iam_request, 1, type: Google.Iam.V1.SetIamPolicyRequest, json_name: "iamRequest"

  field :common_request_params, 2,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.TestIamPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :iam_request, 1, type: Google.Iam.V1.TestIamPermissionsRequest, json_name: "iamRequest"

  field :common_request_params, 2,
    type: Google.Storage.V1.CommonRequestParams,
    json_name: "commonRequestParams"
end

defmodule Google.Storage.V1.CommonObjectRequestParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :encryption_algorithm, 1, type: :string, json_name: "encryptionAlgorithm"
  field :encryption_key, 2, type: :string, json_name: "encryptionKey"
  field :encryption_key_sha256, 3, type: :string, json_name: "encryptionKeySha256"
end

defmodule Google.Storage.V1.CommonRequestParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_project, 1, type: :string, json_name: "userProject", deprecated: false
  field :quota_user, 2, type: :string, json_name: "quotaUser"
  field :fields, 4, type: Google.Protobuf.FieldMask
end