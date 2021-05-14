defmodule Google.Logging.V2.LifecycleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LIFECYCLE_STATE_UNSPECIFIED | :ACTIVE | :DELETE_REQUESTED

  field :LIFECYCLE_STATE_UNSPECIFIED, 0

  field :ACTIVE, 1

  field :DELETE_REQUESTED, 2
end

defmodule Google.Logging.V2.LogSink.VersionFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERSION_FORMAT_UNSPECIFIED | :V2 | :V1

  field :VERSION_FORMAT_UNSPECIFIED, 0

  field :V2, 1

  field :V1, 2
end

defmodule Google.Logging.V2.LogBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          retention_days: integer,
          locked: boolean,
          lifecycle_state: Google.Logging.V2.LifecycleState.t()
        }

  defstruct [
    :name,
    :description,
    :create_time,
    :update_time,
    :retention_days,
    :locked,
    :lifecycle_state
  ]

  field :name, 1, type: :string
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
  field :retention_days, 11, type: :int32
  field :locked, 9, type: :bool
  field :lifecycle_state, 12, type: Google.Logging.V2.LifecycleState, enum: true
end

defmodule Google.Logging.V2.LogView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          filter: String.t()
        }

  defstruct [:name, :description, :create_time, :update_time, :filter]

  field :name, 1, type: :string
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
  field :filter, 7, type: :string
end

defmodule Google.Logging.V2.LogSink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          options: {atom, any},
          name: String.t(),
          destination: String.t(),
          filter: String.t(),
          description: String.t(),
          disabled: boolean,
          exclusions: [Google.Logging.V2.LogExclusion.t()],
          output_version_format: Google.Logging.V2.LogSink.VersionFormat.t(),
          writer_identity: String.t(),
          include_children: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :options,
    :name,
    :destination,
    :filter,
    :description,
    :disabled,
    :exclusions,
    :output_version_format,
    :writer_identity,
    :include_children,
    :create_time,
    :update_time
  ]

  oneof :options, 0
  field :name, 1, type: :string
  field :destination, 3, type: :string
  field :filter, 5, type: :string
  field :description, 18, type: :string
  field :disabled, 19, type: :bool
  field :exclusions, 16, repeated: true, type: Google.Logging.V2.LogExclusion

  field :output_version_format, 6,
    type: Google.Logging.V2.LogSink.VersionFormat,
    deprecated: true,
    enum: true

  field :writer_identity, 8, type: :string
  field :include_children, 9, type: :bool
  field :bigquery_options, 12, type: Google.Logging.V2.BigQueryOptions, oneof: 0
  field :create_time, 13, type: Google.Protobuf.Timestamp
  field :update_time, 14, type: Google.Protobuf.Timestamp
end

defmodule Google.Logging.V2.BigQueryOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_partitioned_tables: boolean,
          uses_timestamp_column_partitioning: boolean
        }

  defstruct [:use_partitioned_tables, :uses_timestamp_column_partitioning]

  field :use_partitioned_tables, 1, type: :bool
  field :uses_timestamp_column_partitioning, 3, type: :bool
end

defmodule Google.Logging.V2.ListBucketsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Logging.V2.ListBucketsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          buckets: [Google.Logging.V2.LogBucket.t()],
          next_page_token: String.t()
        }

  defstruct [:buckets, :next_page_token]

  field :buckets, 1, repeated: true, type: Google.Logging.V2.LogBucket
  field :next_page_token, 2, type: :string
end

defmodule Google.Logging.V2.CreateBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          bucket_id: String.t(),
          bucket: Google.Logging.V2.LogBucket.t() | nil
        }

  defstruct [:parent, :bucket_id, :bucket]

  field :parent, 1, type: :string
  field :bucket_id, 2, type: :string
  field :bucket, 3, type: Google.Logging.V2.LogBucket
end

defmodule Google.Logging.V2.UpdateBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bucket: Google.Logging.V2.LogBucket.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :bucket, :update_mask]

  field :name, 1, type: :string
  field :bucket, 2, type: Google.Logging.V2.LogBucket
  field :update_mask, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Logging.V2.GetBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.DeleteBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.UndeleteBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.ListViewsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Logging.V2.ListViewsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          views: [Google.Logging.V2.LogView.t()],
          next_page_token: String.t()
        }

  defstruct [:views, :next_page_token]

  field :views, 1, repeated: true, type: Google.Logging.V2.LogView
  field :next_page_token, 2, type: :string
end

defmodule Google.Logging.V2.CreateViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view_id: String.t(),
          view: Google.Logging.V2.LogView.t() | nil
        }

  defstruct [:parent, :view_id, :view]

  field :parent, 1, type: :string
  field :view_id, 2, type: :string
  field :view, 3, type: Google.Logging.V2.LogView
end

defmodule Google.Logging.V2.UpdateViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Logging.V2.LogView.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :view, :update_mask]

  field :name, 1, type: :string
  field :view, 2, type: Google.Logging.V2.LogView
  field :update_mask, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Logging.V2.GetViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.DeleteViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.ListSinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Logging.V2.ListSinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sinks: [Google.Logging.V2.LogSink.t()],
          next_page_token: String.t()
        }

  defstruct [:sinks, :next_page_token]

  field :sinks, 1, repeated: true, type: Google.Logging.V2.LogSink
  field :next_page_token, 2, type: :string
end

defmodule Google.Logging.V2.GetSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sink_name: String.t()
        }

  defstruct [:sink_name]

  field :sink_name, 1, type: :string
end

defmodule Google.Logging.V2.CreateSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          sink: Google.Logging.V2.LogSink.t() | nil,
          unique_writer_identity: boolean
        }

  defstruct [:parent, :sink, :unique_writer_identity]

  field :parent, 1, type: :string
  field :sink, 2, type: Google.Logging.V2.LogSink
  field :unique_writer_identity, 3, type: :bool
end

defmodule Google.Logging.V2.UpdateSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sink_name: String.t(),
          sink: Google.Logging.V2.LogSink.t() | nil,
          unique_writer_identity: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:sink_name, :sink, :unique_writer_identity, :update_mask]

  field :sink_name, 1, type: :string
  field :sink, 2, type: Google.Logging.V2.LogSink
  field :unique_writer_identity, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Logging.V2.DeleteSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sink_name: String.t()
        }

  defstruct [:sink_name]

  field :sink_name, 1, type: :string
end

defmodule Google.Logging.V2.LogExclusion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          filter: String.t(),
          disabled: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :description, :filter, :disabled, :create_time, :update_time]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :filter, 3, type: :string
  field :disabled, 4, type: :bool
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Logging.V2.ListExclusionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Logging.V2.ListExclusionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exclusions: [Google.Logging.V2.LogExclusion.t()],
          next_page_token: String.t()
        }

  defstruct [:exclusions, :next_page_token]

  field :exclusions, 1, repeated: true, type: Google.Logging.V2.LogExclusion
  field :next_page_token, 2, type: :string
end

defmodule Google.Logging.V2.GetExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.CreateExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          exclusion: Google.Logging.V2.LogExclusion.t() | nil
        }

  defstruct [:parent, :exclusion]

  field :parent, 1, type: :string
  field :exclusion, 2, type: Google.Logging.V2.LogExclusion
end

defmodule Google.Logging.V2.UpdateExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          exclusion: Google.Logging.V2.LogExclusion.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :exclusion, :update_mask]

  field :name, 1, type: :string
  field :exclusion, 2, type: Google.Logging.V2.LogExclusion
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Logging.V2.DeleteExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.GetCmekSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Logging.V2.UpdateCmekSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          cmek_settings: Google.Logging.V2.CmekSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :cmek_settings, :update_mask]

  field :name, 1, type: :string
  field :cmek_settings, 2, type: Google.Logging.V2.CmekSettings
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Logging.V2.CmekSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          kms_key_name: String.t(),
          service_account_id: String.t()
        }

  defstruct [:name, :kms_key_name, :service_account_id]

  field :name, 1, type: :string
  field :kms_key_name, 2, type: :string
  field :service_account_id, 3, type: :string
end
