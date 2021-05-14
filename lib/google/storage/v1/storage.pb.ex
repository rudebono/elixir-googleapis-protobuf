defmodule Google.Storage.V1.ServiceConstants.Values do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VALUES_UNSPECIFIED
          | :MAX_READ_CHUNK_BYTES
          | :MAX_WRITE_CHUNK_BYTES
          | :MAX_OBJECT_SIZE_MB
          | :MAX_CUSTOM_METADATA_FIELD_NAME_BYTES
          | :MAX_CUSTOM_METADATA_FIELD_VALUE_BYTES
          | :MAX_CUSTOM_METADATA_TOTAL_SIZE_BYTES
          | :MAX_BUCKET_METADATA_TOTAL_SIZE_BYTES
          | :MAX_NOTIFICATION_CONFIGS_PER_BUCKET
          | :MAX_LIFECYCLE_RULES_PER_BUCKET
          | :MAX_NOTIFICATION_CUSTOM_ATTRIBUTES
          | :MAX_NOTIFICATION_CUSTOM_ATTRIBUTE_KEY_LENGTH
          | :MAX_NOTIFICATION_CUSTOM_ATTRIBUTE_VALUE_LENGTH
          | :MAX_LABELS_ENTRIES_COUNT
          | :MAX_LABELS_KEY_VALUE_LENGTH
          | :MAX_LABELS_KEY_VALUE_BYTES
          | :MAX_OBJECT_IDS_PER_DELETE_OBJECTS_REQUEST
          | :SPLIT_TOKEN_MAX_VALID_DAYS

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

defmodule Google.Storage.V1.DeleteBucketAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetBucketAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.InsertBucketAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          bucket_access_control: Google.Storage.V1.BucketAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :bucket_access_control, :common_request_params]

  field :bucket, 1, type: :string
  field :bucket_access_control, 3, type: Google.Storage.V1.BucketAccessControl
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListBucketAccessControlsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :common_request_params]

  field :bucket, 1, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.PatchBucketAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          bucket_access_control: Google.Storage.V1.BucketAccessControl.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :bucket_access_control, :update_mask, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :bucket_access_control, 4, type: Google.Storage.V1.BucketAccessControl
  field :update_mask, 5, type: Google.Protobuf.FieldMask
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.UpdateBucketAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          bucket_access_control: Google.Storage.V1.BucketAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :bucket_access_control, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :bucket_access_control, 4, type: Google.Storage.V1.BucketAccessControl
  field :common_request_params, 5, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.DeleteBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :if_metageneration_match, 2, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 3, type: Google.Protobuf.Int64Value
  field :common_request_params, 5, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :projection,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :if_metageneration_match, 2, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 3, type: Google.Protobuf.Int64Value
  field :projection, 4, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.InsertBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predefined_acl: Google.Storage.V1.CommonEnums.PredefinedBucketAcl.t(),
          predefined_default_object_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          project: String.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          bucket: Google.Storage.V1.Bucket.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :predefined_acl,
    :predefined_default_object_acl,
    :project,
    :projection,
    :bucket,
    :common_request_params
  ]

  field :predefined_acl, 1, type: Google.Storage.V1.CommonEnums.PredefinedBucketAcl, enum: true

  field :predefined_default_object_acl, 2,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    enum: true

  field :project, 3, type: :string
  field :projection, 4, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :bucket, 6, type: Google.Storage.V1.Bucket
  field :common_request_params, 7, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListChannelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :common_request_params]

  field :bucket, 1, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListBucketsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_results: integer,
          page_token: String.t(),
          prefix: String.t(),
          project: String.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:max_results, :page_token, :prefix, :project, :projection, :common_request_params]

  field :max_results, 1, type: :int32
  field :page_token, 2, type: :string
  field :prefix, 3, type: :string
  field :project, 4, type: :string
  field :projection, 5, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :common_request_params, 7, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.LockRetentionPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          if_metageneration_match: integer,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :if_metageneration_match, :common_request_params]

  field :bucket, 1, type: :string
  field :if_metageneration_match, 2, type: :int64
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.PatchBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          predefined_acl: Google.Storage.V1.CommonEnums.PredefinedBucketAcl.t(),
          predefined_default_object_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          metadata: Google.Storage.V1.Bucket.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :predefined_acl,
    :predefined_default_object_acl,
    :projection,
    :metadata,
    :update_mask,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :if_metageneration_match, 2, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 3, type: Google.Protobuf.Int64Value
  field :predefined_acl, 4, type: Google.Storage.V1.CommonEnums.PredefinedBucketAcl, enum: true

  field :predefined_default_object_acl, 5,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    enum: true

  field :projection, 6, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 8, type: Google.Storage.V1.Bucket
  field :update_mask, 9, type: Google.Protobuf.FieldMask
  field :common_request_params, 10, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.UpdateBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          predefined_acl: Google.Storage.V1.CommonEnums.PredefinedBucketAcl.t(),
          predefined_default_object_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          metadata: Google.Storage.V1.Bucket.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :predefined_acl,
    :predefined_default_object_acl,
    :projection,
    :metadata,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :if_metageneration_match, 2, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 3, type: Google.Protobuf.Int64Value
  field :predefined_acl, 4, type: Google.Storage.V1.CommonEnums.PredefinedBucketAcl, enum: true

  field :predefined_default_object_acl, 5,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    enum: true

  field :projection, 6, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 8, type: Google.Storage.V1.Bucket
  field :common_request_params, 9, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.StopChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Storage.V1.Channel.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:channel, :common_request_params]

  field :channel, 1, type: Google.Storage.V1.Channel
  field :common_request_params, 2, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.DeleteDefaultObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetDefaultObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.InsertDefaultObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object_access_control: Google.Storage.V1.ObjectAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :object_access_control, :common_request_params]

  field :bucket, 1, type: :string
  field :object_access_control, 3, type: Google.Storage.V1.ObjectAccessControl
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListDefaultObjectAccessControlsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :if_metageneration_match, 2, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 3, type: Google.Protobuf.Int64Value
  field :common_request_params, 5, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.PatchDefaultObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          object_access_control: Google.Storage.V1.ObjectAccessControl.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :object_access_control, :update_mask, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :object_access_control, 4, type: Google.Storage.V1.ObjectAccessControl
  field :update_mask, 5, type: Google.Protobuf.FieldMask
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.UpdateDefaultObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          object_access_control: Google.Storage.V1.ObjectAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :object_access_control, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :object_access_control, 4, type: Google.Storage.V1.ObjectAccessControl
  field :common_request_params, 5, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.DeleteNotificationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          notification: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :notification, :common_request_params]

  field :bucket, 1, type: :string
  field :notification, 2, type: :string
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetNotificationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          notification: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :notification, :common_request_params]

  field :bucket, 1, type: :string
  field :notification, 2, type: :string
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.InsertNotificationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          notification: Google.Storage.V1.Notification.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :notification, :common_request_params]

  field :bucket, 1, type: :string
  field :notification, 3, type: Google.Storage.V1.Notification
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListNotificationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :common_request_params]

  field :bucket, 1, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.DeleteObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          object: String.t(),
          generation: integer,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :object, :generation, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :object, 3, type: :string
  field :generation, 4, type: :int64
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          object: String.t(),
          generation: integer,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :entity, :object, :generation, :common_request_params]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :object, 3, type: :string
  field :generation, 4, type: :int64
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.InsertObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          object_access_control: Google.Storage.V1.ObjectAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :object, :generation, :object_access_control, :common_request_params]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :object_access_control, 5, type: Google.Storage.V1.ObjectAccessControl
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListObjectAccessControlsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:bucket, :object, :generation, :common_request_params]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :common_request_params, 5, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.PatchObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          object: String.t(),
          generation: integer,
          object_access_control: Google.Storage.V1.ObjectAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [
    :bucket,
    :entity,
    :object,
    :generation,
    :object_access_control,
    :common_request_params,
    :update_mask
  ]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :object, 3, type: :string
  field :generation, 4, type: :int64
  field :object_access_control, 5, type: Google.Storage.V1.ObjectAccessControl
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
  field :update_mask, 7, type: Google.Protobuf.FieldMask
end

defmodule Google.Storage.V1.UpdateObjectAccessControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          entity: String.t(),
          object: String.t(),
          generation: integer,
          object_access_control: Google.Storage.V1.ObjectAccessControl.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [
    :bucket,
    :entity,
    :object,
    :generation,
    :object_access_control,
    :common_request_params,
    :update_mask
  ]

  field :bucket, 1, type: :string
  field :entity, 2, type: :string
  field :object, 3, type: :string
  field :generation, 4, type: :int64
  field :object_access_control, 6, type: Google.Storage.V1.ObjectAccessControl
  field :common_request_params, 7, type: Google.Storage.V1.CommonRequestParams
  field :update_mask, 8, type: Google.Protobuf.FieldMask
end

defmodule Google.Storage.V1.ComposeObjectRequest.SourceObjects.ObjectPreconditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          if_generation_match: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:if_generation_match]

  field :if_generation_match, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Storage.V1.ComposeObjectRequest.SourceObjects do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          generation: integer,
          object_preconditions:
            Google.Storage.V1.ComposeObjectRequest.SourceObjects.ObjectPreconditions.t() | nil
        }

  defstruct [:name, :generation, :object_preconditions]

  field :name, 1, type: :string
  field :generation, 2, type: :int64

  field :object_preconditions, 3,
    type: Google.Storage.V1.ComposeObjectRequest.SourceObjects.ObjectPreconditions
end

defmodule Google.Storage.V1.ComposeObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_bucket: String.t(),
          destination_object: String.t(),
          destination_predefined_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          destination: Google.Storage.V1.Object.t() | nil,
          source_objects: [Google.Storage.V1.ComposeObjectRequest.SourceObjects.t()],
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          kms_key_name: String.t(),
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :destination_bucket,
    :destination_object,
    :destination_predefined_acl,
    :destination,
    :source_objects,
    :if_generation_match,
    :if_metageneration_match,
    :kms_key_name,
    :common_object_request_params,
    :common_request_params
  ]

  field :destination_bucket, 1, type: :string
  field :destination_object, 2, type: :string

  field :destination_predefined_acl, 3,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    enum: true

  field :destination, 11, type: Google.Storage.V1.Object

  field :source_objects, 12,
    repeated: true,
    type: Google.Storage.V1.ComposeObjectRequest.SourceObjects

  field :if_generation_match, 4, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 5, type: Google.Protobuf.Int64Value
  field :kms_key_name, 6, type: :string
  field :common_object_request_params, 9, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 10, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.CopyObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_bucket: String.t(),
          destination_object: String.t(),
          destination_predefined_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          source_bucket: String.t(),
          source_object: String.t(),
          source_generation: integer,
          destination: Google.Storage.V1.Object.t() | nil,
          destination_kms_key_name: String.t(),
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :destination_bucket,
    :destination_object,
    :destination_predefined_acl,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :if_source_generation_match,
    :if_source_generation_not_match,
    :if_source_metageneration_match,
    :if_source_metageneration_not_match,
    :projection,
    :source_bucket,
    :source_object,
    :source_generation,
    :destination,
    :destination_kms_key_name,
    :common_object_request_params,
    :common_request_params
  ]

  field :destination_bucket, 1, type: :string
  field :destination_object, 2, type: :string

  field :destination_predefined_acl, 3,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    enum: true

  field :if_generation_match, 4, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 5, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 6, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 7, type: Google.Protobuf.Int64Value
  field :if_source_generation_match, 8, type: Google.Protobuf.Int64Value
  field :if_source_generation_not_match, 9, type: Google.Protobuf.Int64Value
  field :if_source_metageneration_match, 10, type: Google.Protobuf.Int64Value
  field :if_source_metageneration_not_match, 11, type: Google.Protobuf.Int64Value
  field :projection, 12, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :source_bucket, 13, type: :string
  field :source_object, 14, type: :string
  field :source_generation, 15, type: :int64
  field :destination, 17, type: Google.Storage.V1.Object
  field :destination_kms_key_name, 20, type: :string
  field :common_object_request_params, 18, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 19, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.DeleteObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          upload_id: String.t(),
          generation: integer,
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :object,
    :upload_id,
    :generation,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :common_object_request_params,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :upload_id, 3, type: :string
  field :generation, 4, type: :int64
  field :if_generation_match, 5, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 6, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 7, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 8, type: Google.Protobuf.Int64Value
  field :common_object_request_params, 10, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 11, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetObjectMediaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          read_offset: integer,
          read_limit: integer,
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :object,
    :generation,
    :read_offset,
    :read_limit,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :common_object_request_params,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :read_offset, 4, type: :int64
  field :read_limit, 5, type: :int64
  field :if_generation_match, 6, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 7, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 8, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 9, type: Google.Protobuf.Int64Value
  field :common_object_request_params, 11, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 12, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :object,
    :generation,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :projection,
    :common_object_request_params,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :if_generation_match, 4, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 5, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 6, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 7, type: Google.Protobuf.Int64Value
  field :projection, 8, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :common_object_request_params, 10, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 11, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetObjectMediaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          checksummed_data: Google.Storage.V1.ChecksummedData.t() | nil,
          object_checksums: Google.Storage.V1.ObjectChecksums.t() | nil,
          content_range: Google.Storage.V1.ContentRange.t() | nil,
          metadata: Google.Storage.V1.Object.t() | nil
        }

  defstruct [:checksummed_data, :object_checksums, :content_range, :metadata]

  field :checksummed_data, 1, type: Google.Storage.V1.ChecksummedData
  field :object_checksums, 2, type: Google.Storage.V1.ObjectChecksums
  field :content_range, 3, type: Google.Storage.V1.ContentRange
  field :metadata, 4, type: Google.Storage.V1.Object
end

defmodule Google.Storage.V1.InsertObjectSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Storage.V1.Object.t() | nil,
          predefined_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          projection: Google.Storage.V1.CommonEnums.Projection.t()
        }

  defstruct [
    :resource,
    :predefined_acl,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :projection
  ]

  field :resource, 1, type: Google.Storage.V1.Object
  field :predefined_acl, 2, type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl, enum: true
  field :if_generation_match, 3, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 4, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 5, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 6, type: Google.Protobuf.Int64Value
  field :projection, 7, type: Google.Storage.V1.CommonEnums.Projection, enum: true
end

defmodule Google.Storage.V1.InsertObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_message: {atom, any},
          data: {atom, any},
          write_offset: integer,
          object_checksums: Google.Storage.V1.ObjectChecksums.t() | nil,
          finish_write: boolean,
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :first_message,
    :data,
    :write_offset,
    :object_checksums,
    :finish_write,
    :common_object_request_params,
    :common_request_params
  ]

  oneof :first_message, 0
  oneof :data, 1
  field :upload_id, 1, type: :string, oneof: 0
  field :insert_object_spec, 2, type: Google.Storage.V1.InsertObjectSpec, oneof: 0
  field :write_offset, 3, type: :int64
  field :checksummed_data, 4, type: Google.Storage.V1.ChecksummedData, oneof: 1
  field :reference, 5, type: Google.Storage.V1.GetObjectMediaRequest, oneof: 1
  field :object_checksums, 6, type: Google.Storage.V1.ObjectChecksums
  field :finish_write, 7, type: :bool
  field :common_object_request_params, 8, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 9, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListObjectsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          delimiter: String.t(),
          include_trailing_delimiter: boolean,
          max_results: integer,
          page_token: String.t(),
          prefix: String.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          versions: boolean,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :delimiter,
    :include_trailing_delimiter,
    :max_results,
    :page_token,
    :prefix,
    :projection,
    :versions,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :delimiter, 2, type: :string
  field :include_trailing_delimiter, 3, type: :bool
  field :max_results, 4, type: :int32
  field :page_token, 5, type: :string
  field :prefix, 6, type: :string
  field :projection, 7, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :versions, 9, type: :bool
  field :common_request_params, 10, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.QueryWriteStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upload_id: String.t(),
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:upload_id, :common_object_request_params, :common_request_params]

  field :upload_id, 1, type: :string
  field :common_object_request_params, 2, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.QueryWriteStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          committed_size: integer,
          complete: boolean
        }

  defstruct [:committed_size, :complete]

  field :committed_size, 1, type: :int64
  field :complete, 2, type: :bool
end

defmodule Google.Storage.V1.RewriteObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_bucket: String.t(),
          destination_object: String.t(),
          destination_kms_key_name: String.t(),
          destination_predefined_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_source_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          max_bytes_rewritten_per_call: integer,
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          rewrite_token: String.t(),
          source_bucket: String.t(),
          source_object: String.t(),
          source_generation: integer,
          object: Google.Storage.V1.Object.t() | nil,
          copy_source_encryption_algorithm: String.t(),
          copy_source_encryption_key: String.t(),
          copy_source_encryption_key_sha256: String.t(),
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :destination_bucket,
    :destination_object,
    :destination_kms_key_name,
    :destination_predefined_acl,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :if_source_generation_match,
    :if_source_generation_not_match,
    :if_source_metageneration_match,
    :if_source_metageneration_not_match,
    :max_bytes_rewritten_per_call,
    :projection,
    :rewrite_token,
    :source_bucket,
    :source_object,
    :source_generation,
    :object,
    :copy_source_encryption_algorithm,
    :copy_source_encryption_key,
    :copy_source_encryption_key_sha256,
    :common_object_request_params,
    :common_request_params
  ]

  field :destination_bucket, 1, type: :string
  field :destination_object, 2, type: :string
  field :destination_kms_key_name, 3, type: :string

  field :destination_predefined_acl, 4,
    type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl,
    enum: true

  field :if_generation_match, 5, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 6, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 7, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 8, type: Google.Protobuf.Int64Value
  field :if_source_generation_match, 9, type: Google.Protobuf.Int64Value
  field :if_source_generation_not_match, 10, type: Google.Protobuf.Int64Value
  field :if_source_metageneration_match, 11, type: Google.Protobuf.Int64Value
  field :if_source_metageneration_not_match, 12, type: Google.Protobuf.Int64Value
  field :max_bytes_rewritten_per_call, 13, type: :int64
  field :projection, 14, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :rewrite_token, 15, type: :string
  field :source_bucket, 16, type: :string
  field :source_object, 17, type: :string
  field :source_generation, 18, type: :int64
  field :object, 20, type: Google.Storage.V1.Object
  field :copy_source_encryption_algorithm, 21, type: :string
  field :copy_source_encryption_key, 22, type: :string
  field :copy_source_encryption_key_sha256, 23, type: :string
  field :common_object_request_params, 24, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 25, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.RewriteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_bytes_rewritten: integer,
          object_size: integer,
          done: boolean,
          rewrite_token: String.t(),
          resource: Google.Storage.V1.Object.t() | nil
        }

  defstruct [:total_bytes_rewritten, :object_size, :done, :rewrite_token, :resource]

  field :total_bytes_rewritten, 1, type: :int64
  field :object_size, 2, type: :int64
  field :done, 3, type: :bool
  field :rewrite_token, 4, type: :string
  field :resource, 5, type: Google.Storage.V1.Object
end

defmodule Google.Storage.V1.StartResumableWriteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          insert_object_spec: Google.Storage.V1.InsertObjectSpec.t() | nil,
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:insert_object_spec, :common_object_request_params, :common_request_params]

  field :insert_object_spec, 1, type: Google.Storage.V1.InsertObjectSpec
  field :common_object_request_params, 3, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 4, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.StartResumableWriteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upload_id: String.t()
        }

  defstruct [:upload_id]

  field :upload_id, 1, type: :string
end

defmodule Google.Storage.V1.PatchObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          predefined_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          metadata: Google.Storage.V1.Object.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :object,
    :generation,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :predefined_acl,
    :projection,
    :metadata,
    :update_mask,
    :common_object_request_params,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :if_generation_match, 4, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 5, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 6, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 7, type: Google.Protobuf.Int64Value
  field :predefined_acl, 8, type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl, enum: true
  field :projection, 9, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 11, type: Google.Storage.V1.Object
  field :update_mask, 12, type: Google.Protobuf.FieldMask
  field :common_object_request_params, 13, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 14, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.UpdateObjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          if_generation_match: Google.Protobuf.Int64Value.t() | nil,
          if_generation_not_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_match: Google.Protobuf.Int64Value.t() | nil,
          if_metageneration_not_match: Google.Protobuf.Int64Value.t() | nil,
          predefined_acl: Google.Storage.V1.CommonEnums.PredefinedObjectAcl.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          metadata: Google.Storage.V1.Object.t() | nil,
          common_object_request_params: Google.Storage.V1.CommonObjectRequestParams.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :object,
    :generation,
    :if_generation_match,
    :if_generation_not_match,
    :if_metageneration_match,
    :if_metageneration_not_match,
    :predefined_acl,
    :projection,
    :metadata,
    :common_object_request_params,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :if_generation_match, 4, type: Google.Protobuf.Int64Value
  field :if_generation_not_match, 5, type: Google.Protobuf.Int64Value
  field :if_metageneration_match, 6, type: Google.Protobuf.Int64Value
  field :if_metageneration_not_match, 7, type: Google.Protobuf.Int64Value
  field :predefined_acl, 8, type: Google.Storage.V1.CommonEnums.PredefinedObjectAcl, enum: true
  field :projection, 9, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :metadata, 11, type: Google.Storage.V1.Object
  field :common_object_request_params, 12, type: Google.Storage.V1.CommonObjectRequestParams
  field :common_request_params, 13, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.WatchAllObjectsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          versions: boolean,
          delimiter: String.t(),
          max_results: integer,
          prefix: String.t(),
          include_trailing_delimiter: boolean,
          page_token: String.t(),
          projection: Google.Storage.V1.CommonEnums.Projection.t(),
          channel: Google.Storage.V1.Channel.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :bucket,
    :versions,
    :delimiter,
    :max_results,
    :prefix,
    :include_trailing_delimiter,
    :page_token,
    :projection,
    :channel,
    :common_request_params
  ]

  field :bucket, 1, type: :string
  field :versions, 2, type: :bool
  field :delimiter, 3, type: :string
  field :max_results, 4, type: :int32
  field :prefix, 5, type: :string
  field :include_trailing_delimiter, 6, type: :bool
  field :page_token, 7, type: :string
  field :projection, 8, type: Google.Storage.V1.CommonEnums.Projection, enum: true
  field :channel, 10, type: Google.Storage.V1.Channel
  field :common_request_params, 11, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetProjectServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:project_id, :common_request_params]

  field :project_id, 1, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.CreateHmacKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          service_account_email: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:project_id, :service_account_email, :common_request_params]

  field :project_id, 1, type: :string
  field :service_account_email, 2, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.CreateHmacKeyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Storage.V1.HmacKeyMetadata.t() | nil,
          secret: String.t()
        }

  defstruct [:metadata, :secret]

  field :metadata, 1, type: Google.Storage.V1.HmacKeyMetadata
  field :secret, 2, type: :string
end

defmodule Google.Storage.V1.DeleteHmacKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_id: String.t(),
          project_id: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:access_id, :project_id, :common_request_params]

  field :access_id, 1, type: :string
  field :project_id, 2, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetHmacKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_id: String.t(),
          project_id: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:access_id, :project_id, :common_request_params]

  field :access_id, 1, type: :string
  field :project_id, 2, type: :string
  field :common_request_params, 3, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListHmacKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          service_account_email: String.t(),
          show_deleted_keys: boolean,
          max_results: integer,
          page_token: String.t(),
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [
    :project_id,
    :service_account_email,
    :show_deleted_keys,
    :max_results,
    :page_token,
    :common_request_params
  ]

  field :project_id, 1, type: :string
  field :service_account_email, 2, type: :string
  field :show_deleted_keys, 3, type: :bool
  field :max_results, 4, type: :int32
  field :page_token, 5, type: :string
  field :common_request_params, 6, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.ListHmacKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          next_page_token: String.t(),
          items: [Google.Storage.V1.HmacKeyMetadata.t()]
        }

  defstruct [:next_page_token, :items]

  field :next_page_token, 1, type: :string
  field :items, 2, repeated: true, type: Google.Storage.V1.HmacKeyMetadata
end

defmodule Google.Storage.V1.UpdateHmacKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_id: String.t(),
          project_id: String.t(),
          metadata: Google.Storage.V1.HmacKeyMetadata.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:access_id, :project_id, :metadata, :common_request_params]

  field :access_id, 1, type: :string
  field :project_id, 2, type: :string
  field :metadata, 3, type: Google.Storage.V1.HmacKeyMetadata
  field :common_request_params, 5, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.GetIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iam_request: Google.Iam.V1.GetIamPolicyRequest.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:iam_request, :common_request_params]

  field :iam_request, 1, type: Google.Iam.V1.GetIamPolicyRequest
  field :common_request_params, 2, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.SetIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iam_request: Google.Iam.V1.SetIamPolicyRequest.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:iam_request, :common_request_params]

  field :iam_request, 1, type: Google.Iam.V1.SetIamPolicyRequest
  field :common_request_params, 2, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.TestIamPermissionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iam_request: Google.Iam.V1.TestIamPermissionsRequest.t() | nil,
          common_request_params: Google.Storage.V1.CommonRequestParams.t() | nil
        }

  defstruct [:iam_request, :common_request_params]

  field :iam_request, 1, type: Google.Iam.V1.TestIamPermissionsRequest
  field :common_request_params, 2, type: Google.Storage.V1.CommonRequestParams
end

defmodule Google.Storage.V1.CommonObjectRequestParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_algorithm: String.t(),
          encryption_key: String.t(),
          encryption_key_sha256: String.t()
        }

  defstruct [:encryption_algorithm, :encryption_key, :encryption_key_sha256]

  field :encryption_algorithm, 1, type: :string
  field :encryption_key, 2, type: :string
  field :encryption_key_sha256, 3, type: :string
end

defmodule Google.Storage.V1.CommonRequestParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_project: String.t(),
          quota_user: String.t(),
          fields: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:user_project, :quota_user, :fields]

  field :user_project, 1, type: :string
  field :quota_user, 2, type: :string
  field :fields, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Storage.V1.ServiceConstants do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Storage.V1.Storage.Service do
  @moduledoc false
  use GRPC.Service, name: "google.storage.v1.Storage"

  rpc :DeleteBucketAccessControl,
      Google.Storage.V1.DeleteBucketAccessControlRequest,
      Google.Protobuf.Empty

  rpc :GetBucketAccessControl,
      Google.Storage.V1.GetBucketAccessControlRequest,
      Google.Storage.V1.BucketAccessControl

  rpc :InsertBucketAccessControl,
      Google.Storage.V1.InsertBucketAccessControlRequest,
      Google.Storage.V1.BucketAccessControl

  rpc :ListBucketAccessControls,
      Google.Storage.V1.ListBucketAccessControlsRequest,
      Google.Storage.V1.ListBucketAccessControlsResponse

  rpc :UpdateBucketAccessControl,
      Google.Storage.V1.UpdateBucketAccessControlRequest,
      Google.Storage.V1.BucketAccessControl

  rpc :PatchBucketAccessControl,
      Google.Storage.V1.PatchBucketAccessControlRequest,
      Google.Storage.V1.BucketAccessControl

  rpc :DeleteBucket, Google.Storage.V1.DeleteBucketRequest, Google.Protobuf.Empty

  rpc :GetBucket, Google.Storage.V1.GetBucketRequest, Google.Storage.V1.Bucket

  rpc :InsertBucket, Google.Storage.V1.InsertBucketRequest, Google.Storage.V1.Bucket

  rpc :ListChannels, Google.Storage.V1.ListChannelsRequest, Google.Storage.V1.ListChannelsResponse

  rpc :ListBuckets, Google.Storage.V1.ListBucketsRequest, Google.Storage.V1.ListBucketsResponse

  rpc :LockBucketRetentionPolicy,
      Google.Storage.V1.LockRetentionPolicyRequest,
      Google.Storage.V1.Bucket

  rpc :GetBucketIamPolicy, Google.Storage.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetBucketIamPolicy, Google.Storage.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestBucketIamPermissions,
      Google.Storage.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :PatchBucket, Google.Storage.V1.PatchBucketRequest, Google.Storage.V1.Bucket

  rpc :UpdateBucket, Google.Storage.V1.UpdateBucketRequest, Google.Storage.V1.Bucket

  rpc :StopChannel, Google.Storage.V1.StopChannelRequest, Google.Protobuf.Empty

  rpc :DeleteDefaultObjectAccessControl,
      Google.Storage.V1.DeleteDefaultObjectAccessControlRequest,
      Google.Protobuf.Empty

  rpc :GetDefaultObjectAccessControl,
      Google.Storage.V1.GetDefaultObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :InsertDefaultObjectAccessControl,
      Google.Storage.V1.InsertDefaultObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :ListDefaultObjectAccessControls,
      Google.Storage.V1.ListDefaultObjectAccessControlsRequest,
      Google.Storage.V1.ListObjectAccessControlsResponse

  rpc :PatchDefaultObjectAccessControl,
      Google.Storage.V1.PatchDefaultObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :UpdateDefaultObjectAccessControl,
      Google.Storage.V1.UpdateDefaultObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :DeleteNotification, Google.Storage.V1.DeleteNotificationRequest, Google.Protobuf.Empty

  rpc :GetNotification, Google.Storage.V1.GetNotificationRequest, Google.Storage.V1.Notification

  rpc :InsertNotification,
      Google.Storage.V1.InsertNotificationRequest,
      Google.Storage.V1.Notification

  rpc :ListNotifications,
      Google.Storage.V1.ListNotificationsRequest,
      Google.Storage.V1.ListNotificationsResponse

  rpc :DeleteObjectAccessControl,
      Google.Storage.V1.DeleteObjectAccessControlRequest,
      Google.Protobuf.Empty

  rpc :GetObjectAccessControl,
      Google.Storage.V1.GetObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :InsertObjectAccessControl,
      Google.Storage.V1.InsertObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :ListObjectAccessControls,
      Google.Storage.V1.ListObjectAccessControlsRequest,
      Google.Storage.V1.ListObjectAccessControlsResponse

  rpc :PatchObjectAccessControl,
      Google.Storage.V1.PatchObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :UpdateObjectAccessControl,
      Google.Storage.V1.UpdateObjectAccessControlRequest,
      Google.Storage.V1.ObjectAccessControl

  rpc :ComposeObject, Google.Storage.V1.ComposeObjectRequest, Google.Storage.V1.Object

  rpc :CopyObject, Google.Storage.V1.CopyObjectRequest, Google.Storage.V1.Object

  rpc :DeleteObject, Google.Storage.V1.DeleteObjectRequest, Google.Protobuf.Empty

  rpc :GetObject, Google.Storage.V1.GetObjectRequest, Google.Storage.V1.Object

  rpc :GetObjectMedia,
      Google.Storage.V1.GetObjectMediaRequest,
      stream(Google.Storage.V1.GetObjectMediaResponse)

  rpc :InsertObject, stream(Google.Storage.V1.InsertObjectRequest), Google.Storage.V1.Object

  rpc :ListObjects, Google.Storage.V1.ListObjectsRequest, Google.Storage.V1.ListObjectsResponse

  rpc :RewriteObject, Google.Storage.V1.RewriteObjectRequest, Google.Storage.V1.RewriteResponse

  rpc :StartResumableWrite,
      Google.Storage.V1.StartResumableWriteRequest,
      Google.Storage.V1.StartResumableWriteResponse

  rpc :QueryWriteStatus,
      Google.Storage.V1.QueryWriteStatusRequest,
      Google.Storage.V1.QueryWriteStatusResponse

  rpc :PatchObject, Google.Storage.V1.PatchObjectRequest, Google.Storage.V1.Object

  rpc :UpdateObject, Google.Storage.V1.UpdateObjectRequest, Google.Storage.V1.Object

  rpc :GetObjectIamPolicy, Google.Storage.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetObjectIamPolicy, Google.Storage.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestObjectIamPermissions,
      Google.Storage.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :WatchAllObjects, Google.Storage.V1.WatchAllObjectsRequest, Google.Storage.V1.Channel

  rpc :GetServiceAccount,
      Google.Storage.V1.GetProjectServiceAccountRequest,
      Google.Storage.V1.ServiceAccount

  rpc :CreateHmacKey,
      Google.Storage.V1.CreateHmacKeyRequest,
      Google.Storage.V1.CreateHmacKeyResponse

  rpc :DeleteHmacKey, Google.Storage.V1.DeleteHmacKeyRequest, Google.Protobuf.Empty

  rpc :GetHmacKey, Google.Storage.V1.GetHmacKeyRequest, Google.Storage.V1.HmacKeyMetadata

  rpc :ListHmacKeys, Google.Storage.V1.ListHmacKeysRequest, Google.Storage.V1.ListHmacKeysResponse

  rpc :UpdateHmacKey, Google.Storage.V1.UpdateHmacKeyRequest, Google.Storage.V1.HmacKeyMetadata
end

defmodule Google.Storage.V1.Storage.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Storage.V1.Storage.Service
end
