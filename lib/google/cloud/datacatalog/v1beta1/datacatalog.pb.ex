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

  field :include_org_ids, 2, repeated: true, type: :string
  field :include_project_ids, 3, repeated: true, type: :string
  field :include_gcp_public_datasets, 7, type: :bool
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :order_by, 5, type: :string
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
  field :next_page_token, 3, type: :string
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
  field :entry_group_id, 3, type: :string
  field :entry_group, 2, type: Google.Cloud.Datacatalog.V1beta1.EntryGroup
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateEntryGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_group: Google.Cloud.Datacatalog.V1beta1.EntryGroup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:entry_group, :update_mask]

  field :entry_group, 1, type: Google.Cloud.Datacatalog.V1beta1.EntryGroup
  field :update_mask, 2, type: Google.Protobuf.FieldMask
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
  field :read_mask, 2, type: Google.Protobuf.FieldMask
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListEntryGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_groups: [Google.Cloud.Datacatalog.V1beta1.EntryGroup.t()],
          next_page_token: String.t()
        }

  defstruct [:entry_groups, :next_page_token]

  field :entry_groups, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.EntryGroup
  field :next_page_token, 2, type: :string
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
  field :entry_id, 3, type: :string
  field :entry, 2, type: Google.Cloud.Datacatalog.V1beta1.Entry
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1beta1.LookupEntryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_name: {atom, any}
        }

  defstruct [:target_name]

  oneof :target_name, 0
  field :linked_resource, 1, type: :string, oneof: 0
  field :sql_resource, 3, type: :string, oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1beta1.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entry_type: {atom, any},
          system: {atom, any},
          type_spec: {atom, any},
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
  field :linked_resource, 9, type: :string
  field :type, 2, type: Google.Cloud.Datacatalog.V1beta1.EntryType, enum: true, oneof: 0
  field :user_specified_type, 16, type: :string, oneof: 0

  field :integrated_system, 17,
    type: Google.Cloud.Datacatalog.V1beta1.IntegratedSystem,
    enum: true,
    oneof: 1

  field :user_specified_system, 18, type: :string, oneof: 1
  field :gcs_fileset_spec, 6, type: Google.Cloud.Datacatalog.V1beta1.GcsFilesetSpec, oneof: 2

  field :bigquery_table_spec, 12,
    type: Google.Cloud.Datacatalog.V1beta1.BigQueryTableSpec,
    oneof: 2

  field :bigquery_date_sharded_spec, 15,
    type: Google.Cloud.Datacatalog.V1beta1.BigQueryDateShardedSpec,
    oneof: 2

  field :display_name, 3, type: :string
  field :description, 4, type: :string
  field :schema, 5, type: Google.Cloud.Datacatalog.V1beta1.Schema
  field :source_system_timestamps, 7, type: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps
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
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :data_catalog_timestamps, 4, type: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps
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
  field :tag_template_id, 3, type: :string
  field :tag_template, 2, type: Google.Cloud.Datacatalog.V1beta1.TagTemplate
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateTagTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_template: Google.Cloud.Datacatalog.V1beta1.TagTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:tag_template, :update_mask]

  field :tag_template, 1, type: Google.Cloud.Datacatalog.V1beta1.TagTemplate
  field :update_mask, 2, type: Google.Protobuf.FieldMask
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :tag_template_field_id, 2, type: :string
  field :tag_template_field, 3, type: Google.Cloud.Datacatalog.V1beta1.TagTemplateField
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
  field :tag_template_field, 2, type: Google.Cloud.Datacatalog.V1beta1.TagTemplateField
  field :update_mask, 3, type: Google.Protobuf.FieldMask
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
  field :new_tag_template_field_id, 2, type: :string
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
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
  field :next_page_token, 2, type: :string
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :read_mask, 4, type: Google.Protobuf.FieldMask
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
  field :next_page_token, 2, type: :string
end
