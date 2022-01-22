defmodule Google.Cloud.Dataplex.V1.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :CREATING | :DELETING | :ACTION_REQUIRED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :DELETING, 3
  field :ACTION_REQUIRED, 4
end
defmodule Google.Cloud.Dataplex.V1.Lake.MetastoreStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :NONE | :READY | :UPDATING | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :NONE, 1
  field :READY, 2
  field :UPDATING, 3
  field :ERROR, 4
end
defmodule Google.Cloud.Dataplex.V1.Zone.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :RAW | :CURATED

  field :TYPE_UNSPECIFIED, 0
  field :RAW, 1
  field :CURATED, 2
end
defmodule Google.Cloud.Dataplex.V1.Zone.ResourceSpec.LocationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOCATION_TYPE_UNSPECIFIED | :SINGLE_REGION | :MULTI_REGION

  field :LOCATION_TYPE_UNSPECIFIED, 0
  field :SINGLE_REGION, 1
  field :MULTI_REGION, 2
end
defmodule Google.Cloud.Dataplex.V1.Action.Category do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CATEGORY_UNSPECIFIED
          | :RESOURCE_MANAGEMENT
          | :SECURITY_POLICY
          | :DATA_DISCOVERY

  field :CATEGORY_UNSPECIFIED, 0
  field :RESOURCE_MANAGEMENT, 1
  field :SECURITY_POLICY, 2
  field :DATA_DISCOVERY, 3
end
defmodule Google.Cloud.Dataplex.V1.Action.IncompatibleDataSchema.SchemaChange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SCHEMA_CHANGE_UNSPECIFIED | :INCOMPATIBLE | :MODIFIED

  field :SCHEMA_CHANGE_UNSPECIFIED, 0
  field :INCOMPATIBLE, 1
  field :MODIFIED, 2
end
defmodule Google.Cloud.Dataplex.V1.Action.InvalidDataPartition.PartitionStructure do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PARTITION_STRUCTURE_UNSPECIFIED | :CONSISTENT_KEYS | :HIVE_STYLE_KEYS

  field :PARTITION_STRUCTURE_UNSPECIFIED, 0
  field :CONSISTENT_KEYS, 1
  field :HIVE_STYLE_KEYS, 2
end
defmodule Google.Cloud.Dataplex.V1.Asset.SecurityStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :READY | :APPLYING | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :APPLYING, 2
  field :ERROR, 3
end
defmodule Google.Cloud.Dataplex.V1.Asset.ResourceSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :STORAGE_BUCKET | :BIGQUERY_DATASET

  field :TYPE_UNSPECIFIED, 0
  field :STORAGE_BUCKET, 1
  field :BIGQUERY_DATASET, 2
end
defmodule Google.Cloud.Dataplex.V1.Asset.ResourceStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :READY | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :ERROR, 2
end
defmodule Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :SCHEDULED | :IN_PROGRESS | :PAUSED | :DISABLED

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :IN_PROGRESS, 2
  field :PAUSED, 3
  field :DISABLED, 5
end
defmodule Google.Cloud.Dataplex.V1.Lake.Metastore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t()
        }

  defstruct service: ""

  field :service, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Lake.MetastoreStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataplex.V1.Lake.MetastoreStatus.State.t(),
          message: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          endpoint: String.t()
        }

  defstruct state: :STATE_UNSPECIFIED,
            message: "",
            update_time: nil,
            endpoint: ""

  field :state, 1, type: Google.Cloud.Dataplex.V1.Lake.MetastoreStatus.State, enum: true
  field :message, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :endpoint, 4, type: :string
end
defmodule Google.Cloud.Dataplex.V1.Lake.LabelsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Lake do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Dataplex.V1.State.t(),
          service_account: String.t(),
          metastore: Google.Cloud.Dataplex.V1.Lake.Metastore.t() | nil,
          asset_status: Google.Cloud.Dataplex.V1.AssetStatus.t() | nil,
          metastore_status: Google.Cloud.Dataplex.V1.Lake.MetastoreStatus.t() | nil
        }

  defstruct name: "",
            display_name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            description: "",
            state: :STATE_UNSPECIFIED,
            service_account: "",
            metastore: nil,
            asset_status: nil,
            metastore_status: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false

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
    type: Google.Cloud.Dataplex.V1.Lake.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :state, 8, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false
  field :service_account, 9, type: :string, json_name: "serviceAccount", deprecated: false
  field :metastore, 102, type: Google.Cloud.Dataplex.V1.Lake.Metastore, deprecated: false

  field :asset_status, 103,
    type: Google.Cloud.Dataplex.V1.AssetStatus,
    json_name: "assetStatus",
    deprecated: false

  field :metastore_status, 104,
    type: Google.Cloud.Dataplex.V1.Lake.MetastoreStatus,
    json_name: "metastoreStatus",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.AssetStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_time: Google.Protobuf.Timestamp.t() | nil,
          active_assets: integer,
          security_policy_applying_assets: integer
        }

  defstruct update_time: nil,
            active_assets: 0,
            security_policy_applying_assets: 0

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :active_assets, 2, type: :int32, json_name: "activeAssets"

  field :security_policy_applying_assets, 3,
    type: :int32,
    json_name: "securityPolicyApplyingAssets"
end
defmodule Google.Cloud.Dataplex.V1.Zone.ResourceSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_type: Google.Cloud.Dataplex.V1.Zone.ResourceSpec.LocationType.t()
        }

  defstruct location_type: :LOCATION_TYPE_UNSPECIFIED

  field :location_type, 1,
    type: Google.Cloud.Dataplex.V1.Zone.ResourceSpec.LocationType,
    json_name: "locationType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.CsvOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header_rows: integer,
          delimiter: String.t(),
          encoding: String.t(),
          disable_type_inference: boolean
        }

  defstruct header_rows: 0,
            delimiter: "",
            encoding: "",
            disable_type_inference: false

  field :header_rows, 1, type: :int32, json_name: "headerRows", deprecated: false
  field :delimiter, 2, type: :string, deprecated: false
  field :encoding, 3, type: :string, deprecated: false

  field :disable_type_inference, 4,
    type: :bool,
    json_name: "disableTypeInference",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.JsonOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: String.t(),
          disable_type_inference: boolean
        }

  defstruct encoding: "",
            disable_type_inference: false

  field :encoding, 1, type: :string, deprecated: false

  field :disable_type_inference, 2,
    type: :bool,
    json_name: "disableTypeInference",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Zone.DiscoverySpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger: {:schedule, String.t()},
          enabled: boolean,
          include_patterns: [String.t()],
          exclude_patterns: [String.t()],
          csv_options: Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.CsvOptions.t() | nil,
          json_options: Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.JsonOptions.t() | nil
        }

  defstruct trigger: nil,
            enabled: false,
            include_patterns: [],
            exclude_patterns: [],
            csv_options: nil,
            json_options: nil

  oneof :trigger, 0

  field :enabled, 1, type: :bool, deprecated: false

  field :include_patterns, 2,
    repeated: true,
    type: :string,
    json_name: "includePatterns",
    deprecated: false

  field :exclude_patterns, 3,
    repeated: true,
    type: :string,
    json_name: "excludePatterns",
    deprecated: false

  field :csv_options, 4,
    type: Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.CsvOptions,
    json_name: "csvOptions",
    deprecated: false

  field :json_options, 5,
    type: Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.JsonOptions,
    json_name: "jsonOptions",
    deprecated: false

  field :schedule, 10, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Zone.LabelsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Zone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Dataplex.V1.State.t(),
          type: Google.Cloud.Dataplex.V1.Zone.Type.t(),
          discovery_spec: Google.Cloud.Dataplex.V1.Zone.DiscoverySpec.t() | nil,
          resource_spec: Google.Cloud.Dataplex.V1.Zone.ResourceSpec.t() | nil,
          asset_status: Google.Cloud.Dataplex.V1.AssetStatus.t() | nil
        }

  defstruct name: "",
            display_name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            description: "",
            state: :STATE_UNSPECIFIED,
            type: :TYPE_UNSPECIFIED,
            discovery_spec: nil,
            resource_spec: nil,
            asset_status: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false

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
    type: Google.Cloud.Dataplex.V1.Zone.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :state, 8, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false
  field :type, 9, type: Google.Cloud.Dataplex.V1.Zone.Type, enum: true, deprecated: false

  field :discovery_spec, 103,
    type: Google.Cloud.Dataplex.V1.Zone.DiscoverySpec,
    json_name: "discoverySpec",
    deprecated: false

  field :resource_spec, 104,
    type: Google.Cloud.Dataplex.V1.Zone.ResourceSpec,
    json_name: "resourceSpec",
    deprecated: false

  field :asset_status, 105,
    type: Google.Cloud.Dataplex.V1.AssetStatus,
    json_name: "assetStatus",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Action.MissingResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dataplex.V1.Action.UnauthorizedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dataplex.V1.Action.FailedSecurityPolicyApply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct asset: ""

  field :asset, 1, type: :string
end
defmodule Google.Cloud.Dataplex.V1.Action.InvalidDataFormat do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sampled_data_locations: [String.t()],
          expected_format: String.t(),
          new_format: String.t()
        }

  defstruct sampled_data_locations: [],
            expected_format: "",
            new_format: ""

  field :sampled_data_locations, 1,
    repeated: true,
    type: :string,
    json_name: "sampledDataLocations"

  field :expected_format, 2, type: :string, json_name: "expectedFormat"
  field :new_format, 3, type: :string, json_name: "newFormat"
end
defmodule Google.Cloud.Dataplex.V1.Action.IncompatibleDataSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: String.t(),
          existing_schema: String.t(),
          new_schema: String.t(),
          sampled_data_locations: [String.t()],
          schema_change: Google.Cloud.Dataplex.V1.Action.IncompatibleDataSchema.SchemaChange.t()
        }

  defstruct table: "",
            existing_schema: "",
            new_schema: "",
            sampled_data_locations: [],
            schema_change: :SCHEMA_CHANGE_UNSPECIFIED

  field :table, 1, type: :string
  field :existing_schema, 2, type: :string, json_name: "existingSchema"
  field :new_schema, 3, type: :string, json_name: "newSchema"

  field :sampled_data_locations, 4,
    repeated: true,
    type: :string,
    json_name: "sampledDataLocations"

  field :schema_change, 5,
    type: Google.Cloud.Dataplex.V1.Action.IncompatibleDataSchema.SchemaChange,
    json_name: "schemaChange",
    enum: true
end
defmodule Google.Cloud.Dataplex.V1.Action.InvalidDataPartition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expected_structure:
            Google.Cloud.Dataplex.V1.Action.InvalidDataPartition.PartitionStructure.t()
        }

  defstruct expected_structure: :PARTITION_STRUCTURE_UNSPECIFIED

  field :expected_structure, 1,
    type: Google.Cloud.Dataplex.V1.Action.InvalidDataPartition.PartitionStructure,
    json_name: "expectedStructure",
    enum: true
end
defmodule Google.Cloud.Dataplex.V1.Action.MissingData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dataplex.V1.Action.InvalidDataOrganization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dataplex.V1.Action do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:invalid_data_format, Google.Cloud.Dataplex.V1.Action.InvalidDataFormat.t() | nil}
            | {:incompatible_data_schema,
               Google.Cloud.Dataplex.V1.Action.IncompatibleDataSchema.t() | nil}
            | {:invalid_data_partition,
               Google.Cloud.Dataplex.V1.Action.InvalidDataPartition.t() | nil}
            | {:missing_data, Google.Cloud.Dataplex.V1.Action.MissingData.t() | nil}
            | {:missing_resource, Google.Cloud.Dataplex.V1.Action.MissingResource.t() | nil}
            | {:unauthorized_resource,
               Google.Cloud.Dataplex.V1.Action.UnauthorizedResource.t() | nil}
            | {:failed_security_policy_apply,
               Google.Cloud.Dataplex.V1.Action.FailedSecurityPolicyApply.t() | nil}
            | {:invalid_data_organization,
               Google.Cloud.Dataplex.V1.Action.InvalidDataOrganization.t() | nil},
          category: Google.Cloud.Dataplex.V1.Action.Category.t(),
          issue: String.t(),
          detect_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          lake: String.t(),
          zone: String.t(),
          asset: String.t(),
          data_locations: [String.t()]
        }

  defstruct details: nil,
            category: :CATEGORY_UNSPECIFIED,
            issue: "",
            detect_time: nil,
            name: "",
            lake: "",
            zone: "",
            asset: "",
            data_locations: []

  oneof :details, 0

  field :category, 1, type: Google.Cloud.Dataplex.V1.Action.Category, enum: true
  field :issue, 2, type: :string
  field :detect_time, 4, type: Google.Protobuf.Timestamp, json_name: "detectTime"
  field :name, 5, type: :string, deprecated: false
  field :lake, 6, type: :string, deprecated: false
  field :zone, 7, type: :string, deprecated: false
  field :asset, 8, type: :string, deprecated: false
  field :data_locations, 9, repeated: true, type: :string, json_name: "dataLocations"

  field :invalid_data_format, 10,
    type: Google.Cloud.Dataplex.V1.Action.InvalidDataFormat,
    json_name: "invalidDataFormat",
    oneof: 0

  field :incompatible_data_schema, 11,
    type: Google.Cloud.Dataplex.V1.Action.IncompatibleDataSchema,
    json_name: "incompatibleDataSchema",
    oneof: 0

  field :invalid_data_partition, 12,
    type: Google.Cloud.Dataplex.V1.Action.InvalidDataPartition,
    json_name: "invalidDataPartition",
    oneof: 0

  field :missing_data, 13,
    type: Google.Cloud.Dataplex.V1.Action.MissingData,
    json_name: "missingData",
    oneof: 0

  field :missing_resource, 14,
    type: Google.Cloud.Dataplex.V1.Action.MissingResource,
    json_name: "missingResource",
    oneof: 0

  field :unauthorized_resource, 15,
    type: Google.Cloud.Dataplex.V1.Action.UnauthorizedResource,
    json_name: "unauthorizedResource",
    oneof: 0

  field :failed_security_policy_apply, 21,
    type: Google.Cloud.Dataplex.V1.Action.FailedSecurityPolicyApply,
    json_name: "failedSecurityPolicyApply",
    oneof: 0

  field :invalid_data_organization, 22,
    type: Google.Cloud.Dataplex.V1.Action.InvalidDataOrganization,
    json_name: "invalidDataOrganization",
    oneof: 0
end
defmodule Google.Cloud.Dataplex.V1.Asset.SecurityStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataplex.V1.Asset.SecurityStatus.State.t(),
          message: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            message: "",
            update_time: nil

  field :state, 1, type: Google.Cloud.Dataplex.V1.Asset.SecurityStatus.State, enum: true
  field :message, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.CsvOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header_rows: integer,
          delimiter: String.t(),
          encoding: String.t(),
          disable_type_inference: boolean
        }

  defstruct header_rows: 0,
            delimiter: "",
            encoding: "",
            disable_type_inference: false

  field :header_rows, 1, type: :int32, json_name: "headerRows", deprecated: false
  field :delimiter, 2, type: :string, deprecated: false
  field :encoding, 3, type: :string, deprecated: false

  field :disable_type_inference, 4,
    type: :bool,
    json_name: "disableTypeInference",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.JsonOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: String.t(),
          disable_type_inference: boolean
        }

  defstruct encoding: "",
            disable_type_inference: false

  field :encoding, 1, type: :string, deprecated: false

  field :disable_type_inference, 2,
    type: :bool,
    json_name: "disableTypeInference",
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Asset.DiscoverySpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger: {:schedule, String.t()},
          enabled: boolean,
          include_patterns: [String.t()],
          exclude_patterns: [String.t()],
          csv_options: Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.CsvOptions.t() | nil,
          json_options: Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.JsonOptions.t() | nil
        }

  defstruct trigger: nil,
            enabled: false,
            include_patterns: [],
            exclude_patterns: [],
            csv_options: nil,
            json_options: nil

  oneof :trigger, 0

  field :enabled, 1, type: :bool, deprecated: false

  field :include_patterns, 2,
    repeated: true,
    type: :string,
    json_name: "includePatterns",
    deprecated: false

  field :exclude_patterns, 3,
    repeated: true,
    type: :string,
    json_name: "excludePatterns",
    deprecated: false

  field :csv_options, 4,
    type: Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.CsvOptions,
    json_name: "csvOptions",
    deprecated: false

  field :json_options, 5,
    type: Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.JsonOptions,
    json_name: "jsonOptions",
    deprecated: false

  field :schedule, 10, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Asset.ResourceSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Dataplex.V1.Asset.ResourceSpec.Type.t()
        }

  defstruct name: "",
            type: :TYPE_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Dataplex.V1.Asset.ResourceSpec.Type,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.Asset.ResourceStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataplex.V1.Asset.ResourceStatus.State.t(),
          message: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            message: "",
            update_time: nil

  field :state, 1, type: Google.Cloud.Dataplex.V1.Asset.ResourceStatus.State, enum: true
  field :message, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.Stats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_items: integer,
          data_size: integer,
          tables: integer,
          filesets: integer
        }

  defstruct data_items: 0,
            data_size: 0,
            tables: 0,
            filesets: 0

  field :data_items, 1, type: :int64, json_name: "dataItems"
  field :data_size, 2, type: :int64, json_name: "dataSize"
  field :tables, 3, type: :int64
  field :filesets, 4, type: :int64
end
defmodule Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.State.t(),
          message: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          last_run_time: Google.Protobuf.Timestamp.t() | nil,
          stats: Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.Stats.t() | nil,
          last_run_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            message: "",
            update_time: nil,
            last_run_time: nil,
            stats: nil,
            last_run_duration: nil

  field :state, 1, type: Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.State, enum: true
  field :message, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :last_run_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastRunTime"
  field :stats, 6, type: Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.Stats
  field :last_run_duration, 7, type: Google.Protobuf.Duration, json_name: "lastRunDuration"
end
defmodule Google.Cloud.Dataplex.V1.Asset.LabelsEntry do
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
defmodule Google.Cloud.Dataplex.V1.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Dataplex.V1.State.t(),
          resource_spec: Google.Cloud.Dataplex.V1.Asset.ResourceSpec.t() | nil,
          resource_status: Google.Cloud.Dataplex.V1.Asset.ResourceStatus.t() | nil,
          security_status: Google.Cloud.Dataplex.V1.Asset.SecurityStatus.t() | nil,
          discovery_spec: Google.Cloud.Dataplex.V1.Asset.DiscoverySpec.t() | nil,
          discovery_status: Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus.t() | nil
        }

  defstruct name: "",
            display_name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            description: "",
            state: :STATE_UNSPECIFIED,
            resource_spec: nil,
            resource_status: nil,
            security_status: nil,
            discovery_spec: nil,
            discovery_status: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false

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
    type: Google.Cloud.Dataplex.V1.Asset.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :state, 8, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false

  field :resource_spec, 100,
    type: Google.Cloud.Dataplex.V1.Asset.ResourceSpec,
    json_name: "resourceSpec",
    deprecated: false

  field :resource_status, 101,
    type: Google.Cloud.Dataplex.V1.Asset.ResourceStatus,
    json_name: "resourceStatus",
    deprecated: false

  field :security_status, 103,
    type: Google.Cloud.Dataplex.V1.Asset.SecurityStatus,
    json_name: "securityStatus",
    deprecated: false

  field :discovery_spec, 106,
    type: Google.Cloud.Dataplex.V1.Asset.DiscoverySpec,
    json_name: "discoverySpec",
    deprecated: false

  field :discovery_status, 107,
    type: Google.Cloud.Dataplex.V1.Asset.DiscoveryStatus,
    json_name: "discoveryStatus",
    deprecated: false
end
