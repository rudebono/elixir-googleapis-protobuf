defmodule Google.Cloud.Osconfig.V1alpha.InventoryView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INVENTORY_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :INVENTORY_VIEW_UNSPECIFIED, 0

  field :BASIC, 1

  field :FULL, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.Item.OriginType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIGIN_TYPE_UNSPECIFIED | :INVENTORY_REPORT

  field :ORIGIN_TYPE_UNSPECIFIED, 0

  field :INVENTORY_REPORT, 1
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.Item.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :INSTALLED_PACKAGE | :AVAILABLE_PACKAGE

  field :TYPE_UNSPECIFIED, 0

  field :INSTALLED_PACKAGE, 1

  field :AVAILABLE_PACKAGE, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.OsInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hostname: String.t(),
          long_name: String.t(),
          short_name: String.t(),
          version: String.t(),
          architecture: String.t(),
          kernel_version: String.t(),
          kernel_release: String.t(),
          osconfig_agent_version: String.t()
        }

  defstruct [
    :hostname,
    :long_name,
    :short_name,
    :version,
    :architecture,
    :kernel_version,
    :kernel_release,
    :osconfig_agent_version
  ]

  field :hostname, 9, type: :string
  field :long_name, 2, type: :string
  field :short_name, 3, type: :string
  field :version, 4, type: :string
  field :architecture, 5, type: :string
  field :kernel_version, 6, type: :string
  field :kernel_release, 7, type: :string
  field :osconfig_agent_version, 8, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any},
          id: String.t(),
          origin_type: Google.Cloud.Osconfig.V1alpha.Inventory.Item.OriginType.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          type: Google.Cloud.Osconfig.V1alpha.Inventory.Item.Type.t()
        }

  defstruct [:details, :id, :origin_type, :create_time, :update_time, :type]

  oneof :details, 0
  field :id, 1, type: :string
  field :origin_type, 2, type: Google.Cloud.Osconfig.V1alpha.Inventory.Item.OriginType, enum: true
  field :create_time, 8, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :type, 5, type: Google.Cloud.Osconfig.V1alpha.Inventory.Item.Type, enum: true

  field :installed_package, 6,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.SoftwarePackage,
    oneof: 0

  field :available_package, 7,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.SoftwarePackage,
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.SoftwarePackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any}
        }

  defstruct [:details]

  oneof :details, 0
  field :yum_package, 1, type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage, oneof: 0
  field :apt_package, 2, type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage, oneof: 0

  field :zypper_package, 3,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    oneof: 0

  field :googet_package, 4,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    oneof: 0

  field :zypper_patch, 5, type: Google.Cloud.Osconfig.V1alpha.Inventory.ZypperPatch, oneof: 0

  field :wua_package, 6,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage,
    oneof: 0

  field :qfe_package, 7,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsQuickFixEngineeringPackage,
    oneof: 0

  field :cos_package, 8, type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage, oneof: 0

  field :windows_application, 9,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsApplication,
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          package_name: String.t(),
          architecture: String.t(),
          version: String.t()
        }

  defstruct [:package_name, :architecture, :version]

  field :package_name, 4, type: :string
  field :architecture, 2, type: :string
  field :version, 3, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.ZypperPatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_name: String.t(),
          category: String.t(),
          severity: String.t(),
          summary: String.t()
        }

  defstruct [:patch_name, :category, :severity, :summary]

  field :patch_name, 5, type: :string
  field :category, 2, type: :string
  field :severity, 3, type: :string
  field :summary, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage.WindowsUpdateCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t()
        }

  defstruct [:id, :name]

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          description: String.t(),
          categories: [
            Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage.WindowsUpdateCategory.t()
          ],
          kb_article_ids: [String.t()],
          support_url: String.t(),
          more_info_urls: [String.t()],
          update_id: String.t(),
          revision_number: integer,
          last_deployment_change_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :title,
    :description,
    :categories,
    :kb_article_ids,
    :support_url,
    :more_info_urls,
    :update_id,
    :revision_number,
    :last_deployment_change_time
  ]

  field :title, 1, type: :string
  field :description, 2, type: :string

  field :categories, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage.WindowsUpdateCategory

  field :kb_article_ids, 4, repeated: true, type: :string
  field :support_url, 11, type: :string
  field :more_info_urls, 5, repeated: true, type: :string
  field :update_id, 6, type: :string
  field :revision_number, 7, type: :int32
  field :last_deployment_change_time, 10, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsQuickFixEngineeringPackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caption: String.t(),
          description: String.t(),
          hot_fix_id: String.t(),
          install_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:caption, :description, :hot_fix_id, :install_time]

  field :caption, 1, type: :string
  field :description, 2, type: :string
  field :hot_fix_id, 3, type: :string
  field :install_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsApplication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          display_version: String.t(),
          publisher: String.t(),
          install_date: Google.Type.Date.t() | nil,
          help_link: String.t()
        }

  defstruct [:display_name, :display_version, :publisher, :install_date, :help_link]

  field :display_name, 1, type: :string
  field :display_version, 2, type: :string
  field :publisher, 3, type: :string
  field :install_date, 4, type: Google.Type.Date
  field :help_link, 5, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Osconfig.V1alpha.Inventory.Item.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Osconfig.V1alpha.Inventory.Item
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          os_info: Google.Cloud.Osconfig.V1alpha.Inventory.OsInfo.t() | nil,
          items: %{String.t() => Google.Cloud.Osconfig.V1alpha.Inventory.Item.t() | nil},
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :os_info, :items, :update_time]

  field :name, 3, type: :string
  field :os_info, 1, type: Google.Cloud.Osconfig.V1alpha.Inventory.OsInfo

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.ItemsEntry,
    map: true

  field :update_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.V1alpha.GetInventoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Osconfig.V1alpha.InventoryView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Osconfig.V1alpha.InventoryView, enum: true
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInventoriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Cloud.Osconfig.V1alpha.InventoryView.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :view, 2, type: Google.Cloud.Osconfig.V1alpha.InventoryView, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInventoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inventories: [Google.Cloud.Osconfig.V1alpha.Inventory.t()],
          next_page_token: String.t()
        }

  defstruct [:inventories, :next_page_token]

  field :inventories, 1, repeated: true, type: Google.Cloud.Osconfig.V1alpha.Inventory
  field :next_page_token, 2, type: :string
end
