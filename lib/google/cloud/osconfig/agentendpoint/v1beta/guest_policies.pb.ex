defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.DesiredState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DESIRED_STATE_UNSPECIFIED | :INSTALLED | :UPDATED | :REMOVED

  field :DESIRED_STATE_UNSPECIFIED, 0
  field :INSTALLED, 1
  field :UPDATED, 2
  field :REMOVED, 3
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.Package.Manager do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MANAGER_UNSPECIFIED | :ANY | :APT | :YUM | :ZYPPER | :GOO

  field :MANAGER_UNSPECIFIED, 0
  field :ANY, 1
  field :APT, 2
  field :YUM, 3
  field :ZYPPER, 4
  field :GOO, 5
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AptRepository.ArchiveType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ARCHIVE_TYPE_UNSPECIFIED | :DEB | :DEB_SRC

  field :ARCHIVE_TYPE_UNSPECIFIED, 0
  field :DEB, 1
  field :DEB_SRC, 2
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExtractArchive.ArchiveType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ARCHIVE_TYPE_UNSPECIFIED
          | :TAR
          | :TAR_GZIP
          | :TAR_BZIP
          | :TAR_LZMA
          | :TAR_XZ
          | :ZIP

  field :ARCHIVE_TYPE_UNSPECIFIED, 0
  field :TAR, 1
  field :TAR_GZIP, 2
  field :TAR_BZIP, 3
  field :TAR_LZMA, 4
  field :TAR_XZ, 5
  field :ZIP, 11
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.RunScript.Interpreter do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INTERPRETER_UNSPECIFIED | :SHELL | :POWERSHELL

  field :INTERPRETER_UNSPECIFIED, 0
  field :SHELL, 1
  field :POWERSHELL, 3
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.Package do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          desired_state: Google.Cloud.Osconfig.Agentendpoint.V1beta.DesiredState.t(),
          manager: Google.Cloud.Osconfig.Agentendpoint.V1beta.Package.Manager.t()
        }

  defstruct name: "",
            desired_state: :DESIRED_STATE_UNSPECIFIED,
            manager: :MANAGER_UNSPECIFIED

  field :name, 1, type: :string

  field :desired_state, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.DesiredState,
    json_name: "desiredState",
    enum: true

  field :manager, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.Package.Manager, enum: true
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.AptRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          archive_type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptRepository.ArchiveType.t(),
          uri: String.t(),
          distribution: String.t(),
          components: [String.t()],
          gpg_key: String.t()
        }

  defstruct archive_type: :ARCHIVE_TYPE_UNSPECIFIED,
            uri: "",
            distribution: "",
            components: [],
            gpg_key: ""

  field :archive_type, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptRepository.ArchiveType,
    json_name: "archiveType",
    enum: true

  field :uri, 2, type: :string
  field :distribution, 3, type: :string
  field :components, 4, repeated: true, type: :string
  field :gpg_key, 5, type: :string, json_name: "gpgKey"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.YumRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t(),
          base_url: String.t(),
          gpg_keys: [String.t()]
        }

  defstruct id: "",
            display_name: "",
            base_url: "",
            gpg_keys: []

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :base_url, 3, type: :string, json_name: "baseUrl"
  field :gpg_keys, 4, repeated: true, type: :string, json_name: "gpgKeys"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t(),
          base_url: String.t(),
          gpg_keys: [String.t()]
        }

  defstruct id: "",
            display_name: "",
            base_url: "",
            gpg_keys: []

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :base_url, 3, type: :string, json_name: "baseUrl"
  field :gpg_keys, 4, repeated: true, type: :string, json_name: "gpgKeys"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.GooRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t()
        }

  defstruct name: "",
            url: ""

  field :name, 1, type: :string
  field :url, 2, type: :string
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.PackageRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repository:
            {:apt, Google.Cloud.Osconfig.Agentendpoint.V1beta.AptRepository.t() | nil}
            | {:yum, Google.Cloud.Osconfig.Agentendpoint.V1beta.YumRepository.t() | nil}
            | {:zypper, Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperRepository.t() | nil}
            | {:goo, Google.Cloud.Osconfig.Agentendpoint.V1beta.GooRepository.t() | nil}
        }

  defstruct repository: nil

  oneof :repository, 0

  field :apt, 1, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.AptRepository, oneof: 0
  field :yum, 2, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.YumRepository, oneof: 0
  field :zypper, 3, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.ZypperRepository, oneof: 0
  field :goo, 4, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.GooRepository, oneof: 0
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.Remote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          checksum: String.t()
        }

  defstruct uri: "",
            checksum: ""

  field :uri, 1, type: :string
  field :checksum, 2, type: :string
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.Gcs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer
        }

  defstruct bucket: "",
            object: "",
            generation: 0

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact:
            {:remote,
             Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.Remote.t() | nil}
            | {:gcs,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.Gcs.t() | nil},
          id: String.t(),
          allow_insecure: boolean
        }

  defstruct artifact: nil,
            id: "",
            allow_insecure: false

  oneof :artifact, 0

  field :id, 1, type: :string

  field :remote, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.Remote,
    oneof: 0

  field :gcs, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.Gcs,
    oneof: 0

  field :allow_insecure, 4, type: :bool, json_name: "allowInsecure"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.CopyFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_id: String.t(),
          destination: String.t(),
          overwrite: boolean,
          permissions: String.t()
        }

  defstruct artifact_id: "",
            destination: "",
            overwrite: false,
            permissions: ""

  field :artifact_id, 1, type: :string, json_name: "artifactId"
  field :destination, 2, type: :string
  field :overwrite, 3, type: :bool
  field :permissions, 4, type: :string
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExtractArchive do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_id: String.t(),
          destination: String.t(),
          type:
            Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExtractArchive.ArchiveType.t()
        }

  defstruct artifact_id: "",
            destination: "",
            type: :ARCHIVE_TYPE_UNSPECIFIED

  field :artifact_id, 1, type: :string, json_name: "artifactId"
  field :destination, 2, type: :string

  field :type, 3,
    type:
      Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExtractArchive.ArchiveType,
    enum: true
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallMsi do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_id: String.t(),
          flags: [String.t()],
          allowed_exit_codes: [integer]
        }

  defstruct artifact_id: "",
            flags: [],
            allowed_exit_codes: []

  field :artifact_id, 1, type: :string, json_name: "artifactId"
  field :flags, 2, repeated: true, type: :string
  field :allowed_exit_codes, 3, repeated: true, type: :int32, json_name: "allowedExitCodes"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallDpkg do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_id: String.t()
        }

  defstruct artifact_id: ""

  field :artifact_id, 1, type: :string, json_name: "artifactId"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallRpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_id: String.t()
        }

  defstruct artifact_id: ""

  field :artifact_id, 1, type: :string, json_name: "artifactId"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExecFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_type: {:artifact_id, String.t()} | {:local_path, String.t()},
          args: [String.t()],
          allowed_exit_codes: [integer]
        }

  defstruct location_type: nil,
            args: [],
            allowed_exit_codes: []

  oneof :location_type, 0

  field :artifact_id, 1, type: :string, json_name: "artifactId", oneof: 0
  field :local_path, 2, type: :string, json_name: "localPath", oneof: 0
  field :args, 3, repeated: true, type: :string
  field :allowed_exit_codes, 4, repeated: true, type: :int32, json_name: "allowedExitCodes"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.RunScript do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          script: String.t(),
          allowed_exit_codes: [integer],
          interpreter:
            Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.RunScript.Interpreter.t()
        }

  defstruct script: "",
            allowed_exit_codes: [],
            interpreter: :INTERPRETER_UNSPECIFIED

  field :script, 1, type: :string
  field :allowed_exit_codes, 2, repeated: true, type: :int32, json_name: "allowedExitCodes"

  field :interpreter, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.RunScript.Interpreter,
    enum: true
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step:
            {:file_copy,
             Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.CopyFile.t() | nil}
            | {:archive_extraction,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExtractArchive.t()
               | nil}
            | {:msi_installation,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallMsi.t() | nil}
            | {:dpkg_installation,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallDpkg.t()
               | nil}
            | {:rpm_installation,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallRpm.t() | nil}
            | {:file_exec,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExecFile.t() | nil}
            | {:script_run,
               Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.RunScript.t() | nil}
        }

  defstruct step: nil

  oneof :step, 0

  field :file_copy, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.CopyFile,
    json_name: "fileCopy",
    oneof: 0

  field :archive_extraction, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExtractArchive,
    json_name: "archiveExtraction",
    oneof: 0

  field :msi_installation, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallMsi,
    json_name: "msiInstallation",
    oneof: 0

  field :dpkg_installation, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallDpkg,
    json_name: "dpkgInstallation",
    oneof: 0

  field :rpm_installation, 5,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.InstallRpm,
    json_name: "rpmInstallation",
    oneof: 0

  field :file_exec, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.ExecFile,
    json_name: "fileExec",
    oneof: 0

  field :script_run, 7,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.RunScript,
    json_name: "scriptRun",
    oneof: 0
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t(),
          artifacts: [Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact.t()],
          install_steps: [Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.t()],
          update_steps: [Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step.t()],
          desired_state: Google.Cloud.Osconfig.Agentendpoint.V1beta.DesiredState.t()
        }

  defstruct name: "",
            version: "",
            artifacts: [],
            install_steps: [],
            update_steps: [],
            desired_state: :DESIRED_STATE_UNSPECIFIED

  field :name, 1, type: :string
  field :version, 2, type: :string

  field :artifacts, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Artifact

  field :install_steps, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step,
    json_name: "installSteps"

  field :update_steps, 5,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.Step,
    json_name: "updateSteps"

  field :desired_state, 6,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.DesiredState,
    json_name: "desiredState",
    enum: true
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.LookupEffectiveGuestPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id_token: String.t(),
          os_short_name: String.t(),
          os_version: String.t(),
          os_architecture: String.t()
        }

  defstruct instance_id_token: "",
            os_short_name: "",
            os_version: "",
            os_architecture: ""

  field :instance_id_token, 1, type: :string, json_name: "instanceIdToken", deprecated: false
  field :os_short_name, 2, type: :string, json_name: "osShortName"
  field :os_version, 3, type: :string, json_name: "osVersion"
  field :os_architecture, 4, type: :string, json_name: "osArchitecture"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedPackage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          package: Google.Cloud.Osconfig.Agentendpoint.V1beta.Package.t() | nil
        }

  defstruct source: "",
            package: nil

  field :source, 1, type: :string
  field :package, 2, type: Google.Cloud.Osconfig.Agentendpoint.V1beta.Package
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedPackageRepository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          package_repository:
            Google.Cloud.Osconfig.Agentendpoint.V1beta.PackageRepository.t() | nil
        }

  defstruct source: "",
            package_repository: nil

  field :source, 1, type: :string

  field :package_repository, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.PackageRepository,
    json_name: "packageRepository"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedSoftwareRecipe do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          software_recipe: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe.t() | nil
        }

  defstruct source: "",
            software_recipe: nil

  field :source, 1, type: :string

  field :software_recipe, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.SoftwareRecipe,
    json_name: "softwareRecipe"
end
defmodule Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          packages: [
            Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedPackage.t()
          ],
          package_repositories: [
            Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedPackageRepository.t()
          ],
          software_recipes: [
            Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedSoftwareRecipe.t()
          ]
        }

  defstruct packages: [],
            package_repositories: [],
            software_recipes: []

  field :packages, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedPackage

  field :package_repositories, 2,
    repeated: true,
    type:
      Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedPackageRepository,
    json_name: "packageRepositories"

  field :software_recipes, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1beta.EffectiveGuestPolicy.SourcedSoftwareRecipe,
    json_name: "softwareRecipes"
end
