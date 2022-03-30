defmodule Google.Storage.V1.Bucket.IamConfiguration.PublicAccessPrevention do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PUBLIC_ACCESS_PREVENTION_UNSPECIFIED | :ENFORCED | :INHERITED

  field :PUBLIC_ACCESS_PREVENTION_UNSPECIFIED, 0
  field :ENFORCED, 1
  field :INHERITED, 2
end
defmodule Google.Storage.V1.CommonEnums.Projection do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PROJECTION_UNSPECIFIED | :NO_ACL | :FULL

  field :PROJECTION_UNSPECIFIED, 0
  field :NO_ACL, 1
  field :FULL, 2
end
defmodule Google.Storage.V1.CommonEnums.PredefinedBucketAcl do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PREDEFINED_BUCKET_ACL_UNSPECIFIED
          | :BUCKET_ACL_AUTHENTICATED_READ
          | :BUCKET_ACL_PRIVATE
          | :BUCKET_ACL_PROJECT_PRIVATE
          | :BUCKET_ACL_PUBLIC_READ
          | :BUCKET_ACL_PUBLIC_READ_WRITE

  field :PREDEFINED_BUCKET_ACL_UNSPECIFIED, 0
  field :BUCKET_ACL_AUTHENTICATED_READ, 1
  field :BUCKET_ACL_PRIVATE, 2
  field :BUCKET_ACL_PROJECT_PRIVATE, 3
  field :BUCKET_ACL_PUBLIC_READ, 4
  field :BUCKET_ACL_PUBLIC_READ_WRITE, 5
end
defmodule Google.Storage.V1.CommonEnums.PredefinedObjectAcl do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PREDEFINED_OBJECT_ACL_UNSPECIFIED
          | :OBJECT_ACL_AUTHENTICATED_READ
          | :OBJECT_ACL_BUCKET_OWNER_FULL_CONTROL
          | :OBJECT_ACL_BUCKET_OWNER_READ
          | :OBJECT_ACL_PRIVATE
          | :OBJECT_ACL_PROJECT_PRIVATE
          | :OBJECT_ACL_PUBLIC_READ

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requester_pays: boolean
        }

  defstruct requester_pays: false

  field :requester_pays, 1, type: :bool, json_name: "requesterPays"
end
defmodule Google.Storage.V1.Bucket.Cors do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origin: [String.t()],
          method: [String.t()],
          response_header: [String.t()],
          max_age_seconds: integer
        }

  defstruct origin: [],
            method: [],
            response_header: [],
            max_age_seconds: 0

  field :origin, 1, repeated: true, type: :string
  field :method, 2, repeated: true, type: :string
  field :response_header, 3, repeated: true, type: :string, json_name: "responseHeader"
  field :max_age_seconds, 4, type: :int32, json_name: "maxAgeSeconds"
end
defmodule Google.Storage.V1.Bucket.Encryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default_kms_key_name: String.t()
        }

  defstruct default_kms_key_name: ""

  field :default_kms_key_name, 1, type: :string, json_name: "defaultKmsKeyName"
end
defmodule Google.Storage.V1.Bucket.IamConfiguration.UniformBucketLevelAccess do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          locked_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct enabled: false,
            locked_time: nil

  field :enabled, 1, type: :bool
  field :locked_time, 2, type: Google.Protobuf.Timestamp, json_name: "lockedTime"
end
defmodule Google.Storage.V1.Bucket.IamConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uniform_bucket_level_access:
            Google.Storage.V1.Bucket.IamConfiguration.UniformBucketLevelAccess.t() | nil,
          public_access_prevention:
            Google.Storage.V1.Bucket.IamConfiguration.PublicAccessPrevention.t()
        }

  defstruct uniform_bucket_level_access: nil,
            public_access_prevention: :PUBLIC_ACCESS_PREVENTION_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          storage_class: String.t()
        }

  defstruct type: "",
            storage_class: ""

  field :type, 1, type: :string
  field :storage_class, 2, type: :string, json_name: "storageClass"
end
defmodule Google.Storage.V1.Bucket.Lifecycle.Rule.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age: integer,
          created_before: Google.Protobuf.Timestamp.t() | nil,
          is_live: Google.Protobuf.BoolValue.t() | nil,
          num_newer_versions: integer,
          matches_storage_class: [String.t()],
          matches_pattern: String.t(),
          days_since_custom_time: integer,
          custom_time_before: Google.Protobuf.Timestamp.t() | nil,
          days_since_noncurrent_time: integer,
          noncurrent_time_before: Google.Protobuf.Timestamp.t() | nil,
          matches_prefix: [String.t()],
          matches_suffix: [String.t()]
        }

  defstruct age: 0,
            created_before: nil,
            is_live: nil,
            num_newer_versions: 0,
            matches_storage_class: [],
            matches_pattern: "",
            days_since_custom_time: 0,
            custom_time_before: nil,
            days_since_noncurrent_time: 0,
            noncurrent_time_before: nil,
            matches_prefix: [],
            matches_suffix: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: Google.Storage.V1.Bucket.Lifecycle.Rule.Action.t() | nil,
          condition: Google.Storage.V1.Bucket.Lifecycle.Rule.Condition.t() | nil
        }

  defstruct action: nil,
            condition: nil

  field :action, 1, type: Google.Storage.V1.Bucket.Lifecycle.Rule.Action
  field :condition, 2, type: Google.Storage.V1.Bucket.Lifecycle.Rule.Condition
end
defmodule Google.Storage.V1.Bucket.Lifecycle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule: [Google.Storage.V1.Bucket.Lifecycle.Rule.t()]
        }

  defstruct rule: []

  field :rule, 1, repeated: true, type: Google.Storage.V1.Bucket.Lifecycle.Rule
end
defmodule Google.Storage.V1.Bucket.Logging do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_bucket: String.t(),
          log_object_prefix: String.t()
        }

  defstruct log_bucket: "",
            log_object_prefix: ""

  field :log_bucket, 1, type: :string, json_name: "logBucket"
  field :log_object_prefix, 2, type: :string, json_name: "logObjectPrefix"
end
defmodule Google.Storage.V1.Bucket.RetentionPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          effective_time: Google.Protobuf.Timestamp.t() | nil,
          is_locked: boolean,
          retention_period: integer
        }

  defstruct effective_time: nil,
            is_locked: false,
            retention_period: 0

  field :effective_time, 1, type: Google.Protobuf.Timestamp, json_name: "effectiveTime"
  field :is_locked, 2, type: :bool, json_name: "isLocked"
  field :retention_period, 3, type: :int64, json_name: "retentionPeriod"
end
defmodule Google.Storage.V1.Bucket.Versioning do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct enabled: false

  field :enabled, 1, type: :bool
end
defmodule Google.Storage.V1.Bucket.Website do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_page_suffix: String.t(),
          not_found_page: String.t()
        }

  defstruct main_page_suffix: "",
            not_found_page: ""

  field :main_page_suffix, 1, type: :string, json_name: "mainPageSuffix"
  field :not_found_page, 2, type: :string, json_name: "notFoundPage"
end
defmodule Google.Storage.V1.Bucket.Autoclass do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          toggle_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct enabled: false,
            toggle_time: nil

  field :enabled, 1, type: :bool
  field :toggle_time, 2, type: Google.Protobuf.Timestamp, json_name: "toggleTime"
end
defmodule Google.Storage.V1.Bucket.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Storage.V1.Bucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          acl: [Google.Storage.V1.BucketAccessControl.t()],
          default_object_acl: [Google.Storage.V1.ObjectAccessControl.t()],
          lifecycle: Google.Storage.V1.Bucket.Lifecycle.t() | nil,
          time_created: Google.Protobuf.Timestamp.t() | nil,
          id: String.t(),
          name: String.t(),
          project_number: integer,
          metageneration: integer,
          cors: [Google.Storage.V1.Bucket.Cors.t()],
          location: String.t(),
          storage_class: String.t(),
          etag: String.t(),
          updated: Google.Protobuf.Timestamp.t() | nil,
          default_event_based_hold: boolean,
          labels: %{String.t() => String.t()},
          website: Google.Storage.V1.Bucket.Website.t() | nil,
          versioning: Google.Storage.V1.Bucket.Versioning.t() | nil,
          logging: Google.Storage.V1.Bucket.Logging.t() | nil,
          owner: Google.Storage.V1.Owner.t() | nil,
          encryption: Google.Storage.V1.Bucket.Encryption.t() | nil,
          billing: Google.Storage.V1.Bucket.Billing.t() | nil,
          retention_policy: Google.Storage.V1.Bucket.RetentionPolicy.t() | nil,
          location_type: String.t(),
          iam_configuration: Google.Storage.V1.Bucket.IamConfiguration.t() | nil,
          zone_affinity: [String.t()],
          satisfies_pzs: boolean,
          autoclass: Google.Storage.V1.Bucket.Autoclass.t() | nil
        }

  defstruct acl: [],
            default_object_acl: [],
            lifecycle: nil,
            time_created: nil,
            id: "",
            name: "",
            project_number: 0,
            metageneration: 0,
            cors: [],
            location: "",
            storage_class: "",
            etag: "",
            updated: nil,
            default_event_based_hold: false,
            labels: %{},
            website: nil,
            versioning: nil,
            logging: nil,
            owner: nil,
            encryption: nil,
            billing: nil,
            retention_policy: nil,
            location_type: "",
            iam_configuration: nil,
            zone_affinity: [],
            satisfies_pzs: false,
            autoclass: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: String.t(),
          etag: String.t(),
          id: String.t(),
          bucket: String.t(),
          entity: String.t(),
          entity_id: String.t(),
          email: String.t(),
          domain: String.t(),
          project_team: Google.Storage.V1.ProjectTeam.t() | nil
        }

  defstruct role: "",
            etag: "",
            id: "",
            bucket: "",
            entity: "",
            entity_id: "",
            email: "",
            domain: "",
            project_team: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Storage.V1.BucketAccessControl.t()]
        }

  defstruct items: []

  field :items, 1, repeated: true, type: Google.Storage.V1.BucketAccessControl
end
defmodule Google.Storage.V1.ListBucketsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Storage.V1.Bucket.t()],
          next_page_token: String.t()
        }

  defstruct items: [],
            next_page_token: ""

  field :items, 1, repeated: true, type: Google.Storage.V1.Bucket
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Storage.V1.Channel.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Storage.V1.Channel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          resource_id: String.t(),
          resource_uri: String.t(),
          token: String.t(),
          expiration: Google.Protobuf.Timestamp.t() | nil,
          type: String.t(),
          address: String.t(),
          params: %{String.t() => String.t()},
          payload: boolean
        }

  defstruct id: "",
            resource_id: "",
            resource_uri: "",
            token: "",
            expiration: nil,
            type: "",
            address: "",
            params: %{},
            payload: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: String.t(),
          resource_id: String.t(),
          push_url: String.t(),
          subscriber_email: String.t(),
          creation_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct channel_id: "",
            resource_id: "",
            push_url: "",
            subscriber_email: "",
            creation_time: nil

  field :channel_id, 1, type: :string, json_name: "channelId"
  field :resource_id, 2, type: :string, json_name: "resourceId"
  field :push_url, 3, type: :string, json_name: "pushUrl"
  field :subscriber_email, 4, type: :string, json_name: "subscriberEmail"
  field :creation_time, 5, type: Google.Protobuf.Timestamp, json_name: "creationTime"
end
defmodule Google.Storage.V1.ListChannelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Storage.V1.ListChannelsResponse.Items.t()]
        }

  defstruct items: []

  field :items, 1, repeated: true, type: Google.Storage.V1.ListChannelsResponse.Items
end
defmodule Google.Storage.V1.ChecksummedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: binary,
          crc32c: Google.Protobuf.UInt32Value.t() | nil
        }

  defstruct content: "",
            crc32c: nil

  field :content, 1, type: :bytes
  field :crc32c, 2, type: Google.Protobuf.UInt32Value
end
defmodule Google.Storage.V1.ObjectChecksums do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crc32c: Google.Protobuf.UInt32Value.t() | nil,
          md5_hash: String.t()
        }

  defstruct crc32c: nil,
            md5_hash: ""

  field :crc32c, 1, type: Google.Protobuf.UInt32Value
  field :md5_hash, 2, type: :string, json_name: "md5Hash"
end
defmodule Google.Storage.V1.CommonEnums do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Storage.V1.ContentRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: integer,
          end: integer,
          complete_length: integer
        }

  defstruct start: 0,
            end: 0,
            complete_length: 0

  field :start, 1, type: :int64
  field :end, 2, type: :int64
  field :complete_length, 3, type: :int64, json_name: "completeLength"
end
defmodule Google.Storage.V1.HmacKeyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          access_id: String.t(),
          project_id: String.t(),
          service_account_email: String.t(),
          state: String.t(),
          time_created: Google.Protobuf.Timestamp.t() | nil,
          updated: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct id: "",
            access_id: "",
            project_id: "",
            service_account_email: "",
            state: "",
            time_created: nil,
            updated: nil,
            etag: ""

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
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Storage.V1.Notification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          event_types: [String.t()],
          custom_attributes: %{String.t() => String.t()},
          etag: String.t(),
          object_name_prefix: String.t(),
          payload_format: String.t(),
          id: String.t()
        }

  defstruct topic: "",
            event_types: [],
            custom_attributes: %{},
            etag: "",
            object_name_prefix: "",
            payload_format: "",
            id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Storage.V1.Notification.t()]
        }

  defstruct items: []

  field :items, 1, repeated: true, type: Google.Storage.V1.Notification
end
defmodule Google.Storage.V1.Object.CustomerEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_algorithm: String.t(),
          key_sha256: String.t()
        }

  defstruct encryption_algorithm: "",
            key_sha256: ""

  field :encryption_algorithm, 1, type: :string, json_name: "encryptionAlgorithm"
  field :key_sha256, 2, type: :string, json_name: "keySha256"
end
defmodule Google.Storage.V1.Object.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Storage.V1.Object do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_encoding: String.t(),
          content_disposition: String.t(),
          cache_control: String.t(),
          acl: [Google.Storage.V1.ObjectAccessControl.t()],
          content_language: String.t(),
          metageneration: integer,
          time_deleted: Google.Protobuf.Timestamp.t() | nil,
          content_type: String.t(),
          size: integer,
          time_created: Google.Protobuf.Timestamp.t() | nil,
          crc32c: Google.Protobuf.UInt32Value.t() | nil,
          component_count: integer,
          md5_hash: String.t(),
          etag: String.t(),
          updated: Google.Protobuf.Timestamp.t() | nil,
          storage_class: String.t(),
          kms_key_name: String.t(),
          time_storage_class_updated: Google.Protobuf.Timestamp.t() | nil,
          temporary_hold: boolean,
          retention_expiration_time: Google.Protobuf.Timestamp.t() | nil,
          metadata: %{String.t() => String.t()},
          event_based_hold: Google.Protobuf.BoolValue.t() | nil,
          name: String.t(),
          id: String.t(),
          bucket: String.t(),
          generation: integer,
          owner: Google.Storage.V1.Owner.t() | nil,
          customer_encryption: Google.Storage.V1.Object.CustomerEncryption.t() | nil,
          custom_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct content_encoding: "",
            content_disposition: "",
            cache_control: "",
            acl: [],
            content_language: "",
            metageneration: 0,
            time_deleted: nil,
            content_type: "",
            size: 0,
            time_created: nil,
            crc32c: nil,
            component_count: 0,
            md5_hash: "",
            etag: "",
            updated: nil,
            storage_class: "",
            kms_key_name: "",
            time_storage_class_updated: nil,
            temporary_hold: false,
            retention_expiration_time: nil,
            metadata: %{},
            event_based_hold: nil,
            name: "",
            id: "",
            bucket: "",
            generation: 0,
            owner: nil,
            customer_encryption: nil,
            custom_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: String.t(),
          etag: String.t(),
          id: String.t(),
          bucket: String.t(),
          object: String.t(),
          generation: integer,
          entity: String.t(),
          entity_id: String.t(),
          email: String.t(),
          domain: String.t(),
          project_team: Google.Storage.V1.ProjectTeam.t() | nil
        }

  defstruct role: "",
            etag: "",
            id: "",
            bucket: "",
            object: "",
            generation: 0,
            entity: "",
            entity_id: "",
            email: "",
            domain: "",
            project_team: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Storage.V1.ObjectAccessControl.t()]
        }

  defstruct items: []

  field :items, 1, repeated: true, type: Google.Storage.V1.ObjectAccessControl
end
defmodule Google.Storage.V1.ListObjectsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prefixes: [String.t()],
          items: [Google.Storage.V1.Object.t()],
          next_page_token: String.t()
        }

  defstruct prefixes: [],
            items: [],
            next_page_token: ""

  field :prefixes, 1, repeated: true, type: :string
  field :items, 2, repeated: true, type: Google.Storage.V1.Object
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Storage.V1.ProjectTeam do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_number: String.t(),
          team: String.t()
        }

  defstruct project_number: "",
            team: ""

  field :project_number, 1, type: :string, json_name: "projectNumber"
  field :team, 2, type: :string
end
defmodule Google.Storage.V1.ServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email_address: String.t()
        }

  defstruct email_address: ""

  field :email_address, 1, type: :string, json_name: "emailAddress"
end
defmodule Google.Storage.V1.Owner do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: String.t(),
          entity_id: String.t()
        }

  defstruct entity: "",
            entity_id: ""

  field :entity, 1, type: :string
  field :entity_id, 2, type: :string, json_name: "entityId"
end
