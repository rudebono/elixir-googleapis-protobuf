defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :VALIDATION, 1
  field :ENFORCEMENT, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.DesiredState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DESIRED_STATE_UNSPECIFIED, 0
  field :INSTALLED, 1
  field :REMOVED, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ARCHIVE_TYPE_UNSPECIFIED, 0
  field :DEB, 1
  field :DEB_SRC, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.Interpreter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INTERPRETER_UNSPECIFIED, 0
  field :NONE, 1
  field :SHELL, 2
  field :POWERSHELL, 3
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource.DesiredState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DESIRED_STATE_UNSPECIFIED, 0
  field :PRESENT, 1
  field :ABSENT, 2
  field :CONTENTS_MATCH, 3
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.OSFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_short_name, 1, type: :string, json_name: "osShortName"
  field :os_version, 2, type: :string, json_name: "osVersion"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.InventoryFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_short_name, 1, type: :string, json_name: "osShortName", deprecated: false
  field :os_version, 2, type: :string, json_name: "osVersion"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Remote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :sha256_checksum, 2, type: :string, json_name: "sha256Checksum"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Gcs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :remote, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Remote, oneof: 0
  field :gcs, 2, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File.Gcs, oneof: 0
  field :local_path, 3, type: :string, json_name: "localPath", oneof: 0
  field :allow_insecure, 4, type: :bool, json_name: "allowInsecure"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.Deb do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, deprecated: false
  field :pull_deps, 2, type: :bool, json_name: "pullDeps"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.APT do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.RPM do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, deprecated: false
  field :pull_deps, 2, type: :bool, json_name: "pullDeps"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.YUM do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.Zypper do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.GooGet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.MSI do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, deprecated: false
  field :properties, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :system_package, 0

  field :desired_state, 1,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource.DesiredState,
    json_name: "desiredState",
    enum: true,
    deprecated: false

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :archive_type, 1,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.AptRepository.ArchiveType,
    json_name: "archiveType",
    enum: true,
    deprecated: false

  field :uri, 2, type: :string, deprecated: false
  field :distribution, 3, type: :string, deprecated: false
  field :components, 4, repeated: true, type: :string, deprecated: false
  field :gpg_key, 5, type: :string, json_name: "gpgKey"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.YumRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :base_url, 3, type: :string, json_name: "baseUrl", deprecated: false
  field :gpg_keys, 4, repeated: true, type: :string, json_name: "gpgKeys"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.ZypperRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :base_url, 3, type: :string, json_name: "baseUrl", deprecated: false
  field :gpg_keys, 4, repeated: true, type: :string, json_name: "gpgKeys"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource.GooRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :url, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :file, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, oneof: 0
  field :script, 2, type: :string, oneof: 0
  field :args, 3, repeated: true, type: :string

  field :interpreter, 4,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec.Interpreter,
    enum: true,
    deprecated: false

  field :output_file_path, 5, type: :string, json_name: "outputFilePath"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :validate, 1,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec,
    deprecated: false

  field :enforce, 2, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource.Exec
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :file, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.File, oneof: 0
  field :content, 2, type: :string, oneof: 0
  field :path, 3, type: :string, deprecated: false

  field :state, 4,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource.DesiredState,
    enum: true,
    deprecated: false

  field :permissions, 5, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :resource_type, 0

  field :id, 1, type: :string, deprecated: false
  field :pkg, 2, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.PackageResource, oneof: 0

  field :repository, 3,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.RepositoryResource,
    oneof: 0

  field :exec, 4, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.ExecResource, oneof: 0
  field :file, 5, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource.FileResource, oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy.ResourceGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_filter, 1,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.OSFilter,
    json_name: "osFilter",
    deprecated: true

  field :inventory_filters, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.InventoryFilter,
    json_name: "inventoryFilters"

  field :resources, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Resource,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :mode, 3, type: Google.Cloud.Osconfig.V1alpha.OSPolicy.Mode, enum: true, deprecated: false

  field :resource_groups, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicy.ResourceGroup,
    json_name: "resourceGroups",
    deprecated: false

  field :allow_no_resource_group_match, 5, type: :bool, json_name: "allowNoResourceGroupMatch"
end