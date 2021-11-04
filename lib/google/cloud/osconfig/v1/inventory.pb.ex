defmodule Google.Cloud.Osconfig.V1.InventoryView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INVENTORY_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :INVENTORY_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Osconfig.V1.Inventory.Item.OriginType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIGIN_TYPE_UNSPECIFIED | :INVENTORY_REPORT

  field :ORIGIN_TYPE_UNSPECIFIED, 0
  field :INVENTORY_REPORT, 1
end

defmodule Google.Cloud.Osconfig.V1.Inventory.Item.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :INSTALLED_PACKAGE | :AVAILABLE_PACKAGE

  field :TYPE_UNSPECIFIED, 0
  field :INSTALLED_PACKAGE, 1
  field :AVAILABLE_PACKAGE, 2
end

defmodule Google.Cloud.Osconfig.V1.Inventory.OsInfo do
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
  field :long_name, 2, type: :string, json_name: "longName"
  field :short_name, 3, type: :string, json_name: "shortName"
  field :version, 4, type: :string
  field :architecture, 5, type: :string
  field :kernel_version, 6, type: :string, json_name: "kernelVersion"
  field :kernel_release, 7, type: :string, json_name: "kernelRelease"
  field :osconfig_agent_version, 8, type: :string, json_name: "osconfigAgentVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:installed_package, Google.Cloud.Osconfig.V1.Inventory.SoftwarePackage.t() | nil}
            | {:available_package, Google.Cloud.Osconfig.V1.Inventory.SoftwarePackage.t() | nil},
          id: String.t(),
          origin_type: Google.Cloud.Osconfig.V1.Inventory.Item.OriginType.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          type: Google.Cloud.Osconfig.V1.Inventory.Item.Type.t()
        }

  defstruct [:details, :id, :origin_type, :create_time, :update_time, :type]

  oneof :details, 0

  field :id, 1, type: :string

  field :origin_type, 2,
    type: Google.Cloud.Osconfig.V1.Inventory.Item.OriginType,
    enum: true,
    json_name: "originType"

  field :create_time, 8, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 9, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :type, 5, type: Google.Cloud.Osconfig.V1.Inventory.Item.Type, enum: true

  field :installed_package, 6,
    type: Google.Cloud.Osconfig.V1.Inventory.SoftwarePackage,
    json_name: "installedPackage",
    oneof: 0

  field :available_package, 7,
    type: Google.Cloud.Osconfig.V1.Inventory.SoftwarePackage,
    json_name: "availablePackage",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.SoftwarePackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:yum_package, Google.Cloud.Osconfig.V1.Inventory.VersionedPackage.t() | nil}
            | {:apt_package, Google.Cloud.Osconfig.V1.Inventory.VersionedPackage.t() | nil}
            | {:zypper_package, Google.Cloud.Osconfig.V1.Inventory.VersionedPackage.t() | nil}
            | {:googet_package, Google.Cloud.Osconfig.V1.Inventory.VersionedPackage.t() | nil}
            | {:zypper_patch, Google.Cloud.Osconfig.V1.Inventory.ZypperPatch.t() | nil}
            | {:wua_package, Google.Cloud.Osconfig.V1.Inventory.WindowsUpdatePackage.t() | nil}
            | {:qfe_package,
               Google.Cloud.Osconfig.V1.Inventory.WindowsQuickFixEngineeringPackage.t() | nil}
            | {:cos_package, Google.Cloud.Osconfig.V1.Inventory.VersionedPackage.t() | nil}
            | {:windows_application,
               Google.Cloud.Osconfig.V1.Inventory.WindowsApplication.t() | nil}
        }

  defstruct [:details]

  oneof :details, 0

  field :yum_package, 1,
    type: Google.Cloud.Osconfig.V1.Inventory.VersionedPackage,
    json_name: "yumPackage",
    oneof: 0

  field :apt_package, 2,
    type: Google.Cloud.Osconfig.V1.Inventory.VersionedPackage,
    json_name: "aptPackage",
    oneof: 0

  field :zypper_package, 3,
    type: Google.Cloud.Osconfig.V1.Inventory.VersionedPackage,
    json_name: "zypperPackage",
    oneof: 0

  field :googet_package, 4,
    type: Google.Cloud.Osconfig.V1.Inventory.VersionedPackage,
    json_name: "googetPackage",
    oneof: 0

  field :zypper_patch, 5,
    type: Google.Cloud.Osconfig.V1.Inventory.ZypperPatch,
    json_name: "zypperPatch",
    oneof: 0

  field :wua_package, 6,
    type: Google.Cloud.Osconfig.V1.Inventory.WindowsUpdatePackage,
    json_name: "wuaPackage",
    oneof: 0

  field :qfe_package, 7,
    type: Google.Cloud.Osconfig.V1.Inventory.WindowsQuickFixEngineeringPackage,
    json_name: "qfePackage",
    oneof: 0

  field :cos_package, 8,
    type: Google.Cloud.Osconfig.V1.Inventory.VersionedPackage,
    json_name: "cosPackage",
    oneof: 0

  field :windows_application, 9,
    type: Google.Cloud.Osconfig.V1.Inventory.WindowsApplication,
    json_name: "windowsApplication",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.VersionedPackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          package_name: String.t(),
          architecture: String.t(),
          version: String.t()
        }

  defstruct [:package_name, :architecture, :version]

  field :package_name, 4, type: :string, json_name: "packageName"
  field :architecture, 2, type: :string
  field :version, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.ZypperPatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_name: String.t(),
          category: String.t(),
          severity: String.t(),
          summary: String.t()
        }

  defstruct [:patch_name, :category, :severity, :summary]

  field :patch_name, 5, type: :string, json_name: "patchName"
  field :category, 2, type: :string
  field :severity, 3, type: :string
  field :summary, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t()
        }

  defstruct [:id, :name]

  field :id, 1, type: :string
  field :name, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.WindowsUpdatePackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          description: String.t(),
          categories: [
            Google.Cloud.Osconfig.V1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory.t()
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
    type: Google.Cloud.Osconfig.V1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory

  field :kb_article_ids, 4, repeated: true, type: :string, json_name: "kbArticleIds"
  field :support_url, 11, type: :string, json_name: "supportUrl"
  field :more_info_urls, 5, repeated: true, type: :string, json_name: "moreInfoUrls"
  field :update_id, 6, type: :string, json_name: "updateId"
  field :revision_number, 7, type: :int32, json_name: "revisionNumber"

  field :last_deployment_change_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "lastDeploymentChangeTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.WindowsQuickFixEngineeringPackage do
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
  field :hot_fix_id, 3, type: :string, json_name: "hotFixId"
  field :install_time, 5, type: Google.Protobuf.Timestamp, json_name: "installTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.WindowsApplication do
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

  field :display_name, 1, type: :string, json_name: "displayName"
  field :display_version, 2, type: :string, json_name: "displayVersion"
  field :publisher, 3, type: :string
  field :install_date, 4, type: Google.Type.Date, json_name: "installDate"
  field :help_link, 5, type: :string, json_name: "helpLink"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory.ItemsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Osconfig.V1.Inventory.Item.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Osconfig.V1.Inventory.Item

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.Inventory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          os_info: Google.Cloud.Osconfig.V1.Inventory.OsInfo.t() | nil,
          items: %{String.t() => Google.Cloud.Osconfig.V1.Inventory.Item.t() | nil},
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :os_info, :items, :update_time]

  field :name, 3, type: :string
  field :os_info, 1, type: Google.Cloud.Osconfig.V1.Inventory.OsInfo, json_name: "osInfo"
  field :items, 2, repeated: true, type: Google.Cloud.Osconfig.V1.Inventory.ItemsEntry, map: true
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.GetInventoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Osconfig.V1.InventoryView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Osconfig.V1.InventoryView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.ListInventoriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Cloud.Osconfig.V1.InventoryView.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :view, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :view, 2, type: Google.Cloud.Osconfig.V1.InventoryView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.ListInventoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inventories: [Google.Cloud.Osconfig.V1.Inventory.t()],
          next_page_token: String.t()
        }

  defstruct [:inventories, :next_page_token]

  field :inventories, 1, repeated: true, type: Google.Cloud.Osconfig.V1.Inventory
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end
