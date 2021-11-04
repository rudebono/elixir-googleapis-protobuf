defmodule Google.Cloud.Datacatalog.V1beta1.EntryType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ENTRY_TYPE_UNSPECIFIED | :TABLE | :MODEL | :DATA_STREAM | :FILESET

  field :ENTRY_TYPE_UNSPECIFIED, 0
  field :TABLE, 2
  field :MODEL, 5
  field :DATA_STREAM, 3
  field :FILESET, 4
end

defmodule Google.Cloud.Datacatalog.V1beta1.SearchCatalogRequest.Scope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_org_ids: [String.t()],
          include_project_ids: [String.t()],
          include_gcp_public_datasets: boolean
        }

  defstruct [:include_org_ids, :include_project_ids, :include_gcp_public_datasets]

  field :include_org_ids, 2, repeated: true, type: :string, json_name: "includeOrgIds"
  field :include_project_ids, 3, repeated: true, type: :string, json_name: "includeProjectIds"
  field :include_gcp_public_datasets, 7, type: :bool, json_name: "includeGcpPublicDatasets"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.SearchCatalogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Google.Cloud.Datacatalog.V1beta1.SearchCatalogRequest.Scope.t() | nil,
          query: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct [:scope, :query, :page_size, :page_token, :order_by]

  field :scope, 6, type: Google.Cloud.Datacatalog.V1beta1.SearchCatalogRequest.Scope
  field :query, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.SearchCatalogResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Datacatalog.V1beta1.SearchCatalogResult.t()],
          next_page_token: String.t()
        }

  defstruct [:results, :next_page_token]

  field :results, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.SearchCatalogResult
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreateEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entry_group_id: String.t(),
          entry_group: Google.Cloud.Datacatalog.V1beta1.EntryGroup.t() | nil
        }

  defstruct [:parent, :entry_group_id, :entry_group]

  field :parent, 1, type: :string
  field :entry_group_id, 3, type: :string, json_name: "entryGroupId"

  field :entry_group, 2,
    type: Google.Cloud.Datacatalog.V1beta1.EntryGroup,
    json_name: "entryGroup"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_group: Google.Cloud.Datacatalog.V1beta1.EntryGroup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:entry_group, :update_mask]

  field :entry_group, 1,
    type: Google.Cloud.Datacatalog.V1beta1.EntryGroup,
    json_name: "entryGroup"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListEntryGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListEntryGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_groups: [Google.Cloud.Datacatalog.V1beta1.EntryGroup.t()],
          next_page_token: String.t()
        }

  defstruct [:entry_groups, :next_page_token]

  field :entry_groups, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.EntryGroup,
    json_name: "entryGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreateEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entry_id: String.t(),
          entry: Google.Cloud.Datacatalog.V1beta1.Entry.t() | nil
        }

  defstruct [:parent, :entry_id, :entry]

  field :parent, 1, type: :string
  field :entry_id, 3, type: :string, json_name: "entryId"
  field :entry, 2, type: Google.Cloud.Datacatalog.V1beta1.Entry

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry: Google.Cloud.Datacatalog.V1beta1.Entry.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:entry, :update_mask]

  field :entry, 1, type: Google.Cloud.Datacatalog.V1beta1.Entry
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.LookupEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_name: {:linked_resource, String.t()} | {:sql_resource, String.t()}
        }

  defstruct [:target_name]

  oneof :target_name, 0

  field :linked_resource, 1, type: :string, json_name: "linkedResource", oneof: 0
  field :sql_resource, 3, type: :string, json_name: "sqlResource", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_type:
            {:type, Google.Cloud.Datacatalog.V1beta1.EntryType.t()}
            | {:user_specified_type, String.t()},
          system:
            {:integrated_system, Google.Cloud.Datacatalog.V1beta1.IntegratedSystem.t()}
            | {:user_specified_system, String.t()},
          type_spec:
            {:gcs_fileset_spec, Google.Cloud.Datacatalog.V1beta1.GcsFilesetSpec.t() | nil}
            | {:bigquery_table_spec, Google.Cloud.Datacatalog.V1beta1.BigQueryTableSpec.t() | nil}
            | {:bigquery_date_sharded_spec,
               Google.Cloud.Datacatalog.V1beta1.BigQueryDateShardedSpec.t() | nil},
          name: String.t(),
          linked_resource: String.t(),
          display_name: String.t(),
          description: String.t(),
          schema: Google.Cloud.Datacatalog.V1beta1.Schema.t() | nil,
          source_system_timestamps: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps.t() | nil
        }

  defstruct [
    :entry_type,
    :system,
    :type_spec,
    :name,
    :linked_resource,
    :display_name,
    :description,
    :schema,
    :source_system_timestamps
  ]

  oneof :entry_type, 0
  oneof :system, 1
  oneof :type_spec, 2

  field :name, 1, type: :string
  field :linked_resource, 9, type: :string, json_name: "linkedResource"
  field :type, 2, type: Google.Cloud.Datacatalog.V1beta1.EntryType, enum: true, oneof: 0
  field :user_specified_type, 16, type: :string, json_name: "userSpecifiedType", oneof: 0

  field :integrated_system, 17,
    type: Google.Cloud.Datacatalog.V1beta1.IntegratedSystem,
    enum: true,
    json_name: "integratedSystem",
    oneof: 1

  field :user_specified_system, 18, type: :string, json_name: "userSpecifiedSystem", oneof: 1

  field :gcs_fileset_spec, 6,
    type: Google.Cloud.Datacatalog.V1beta1.GcsFilesetSpec,
    json_name: "gcsFilesetSpec",
    oneof: 2

  field :bigquery_table_spec, 12,
    type: Google.Cloud.Datacatalog.V1beta1.BigQueryTableSpec,
    json_name: "bigqueryTableSpec",
    oneof: 2

  field :bigquery_date_sharded_spec, 15,
    type: Google.Cloud.Datacatalog.V1beta1.BigQueryDateShardedSpec,
    json_name: "bigqueryDateShardedSpec",
    oneof: 2

  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string
  field :schema, 5, type: Google.Cloud.Datacatalog.V1beta1.Schema

  field :source_system_timestamps, 7,
    type: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps,
    json_name: "sourceSystemTimestamps"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.EntryGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          data_catalog_timestamps: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps.t() | nil
        }

  defstruct [:name, :display_name, :description, :data_catalog_timestamps]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :data_catalog_timestamps, 4,
    type: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps,
    json_name: "dataCatalogTimestamps"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreateTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag_template_id: String.t(),
          tag_template: Google.Cloud.Datacatalog.V1beta1.TagTemplate.t() | nil
        }

  defstruct [:parent, :tag_template_id, :tag_template]

  field :parent, 1, type: :string
  field :tag_template_id, 3, type: :string, json_name: "tagTemplateId"

  field :tag_template, 2,
    type: Google.Cloud.Datacatalog.V1beta1.TagTemplate,
    json_name: "tagTemplate"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_template: Google.Cloud.Datacatalog.V1beta1.TagTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:tag_template, :update_mask]

  field :tag_template, 1,
    type: Google.Cloud.Datacatalog.V1beta1.TagTemplate,
    json_name: "tagTemplate"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreateTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag: Google.Cloud.Datacatalog.V1beta1.Tag.t() | nil
        }

  defstruct [:parent, :tag]

  field :parent, 1, type: :string
  field :tag, 2, type: Google.Cloud.Datacatalog.V1beta1.Tag

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag: Google.Cloud.Datacatalog.V1beta1.Tag.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:tag, :update_mask]

  field :tag, 1, type: Google.Cloud.Datacatalog.V1beta1.Tag
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreateTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tag_template_field_id: String.t(),
          tag_template_field: Google.Cloud.Datacatalog.V1beta1.TagTemplateField.t() | nil
        }

  defstruct [:parent, :tag_template_field_id, :tag_template_field]

  field :parent, 1, type: :string
  field :tag_template_field_id, 2, type: :string, json_name: "tagTemplateFieldId"

  field :tag_template_field, 3,
    type: Google.Cloud.Datacatalog.V1beta1.TagTemplateField,
    json_name: "tagTemplateField"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          tag_template_field: Google.Cloud.Datacatalog.V1beta1.TagTemplateField.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :tag_template_field, :update_mask]

  field :name, 1, type: :string

  field :tag_template_field, 2,
    type: Google.Cloud.Datacatalog.V1beta1.TagTemplateField,
    json_name: "tagTemplateField"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.RenameTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          new_tag_template_field_id: String.t()
        }

  defstruct [:name, :new_tag_template_field_id]

  field :name, 1, type: :string
  field :new_tag_template_field_id, 2, type: :string, json_name: "newTagTemplateFieldId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteTagTemplateFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListTagsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListTagsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tags: [Google.Cloud.Datacatalog.V1beta1.Tag.t()],
          next_page_token: String.t()
        }

  defstruct [:tags, :next_page_token]

  field :tags, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Tag
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :read_mask, 4, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Cloud.Datacatalog.V1beta1.Entry.t()],
          next_page_token: String.t()
        }

  defstruct [:entries, :next_page_token]

  field :entries, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Entry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DataCatalog.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datacatalog.v1beta1.DataCatalog"

  rpc :SearchCatalog,
      Google.Cloud.Datacatalog.V1beta1.SearchCatalogRequest,
      Google.Cloud.Datacatalog.V1beta1.SearchCatalogResponse

  rpc :CreateEntryGroup,
      Google.Cloud.Datacatalog.V1beta1.CreateEntryGroupRequest,
      Google.Cloud.Datacatalog.V1beta1.EntryGroup

  rpc :UpdateEntryGroup,
      Google.Cloud.Datacatalog.V1beta1.UpdateEntryGroupRequest,
      Google.Cloud.Datacatalog.V1beta1.EntryGroup

  rpc :GetEntryGroup,
      Google.Cloud.Datacatalog.V1beta1.GetEntryGroupRequest,
      Google.Cloud.Datacatalog.V1beta1.EntryGroup

  rpc :DeleteEntryGroup,
      Google.Cloud.Datacatalog.V1beta1.DeleteEntryGroupRequest,
      Google.Protobuf.Empty

  rpc :ListEntryGroups,
      Google.Cloud.Datacatalog.V1beta1.ListEntryGroupsRequest,
      Google.Cloud.Datacatalog.V1beta1.ListEntryGroupsResponse

  rpc :CreateEntry,
      Google.Cloud.Datacatalog.V1beta1.CreateEntryRequest,
      Google.Cloud.Datacatalog.V1beta1.Entry

  rpc :UpdateEntry,
      Google.Cloud.Datacatalog.V1beta1.UpdateEntryRequest,
      Google.Cloud.Datacatalog.V1beta1.Entry

  rpc :DeleteEntry, Google.Cloud.Datacatalog.V1beta1.DeleteEntryRequest, Google.Protobuf.Empty

  rpc :GetEntry,
      Google.Cloud.Datacatalog.V1beta1.GetEntryRequest,
      Google.Cloud.Datacatalog.V1beta1.Entry

  rpc :LookupEntry,
      Google.Cloud.Datacatalog.V1beta1.LookupEntryRequest,
      Google.Cloud.Datacatalog.V1beta1.Entry

  rpc :ListEntries,
      Google.Cloud.Datacatalog.V1beta1.ListEntriesRequest,
      Google.Cloud.Datacatalog.V1beta1.ListEntriesResponse

  rpc :CreateTagTemplate,
      Google.Cloud.Datacatalog.V1beta1.CreateTagTemplateRequest,
      Google.Cloud.Datacatalog.V1beta1.TagTemplate

  rpc :GetTagTemplate,
      Google.Cloud.Datacatalog.V1beta1.GetTagTemplateRequest,
      Google.Cloud.Datacatalog.V1beta1.TagTemplate

  rpc :UpdateTagTemplate,
      Google.Cloud.Datacatalog.V1beta1.UpdateTagTemplateRequest,
      Google.Cloud.Datacatalog.V1beta1.TagTemplate

  rpc :DeleteTagTemplate,
      Google.Cloud.Datacatalog.V1beta1.DeleteTagTemplateRequest,
      Google.Protobuf.Empty

  rpc :CreateTagTemplateField,
      Google.Cloud.Datacatalog.V1beta1.CreateTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1beta1.TagTemplateField

  rpc :UpdateTagTemplateField,
      Google.Cloud.Datacatalog.V1beta1.UpdateTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1beta1.TagTemplateField

  rpc :RenameTagTemplateField,
      Google.Cloud.Datacatalog.V1beta1.RenameTagTemplateFieldRequest,
      Google.Cloud.Datacatalog.V1beta1.TagTemplateField

  rpc :DeleteTagTemplateField,
      Google.Cloud.Datacatalog.V1beta1.DeleteTagTemplateFieldRequest,
      Google.Protobuf.Empty

  rpc :CreateTag,
      Google.Cloud.Datacatalog.V1beta1.CreateTagRequest,
      Google.Cloud.Datacatalog.V1beta1.Tag

  rpc :UpdateTag,
      Google.Cloud.Datacatalog.V1beta1.UpdateTagRequest,
      Google.Cloud.Datacatalog.V1beta1.Tag

  rpc :DeleteTag, Google.Cloud.Datacatalog.V1beta1.DeleteTagRequest, Google.Protobuf.Empty

  rpc :ListTags,
      Google.Cloud.Datacatalog.V1beta1.ListTagsRequest,
      Google.Cloud.Datacatalog.V1beta1.ListTagsResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Datacatalog.V1beta1.DataCatalog.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datacatalog.V1beta1.DataCatalog.Service
end
