defmodule Google.Cloud.Datacatalog.V1.EntryType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENTRY_TYPE_UNSPECIFIED
          | :TABLE
          | :MODEL
          | :DATA_STREAM
          | :FILESET
          | :CLUSTER
          | :DATABASE
          | :DATA_SOURCE_CONNECTION
          | :ROUTINE
          | :SERVICE

  field :ENTRY_TYPE_UNSPECIFIED, 0
  field :TABLE, 2
  field :MODEL, 5
  field :DATA_STREAM, 3
  field :FILESET, 4
  field :CLUSTER, 6
  field :DATABASE, 7
  field :DATA_SOURCE_CONNECTION, 8
  field :ROUTINE, 9
  field :SERVICE, 14
end
defmodule Google.Cloud.Datacatalog.V1.DatabaseTableSpec.TableType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TABLE_TYPE_UNSPECIFIED | :NATIVE | :EXTERNAL

  field :TABLE_TYPE_UNSPECIFIED, 0
  field :NATIVE, 1
  field :EXTERNAL, 2
end
defmodule Google.Cloud.Datacatalog.V1.RoutineSpec.RoutineType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ROUTINE_TYPE_UNSPECIFIED | :SCALAR_FUNCTION | :PROCEDURE

  field :ROUTINE_TYPE_UNSPECIFIED, 0
  field :SCALAR_FUNCTION, 1
  field :PROCEDURE, 2
end
defmodule Google.Cloud.Datacatalog.V1.RoutineSpec.Argument.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MODE_UNSPECIFIED | :IN | :OUT | :INOUT

  field :MODE_UNSPECIFIED, 0
  field :IN, 1
  field :OUT, 2
  field :INOUT, 3
end
defmodule Google.Cloud.Datacatalog.V1.SearchCatalogRequest.Scope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_org_ids: [String.t()],
          include_project_ids: [String.t()],
          include_gcp_public_datasets: boolean,
          restricted_locations: [String.t()],
          include_public_tag_templates: boolean
        }

  defstruct include_org_ids: [],
            include_project_ids: [],
            include_gcp_public_datasets: false,
            restricted_locations: [],
            include_public_tag_templates: false

  field :include_org_ids, 2, repeated: true, type: :string, json_name: "includeOrgIds"
  field :include_project_ids, 3, repeated: true, type: :string, json_name: "includeProjectIds"
  field :include_gcp_public_datasets, 7, type: :bool, json_name: "includeGcpPublicDatasets"

  field :restricted_locations, 16,
    repeated: true,
    type: :string,
    json_name: "restrictedLocations",
    deprecated: false

  field :include_public_tag_templates, 19,
    type: :bool,
    json_name: "includePublicTagTemplates",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.SearchCatalogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Google.Cloud.Datacatalog.V1.SearchCatalogRequest.Scope.t() | nil,
          query: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct scope: nil,
            query: "",
            page_size: 0,
            page_token: "",
            order_by: ""

  field :scope, 6, type: Google.Cloud.Datacatalog.V1.SearchCatalogRequest.Scope, deprecated: false
  field :query, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Datacatalog.V1.SearchCatalogResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Datacatalog.V1.SearchCatalogResult.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct results: [],
            next_page_token: "",
            unreachable: []

  field :results, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.SearchCatalogResult
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :unreachable, 6, repeated: true, type: :string
end
defmodule Google.Cloud.Datacatalog.V1.CreateEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entry_group_id: String.t(),
          entry_group: Google.Cloud.Datacatalog.V1.EntryGroup.t() | nil
        }

  defstruct parent: "",
            entry_group_id: "",
            entry_group: nil

  field :parent, 1, type: :string, deprecated: false
  field :entry_group_id, 3, type: :string, json_name: "entryGroupId", deprecated: false
  field :entry_group, 2, type: Google.Cloud.Datacatalog.V1.EntryGroup, json_name: "entryGroup"
end
defmodule Google.Cloud.Datacatalog.V1.UpdateEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_group: Google.Cloud.Datacatalog.V1.EntryGroup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct entry_group: nil,
            update_mask: nil

  field :entry_group, 1,
    type: Google.Cloud.Datacatalog.V1.EntryGroup,
    json_name: "entryGroup",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datacatalog.V1.GetEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            read_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Datacatalog.V1.DeleteEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.ListEntryGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.ListEntryGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_groups: [Google.Cloud.Datacatalog.V1.EntryGroup.t()],
          next_page_token: String.t()
        }

  defstruct entry_groups: [],
            next_page_token: ""

  field :entry_groups, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.EntryGroup,
    json_name: "entryGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datacatalog.V1.CreateEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entry_id: String.t(),
          entry: Google.Cloud.Datacatalog.V1.Entry.t() | nil
        }

  defstruct parent: "",
            entry_id: "",
            entry: nil

  field :parent, 1, type: :string, deprecated: false
  field :entry_id, 3, type: :string, json_name: "entryId", deprecated: false
  field :entry, 2, type: Google.Cloud.Datacatalog.V1.Entry, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.UpdateEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry: Google.Cloud.Datacatalog.V1.Entry.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct entry: nil,
            update_mask: nil

  field :entry, 1, type: Google.Cloud.Datacatalog.V1.Entry, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datacatalog.V1.DeleteEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.GetEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.LookupEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_name:
            {:linked_resource, String.t()}
            | {:sql_resource, String.t()}
            | {:fully_qualified_name, String.t()}
        }

  defstruct target_name: nil

  oneof :target_name, 0

  field :linked_resource, 1, type: :string, json_name: "linkedResource", oneof: 0
  field :sql_resource, 3, type: :string, json_name: "sqlResource", oneof: 0
  field :fully_qualified_name, 5, type: :string, json_name: "fullyQualifiedName", oneof: 0
end
defmodule Google.Cloud.Datacatalog.V1.Entry.LabelsEntry do
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
defmodule Google.Cloud.Datacatalog.V1.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_type:
            {:type, Google.Cloud.Datacatalog.V1.EntryType.t()}
            | {:user_specified_type, String.t()},
          system:
            {:integrated_system, Google.Cloud.Datacatalog.V1.IntegratedSystem.t()}
            | {:user_specified_system, String.t()},
          type_spec:
            {:gcs_fileset_spec, Google.Cloud.Datacatalog.V1.GcsFilesetSpec.t() | nil}
            | {:bigquery_table_spec, Google.Cloud.Datacatalog.V1.BigQueryTableSpec.t() | nil}
            | {:bigquery_date_sharded_spec,
               Google.Cloud.Datacatalog.V1.BigQueryDateShardedSpec.t() | nil},
          spec:
            {:database_table_spec, Google.Cloud.Datacatalog.V1.DatabaseTableSpec.t() | nil}
            | {:data_source_connection_spec,
               Google.Cloud.Datacatalog.V1.DataSourceConnectionSpec.t() | nil}
            | {:routine_spec, Google.Cloud.Datacatalog.V1.RoutineSpec.t() | nil},
          name: String.t(),
          linked_resource: String.t(),
          fully_qualified_name: String.t(),
          display_name: String.t(),
          description: String.t(),
          schema: Google.Cloud.Datacatalog.V1.Schema.t() | nil,
          source_system_timestamps: Google.Cloud.Datacatalog.V1.SystemTimestamps.t() | nil,
          usage_signal: Google.Cloud.Datacatalog.V1.UsageSignal.t() | nil,
          labels: %{String.t() => String.t()},
          data_source: Google.Cloud.Datacatalog.V1.DataSource.t() | nil
        }

  defstruct entry_type: nil,
            system: nil,
            type_spec: nil,
            spec: nil,
            name: "",
            linked_resource: "",
            fully_qualified_name: "",
            display_name: "",
            description: "",
            schema: nil,
            source_system_timestamps: nil,
            usage_signal: nil,
            labels: %{},
            data_source: nil

  oneof :entry_type, 0
  oneof :system, 1
  oneof :type_spec, 2
  oneof :spec, 3

  field :name, 1, type: :string, deprecated: false
  field :linked_resource, 9, type: :string, json_name: "linkedResource"
  field :fully_qualified_name, 29, type: :string, json_name: "fullyQualifiedName"
  field :type, 2, type: Google.Cloud.Datacatalog.V1.EntryType, enum: true, oneof: 0
  field :user_specified_type, 16, type: :string, json_name: "userSpecifiedType", oneof: 0

  field :integrated_system, 17,
    type: Google.Cloud.Datacatalog.V1.IntegratedSystem,
    json_name: "integratedSystem",
    enum: true,
    oneof: 1,
    deprecated: false

  field :user_specified_system, 18, type: :string, json_name: "userSpecifiedSystem", oneof: 1

  field :gcs_fileset_spec, 6,
    type: Google.Cloud.Datacatalog.V1.GcsFilesetSpec,
    json_name: "gcsFilesetSpec",
    oneof: 2

  field :bigquery_table_spec, 12,
    type: Google.Cloud.Datacatalog.V1.BigQueryTableSpec,
    json_name: "bigqueryTableSpec",
    oneof: 2

  field :bigquery_date_sharded_spec, 15,
    type: Google.Cloud.Datacatalog.V1.BigQueryDateShardedSpec,
    json_name: "bigqueryDateShardedSpec",
    oneof: 2

  field :database_table_spec, 24,
    type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec,
    json_name: "databaseTableSpec",
    oneof: 3

  field :data_source_connection_spec, 27,
    type: Google.Cloud.Datacatalog.V1.DataSourceConnectionSpec,
    json_name: "dataSourceConnectionSpec",
    oneof: 3

  field :routine_spec, 28,
    type: Google.Cloud.Datacatalog.V1.RoutineSpec,
    json_name: "routineSpec",
    oneof: 3

  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string
  field :schema, 5, type: Google.Cloud.Datacatalog.V1.Schema

  field :source_system_timestamps, 7,
    type: Google.Cloud.Datacatalog.V1.SystemTimestamps,
    json_name: "sourceSystemTimestamps"

  field :usage_signal, 13,
    type: Google.Cloud.Datacatalog.V1.UsageSignal,
    json_name: "usageSignal",
    deprecated: false

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Entry.LabelsEntry,
    map: true

  field :data_source, 20,
    type: Google.Cloud.Datacatalog.V1.DataSource,
    json_name: "dataSource",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.DatabaseTableSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec.TableType.t()
        }

  defstruct type: :TABLE_TYPE_UNSPECIFIED

  field :type, 1, type: Google.Cloud.Datacatalog.V1.DatabaseTableSpec.TableType, enum: true
end
defmodule Google.Cloud.Datacatalog.V1.DataSourceConnectionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bigquery_connection_spec: Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec.t() | nil
        }

  defstruct bigquery_connection_spec: nil

  field :bigquery_connection_spec, 1,
    type: Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec,
    json_name: "bigqueryConnectionSpec"
end
defmodule Google.Cloud.Datacatalog.V1.RoutineSpec.Argument do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          mode: Google.Cloud.Datacatalog.V1.RoutineSpec.Argument.Mode.t(),
          type: String.t()
        }

  defstruct name: "",
            mode: :MODE_UNSPECIFIED,
            type: ""

  field :name, 1, type: :string
  field :mode, 2, type: Google.Cloud.Datacatalog.V1.RoutineSpec.Argument.Mode, enum: true
  field :type, 3, type: :string
end
defmodule Google.Cloud.Datacatalog.V1.RoutineSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_spec:
            {:bigquery_routine_spec, Google.Cloud.Datacatalog.V1.BigQueryRoutineSpec.t() | nil},
          routine_type: Google.Cloud.Datacatalog.V1.RoutineSpec.RoutineType.t(),
          language: String.t(),
          routine_arguments: [Google.Cloud.Datacatalog.V1.RoutineSpec.Argument.t()],
          return_type: String.t(),
          definition_body: String.t()
        }

  defstruct system_spec: nil,
            routine_type: :ROUTINE_TYPE_UNSPECIFIED,
            language: "",
            routine_arguments: [],
            return_type: "",
            definition_body: ""

  oneof :system_spec, 0

  field :routine_type, 1,
    type: Google.Cloud.Datacatalog.V1.RoutineSpec.RoutineType,
    json_name: "routineType",
    enum: true

  field :language, 2, type: :string

  field :routine_arguments, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.RoutineSpec.Argument,
    json_name: "routineArguments"

  field :return_type, 4, type: :string, json_name: "returnType"
  field :definition_body, 5, type: :string, json_name: "definitionBody"

  field :bigquery_routine_spec, 6,
    type: Google.Cloud.Datacatalog.V1.BigQueryRoutineSpec,
    json_name: "bigqueryRoutineSpec",
    oneof: 0
end
defmodule Google.Cloud.Datacatalog.V1.EntryGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          data_catalog_timestamps: Google.Cloud.Datacatalog.V1.SystemTimestamps.t() | nil
        }

  defstruct name: "",
            display_name: "",
            description: "",
            data_catalog_timestamps: nil

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :data_catalog_timestamps, 4,
    type: Google.Cloud.Datacatalog.V1.SystemTimestamps,
    json_name: "dataCatalogTimestamps",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.CreateTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag_template_id: String.t(),
          tag_template: Google.Cloud.Datacatalog.V1.TagTemplate.t() | nil
        }

  defstruct parent: "",
            tag_template_id: "",
            tag_template: nil

  field :parent, 1, type: :string, deprecated: false
  field :tag_template_id, 3, type: :string, json_name: "tagTemplateId", deprecated: false

  field :tag_template, 2,
    type: Google.Cloud.Datacatalog.V1.TagTemplate,
    json_name: "tagTemplate",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.GetTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.UpdateTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_template: Google.Cloud.Datacatalog.V1.TagTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct tag_template: nil,
            update_mask: nil

  field :tag_template, 1,
    type: Google.Cloud.Datacatalog.V1.TagTemplate,
    json_name: "tagTemplate",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datacatalog.V1.DeleteTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.CreateTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag: Google.Cloud.Datacatalog.V1.Tag.t() | nil
        }

  defstruct parent: "",
            tag: nil

  field :parent, 1, type: :string, deprecated: false
  field :tag, 2, type: Google.Cloud.Datacatalog.V1.Tag, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.UpdateTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag: Google.Cloud.Datacatalog.V1.Tag.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct tag: nil,
            update_mask: nil

  field :tag, 1, type: Google.Cloud.Datacatalog.V1.Tag, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datacatalog.V1.DeleteTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.CreateTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag_template_field_id: String.t(),
          tag_template_field: Google.Cloud.Datacatalog.V1.TagTemplateField.t() | nil
        }

  defstruct parent: "",
            tag_template_field_id: "",
            tag_template_field: nil

  field :parent, 1, type: :string, deprecated: false

  field :tag_template_field_id, 2,
    type: :string,
    json_name: "tagTemplateFieldId",
    deprecated: false

  field :tag_template_field, 3,
    type: Google.Cloud.Datacatalog.V1.TagTemplateField,
    json_name: "tagTemplateField",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.UpdateTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          tag_template_field: Google.Cloud.Datacatalog.V1.TagTemplateField.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            tag_template_field: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false

  field :tag_template_field, 2,
    type: Google.Cloud.Datacatalog.V1.TagTemplateField,
    json_name: "tagTemplateField",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          new_tag_template_field_id: String.t()
        }

  defstruct name: "",
            new_tag_template_field_id: ""

  field :name, 1, type: :string, deprecated: false

  field :new_tag_template_field_id, 2,
    type: :string,
    json_name: "newTagTemplateFieldId",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldEnumValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          new_enum_value_display_name: String.t()
        }

  defstruct name: "",
            new_enum_value_display_name: ""

  field :name, 1, type: :string, deprecated: false

  field :new_enum_value_display_name, 2,
    type: :string,
    json_name: "newEnumValueDisplayName",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.DeleteTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.ListTagsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Datacatalog.V1.ListTagsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tags: [Google.Cloud.Datacatalog.V1.Tag.t()],
          next_page_token: String.t()
        }

  defstruct tags: [],
            next_page_token: ""

  field :tags, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Tag
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datacatalog.V1.ListEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :read_mask, 4, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Datacatalog.V1.ListEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Cloud.Datacatalog.V1.Entry.t()],
          next_page_token: String.t()
        }

  defstruct entries: [],
            next_page_token: ""

  field :entries, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Entry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datacatalog.V1.DataCatalog.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datacatalog.v1.DataCatalog"

  rpc :SearchCatalog,
      Google.Cloud.Datacatalog.V1.SearchCatalogRequest,
      Google.Cloud.Datacatalog.V1.SearchCatalogResponse

  rpc :CreateEntryGroup,
      Google.Cloud.Datacatalog.V1.CreateEntryGroupRequest,
      Google.Cloud.Datacatalog.V1.EntryGroup

  rpc :GetEntryGroup,
      Google.Cloud.Datacatalog.V1.GetEntryGroupRequest,
      Google.Cloud.Datacatalog.V1.EntryGroup

  rpc :UpdateEntryGroup,
      Google.Cloud.Datacatalog.V1.UpdateEntryGroupRequest,
      Google.Cloud.Datacatalog.V1.EntryGroup

  rpc :DeleteEntryGroup,
      Google.Cloud.Datacatalog.V1.DeleteEntryGroupRequest,
      Google.Protobuf.Empty

  rpc :ListEntryGroups,
      Google.Cloud.Datacatalog.V1.ListEntryGroupsRequest,
      Google.Cloud.Datacatalog.V1.ListEntryGroupsResponse

  rpc :CreateEntry,
      Google.Cloud.Datacatalog.V1.CreateEntryRequest,
      Google.Cloud.Datacatalog.V1.Entry

  rpc :UpdateEntry,
      Google.Cloud.Datacatalog.V1.UpdateEntryRequest,
      Google.Cloud.Datacatalog.V1.Entry

  rpc :DeleteEntry, Google.Cloud.Datacatalog.V1.DeleteEntryRequest, Google.Protobuf.Empty

  rpc :GetEntry, Google.Cloud.Datacatalog.V1.GetEntryRequest, Google.Cloud.Datacatalog.V1.Entry

  rpc :LookupEntry,
      Google.Cloud.Datacatalog.V1.LookupEntryRequest,
      Google.Cloud.Datacatalog.V1.Entry

  rpc :ListEntries,
      Google.Cloud.Datacatalog.V1.ListEntriesRequest,
      Google.Cloud.Datacatalog.V1.ListEntriesResponse

  rpc :CreateTagTemplate,
      Google.Cloud.Datacatalog.V1.CreateTagTemplateRequest,
      Google.Cloud.Datacatalog.V1.TagTemplate

  rpc :GetTagTemplate,
      Google.Cloud.Datacatalog.V1.GetTagTemplateRequest,
      Google.Cloud.Datacatalog.V1.TagTemplate

  rpc :UpdateTagTemplate,
      Google.Cloud.Datacatalog.V1.UpdateTagTemplateRequest,
      Google.Cloud.Datacatalog.V1.TagTemplate

  rpc :DeleteTagTemplate,
      Google.Cloud.Datacatalog.V1.DeleteTagTemplateRequest,
      Google.Protobuf.Empty

  rpc :CreateTagTemplateField,
      Google.Cloud.Datacatalog.V1.CreateTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :UpdateTagTemplateField,
      Google.Cloud.Datacatalog.V1.UpdateTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :RenameTagTemplateField,
      Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :RenameTagTemplateFieldEnumValue,
      Google.Cloud.Datacatalog.V1.RenameTagTemplateFieldEnumValueRequest,
      Google.Cloud.Datacatalog.V1.TagTemplateField

  rpc :DeleteTagTemplateField,
      Google.Cloud.Datacatalog.V1.DeleteTagTemplateFieldRequest,
      Google.Protobuf.Empty

  rpc :CreateTag, Google.Cloud.Datacatalog.V1.CreateTagRequest, Google.Cloud.Datacatalog.V1.Tag

  rpc :UpdateTag, Google.Cloud.Datacatalog.V1.UpdateTagRequest, Google.Cloud.Datacatalog.V1.Tag

  rpc :DeleteTag, Google.Cloud.Datacatalog.V1.DeleteTagRequest, Google.Protobuf.Empty

  rpc :ListTags,
      Google.Cloud.Datacatalog.V1.ListTagsRequest,
      Google.Cloud.Datacatalog.V1.ListTagsResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Datacatalog.V1.DataCatalog.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datacatalog.V1.DataCatalog.Service
end
