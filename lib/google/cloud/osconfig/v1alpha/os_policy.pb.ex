defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MODE_UNSPECIFIED | :VALIDATION | :ENFORCEMENT

  field :MODE_UNSPECIFIED, 0

  field :VALIDATION, 1

  field :ENFORCEMENT, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.DesiredState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DESIRED_STATE_UNSPECIFIED | :INSTALLED | :REMOVED

  field :DESIRED_STATE_UNSPECIFIED, 0

  field :INSTALLED, 1

  field :REMOVED, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ARCHIVE_TYPE_UNSPECIFIED | :DEB | :DEB_SRC

  field :ARCHIVE_TYPE_UNSPECIFIED, 0

  field :DEB, 1

  field :DEB_SRC, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.Interpreter do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INTERPRETER_UNSPECIFIED | :NONE | :SHELL | :POWERSHELL

  field :INTERPRETER_UNSPECIFIED, 0

  field :NONE, 1

  field :SHELL, 2

  field :POWERSHELL, 3
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource.DesiredState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DESIRED_STATE_UNSPECIFIED | :PRESENT | :ABSENT | :CONTENTS_MATCH

  field :DESIRED_STATE_UNSPECIFIED, 0

  field :PRESENT, 1

  field :ABSENT, 2

  field :CONTENTS_MATCH, 3
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.OSFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_short_name: String.t(),
          os_version: String.t()
        }

  defstruct [:os_short_name, :os_version]

  field :os_short_name, 1, type: :string
  field :os_version, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Remote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          sha256_checksum: String.t()
        }

  defstruct [:uri, :sha256_checksum]

  field :uri, 1, type: :string
  field :sha256_checksum, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Gcs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer
        }

  defstruct [:bucket, :object, :generation]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any},
          allow_insecure: boolean
        }

  defstruct [:type, :allow_insecure]

  oneof :type, 0
  field :remote, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Remote, oneof: 0
  field :gcs, 2, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Gcs, oneof: 0
  field :local_path, 3, type: :string, oneof: 0
  field :allow_insecure, 4, type: :bool
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.Deb do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.t() | nil,
          pull_deps: boolean
        }

  defstruct [:source, :pull_deps]

  field :source, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File
  field :pull_deps, 2, type: :bool
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.APT do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.RPM do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.t() | nil,
          pull_deps: boolean
        }

  defstruct [:source, :pull_deps]

  field :source, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File
  field :pull_deps, 2, type: :bool
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.YUM do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.Zypper do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.GooGet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.MSI do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.t() | nil,
          properties: [String.t()]
        }

  defstruct [:source, :properties]

  field :source, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File
  field :properties, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_package: {atom, any},
          desired_state:
            Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.DesiredState.t()
        }

  defstruct [:system_package, :desired_state]

  oneof :system_package, 0

  field :desired_state, 1,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.DesiredState,
    enum: true

  field :apt, 2,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.APT,
    oneof: 0

  field :deb, 3,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.Deb,
    oneof: 0

  field :yum, 4,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.YUM,
    oneof: 0

  field :zypper, 5,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.Zypper,
    oneof: 0

  field :rpm, 6,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.RPM,
    oneof: 0

  field :googet, 7,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.GooGet,
    oneof: 0

  field :msi, 8,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.MSI,
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          archive_type:
            Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType.t(),
          uri: String.t(),
          distribution: String.t(),
          components: [String.t()],
          gpg_key: String.t()
        }

  defstruct [:archive_type, :uri, :distribution, :components, :gpg_key]

  field :archive_type, 1,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType,
    enum: true

  field :uri, 2, type: :string
  field :distribution, 3, type: :string
  field :components, 4, repeated: true, type: :string
  field :gpg_key, 5, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.YumRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t(),
          base_url: String.t(),
          gpg_keys: [String.t()]
        }

  defstruct [:id, :display_name, :base_url, :gpg_keys]

  field :id, 1, type: :string
  field :display_name, 2, type: :string
  field :base_url, 3, type: :string
  field :gpg_keys, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.ZypperRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t(),
          base_url: String.t(),
          gpg_keys: [String.t()]
        }

  defstruct [:id, :display_name, :base_url, :gpg_keys]

  field :id, 1, type: :string
  field :display_name, 2, type: :string
  field :base_url, 3, type: :string
  field :gpg_keys, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.GooRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t()
        }

  defstruct [:name, :url]

  field :name, 1, type: :string
  field :url, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repository: {atom, any}
        }

  defstruct [:repository]

  oneof :repository, 0

  field :apt, 1,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository,
    oneof: 0

  field :yum, 2,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.YumRepository,
    oneof: 0

  field :zypper, 3,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.ZypperRepository,
    oneof: 0

  field :goo, 4,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.GooRepository,
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          args: [String.t()],
          interpreter:
            Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.Interpreter.t()
        }

  defstruct [:source, :args, :interpreter]

  oneof :source, 0
  field :file, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, oneof: 0
  field :script, 2, type: :string, oneof: 0
  field :args, 3, repeated: true, type: :string

  field :interpreter, 4,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.Interpreter,
    enum: true
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validate: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.t() | nil,
          enforce: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.t() | nil
        }

  defstruct [:validate, :enforce]

  field :validate, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec
  field :enforce, 2, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          path: String.t(),
          state: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource.DesiredState.t(),
          permissions: String.t()
        }

  defstruct [:source, :path, :state, :permissions]

  oneof :source, 0
  field :file, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, oneof: 0
  field :content, 2, type: :string, oneof: 0
  field :path, 3, type: :string

  field :state, 4,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource.DesiredState,
    enum: true

  field :permissions, 5, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_type: {atom, any},
          id: String.t()
        }

  defstruct [:resource_type, :id]

  oneof :resource_type, 0
  field :id, 1, type: :string
  field :pkg, 2, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource, oneof: 0

  field :repository, 3,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource,
    oneof: 0

  field :exec, 4, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource, oneof: 0
  field :file, 5, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource, oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.ResourceGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_filter: Google.Cloud.Osconfig.V1alpha.OSPolicy.OSFilter.t() | nil,
          resources: [Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.t()]
        }

  defstruct [:os_filter, :resources]

  field :os_filter, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.OSFilter
  field :resources, 2, repeated: true, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          description: String.t(),
          mode: Google.Cloud.Osconfig.V1alpha.OSPolicy.Mode.t(),
          resource_groups: [Google.Cloud.Osconfig.V1alpha.OSPolicy.ResourceGroup.t()],
          allow_no_resource_group_match: boolean
        }

  defstruct [:id, :description, :mode, :resource_groups, :allow_no_resource_group_match]

  field :id, 1, type: :string
  field :description, 2, type: :string
  field :mode, 3, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Mode, enum: true

  field :resource_groups, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.ResourceGroup

  field :allow_no_resource_group_match, 5, type: :bool
end
