defmodule Google.Cloud.Osconfig.V1alpha.InventoryView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INVENTORY_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.Item.OriginType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ORIGIN_TYPE_UNSPECIFIED, 0
  field :INVENTORY_REPORT, 1
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.Item.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INSTALLED_PACKAGE, 1
  field :AVAILABLE_PACKAGE, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.OsInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hostname, 9, type: :string
  field :long_name, 2, type: :string, json_name: "longName"
  field :short_name, 3, type: :string, json_name: "shortName"
  field :version, 4, type: :string
  field :architecture, 5, type: :string
  field :kernel_version, 6, type: :string, json_name: "kernelVersion"
  field :kernel_release, 7, type: :string, json_name: "kernelRelease"
  field :osconfig_agent_version, 8, type: :string, json_name: "osconfigAgentVersion"
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.Item do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :details, 0

  field :id, 1, type: :string

  field :origin_type, 2,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.Item.OriginType,
    json_name: "originType",
    enum: true

  field :create_time, 8, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 9, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :type, 5, type: Google.Cloud.Osconfig.V1alpha.Inventory.Item.Type, enum: true

  field :installed_package, 6,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.SoftwarePackage,
    json_name: "installedPackage",
    oneof: 0

  field :available_package, 7,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.SoftwarePackage,
    json_name: "availablePackage",
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.SoftwarePackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :details, 0

  field :yum_package, 1,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    json_name: "yumPackage",
    oneof: 0

  field :apt_package, 2,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    json_name: "aptPackage",
    oneof: 0

  field :zypper_package, 3,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    json_name: "zypperPackage",
    oneof: 0

  field :googet_package, 4,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    json_name: "googetPackage",
    oneof: 0

  field :zypper_patch, 5,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.ZypperPatch,
    json_name: "zypperPatch",
    oneof: 0

  field :wua_package, 6,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage,
    json_name: "wuaPackage",
    oneof: 0

  field :qfe_package, 7,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsQuickFixEngineeringPackage,
    json_name: "qfePackage",
    oneof: 0

  field :cos_package, 8,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage,
    json_name: "cosPackage",
    oneof: 0

  field :windows_application, 9,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsApplication,
    json_name: "windowsApplication",
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.VersionedPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :package_name, 4, type: :string, json_name: "packageName"
  field :architecture, 2, type: :string
  field :version, 3, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.ZypperPatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :patch_name, 5, type: :string, json_name: "patchName"
  field :category, 2, type: :string
  field :severity, 3, type: :string
  field :summary, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage.WindowsUpdateCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string

  field :categories, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.WindowsUpdatePackage.WindowsUpdateCategory

  field :kb_article_ids, 4, repeated: true, type: :string, json_name: "kbArticleIds"
  field :support_url, 11, type: :string, json_name: "supportUrl"
  field :more_info_urls, 5, repeated: true, type: :string, json_name: "moreInfoUrls"
  field :update_id, 6, type: :string, json_name: "updateId"
  field :revision_number, 7, type: :int32, json_name: "revisionNumber"

  field :last_deployment_change_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "lastDeploymentChangeTime"
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsQuickFixEngineeringPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :caption, 1, type: :string
  field :description, 2, type: :string
  field :hot_fix_id, 3, type: :string, json_name: "hotFixId"
  field :install_time, 5, type: Google.Protobuf.Timestamp, json_name: "installTime"
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.WindowsApplication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :display_version, 2, type: :string, json_name: "displayVersion"
  field :publisher, 3, type: :string
  field :install_date, 4, type: Google.Type.Date, json_name: "installDate"
  field :help_link, 5, type: :string, json_name: "helpLink"
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory.ItemsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Osconfig.V1alpha.Inventory.Item
end

defmodule Google.Cloud.Osconfig.V1alpha.Inventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 3, type: :string, deprecated: false

  field :os_info, 1,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.OsInfo,
    json_name: "osInfo",
    deprecated: false

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.Inventory.ItemsEntry,
    map: true,
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.GetInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Osconfig.V1alpha.InventoryView, enum: true
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Osconfig.V1alpha.InventoryView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inventories, 1, repeated: true, type: Google.Cloud.Osconfig.V1alpha.Inventory
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
