defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.OsInfo do
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

  field :hostname, 1, type: :string
  field :long_name, 2, type: :string
  field :short_name, 3, type: :string
  field :version, 4, type: :string
  field :architecture, 5, type: :string
  field :kernel_version, 6, type: :string
  field :kernel_release, 7, type: :string
  field :osconfig_agent_version, 8, type: :string
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.SoftwarePackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any}
        }

  defstruct [:details]

  oneof :details, 0

  field :yum_package, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.VersionedPackage,
    oneof: 0

  field :apt_package, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.VersionedPackage,
    oneof: 0

  field :zypper_package, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.VersionedPackage,
    oneof: 0

  field :googet_package, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.VersionedPackage,
    oneof: 0

  field :zypper_patch, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.ZypperPatch,
    oneof: 0

  field :wua_package, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsUpdatePackage,
    oneof: 0

  field :qfe_package, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsQuickFixEngineeringPackage,
    oneof: 0

  field :cos_package, 8,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.VersionedPackage,
    oneof: 0

  field :windows_application, 9,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsApplication,
    oneof: 0
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.VersionedPackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          package_name: String.t(),
          architecture: String.t(),
          version: String.t()
        }

  defstruct [:package_name, :architecture, :version]

  field :package_name, 1, type: :string
  field :architecture, 2, type: :string
  field :version, 3, type: :string
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsQuickFixEngineeringPackage do
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
  field :install_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.ZypperPatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_name: String.t(),
          category: String.t(),
          severity: String.t(),
          summary: String.t()
        }

  defstruct [:patch_name, :category, :severity, :summary]

  field :patch_name, 1, type: :string
  field :category, 2, type: :string
  field :severity, 3, type: :string
  field :summary, 4, type: :string
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory do
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

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsUpdatePackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          description: String.t(),
          categories: [
            Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory.t()
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
    type:
      Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory

  field :kb_article_ids, 4, repeated: true, type: :string
  field :support_url, 5, type: :string
  field :more_info_urls, 6, repeated: true, type: :string
  field :update_id, 7, type: :string
  field :revision_number, 8, type: :int32
  field :last_deployment_change_time, 9, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.WindowsApplication do
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

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.Inventory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_info: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.OsInfo.t() | nil,
          installed_packages: [
            Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.SoftwarePackage.t()
          ],
          available_packages: [
            Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.SoftwarePackage.t()
          ]
        }

  defstruct [:os_info, :installed_packages, :available_packages]

  field :os_info, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.OsInfo

  field :installed_packages, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.SoftwarePackage

  field :available_packages, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.Inventory.SoftwarePackage
end
