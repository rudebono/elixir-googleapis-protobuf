defmodule Google.Cloud.Osconfig.V1beta.DesiredState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DESIRED_STATE_UNSPECIFIED, 0
  field :INSTALLED, 1
  field :UPDATED, 2
  field :REMOVED, 3
end

defmodule Google.Cloud.Osconfig.V1beta.Package.Manager do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MANAGER_UNSPECIFIED, 0
  field :ANY, 1
  field :APT, 2
  field :YUM, 3
  field :ZYPPER, 4
  field :GOO, 5
end

defmodule Google.Cloud.Osconfig.V1beta.AptRepository.ArchiveType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ARCHIVE_TYPE_UNSPECIFIED, 0
  field :DEB, 1
  field :DEB_SRC, 2
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.ExtractArchive.ArchiveType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ARCHIVE_TYPE_UNSPECIFIED, 0
  field :TAR, 1
  field :TAR_GZIP, 2
  field :TAR_BZIP, 3
  field :TAR_LZMA, 4
  field :TAR_XZ, 5
  field :ZIP, 11
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.RunScript.Interpreter do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INTERPRETER_UNSPECIFIED, 0
  field :SHELL, 1
  field :POWERSHELL, 3
end

defmodule Google.Cloud.Osconfig.V1beta.GuestPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :assignment, 6, type: Google.Cloud.Osconfig.V1beta.Assignment, deprecated: false
  field :packages, 7, repeated: true, type: Google.Cloud.Osconfig.V1beta.Package

  field :package_repositories, 8,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PackageRepository,
    json_name: "packageRepositories"

  field :recipes, 9, repeated: true, type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe
  field :etag, 10, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.Assignment.GroupLabel.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.Assignment.GroupLabel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.Assignment.GroupLabel.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Osconfig.V1beta.Assignment.OsType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :os_short_name, 1, type: :string, json_name: "osShortName"
  field :os_version, 2, type: :string, json_name: "osVersion"
  field :os_architecture, 3, type: :string, json_name: "osArchitecture"
end

defmodule Google.Cloud.Osconfig.V1beta.Assignment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :group_labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.Assignment.GroupLabel,
    json_name: "groupLabels"

  field :zones, 2, repeated: true, type: :string
  field :instances, 3, repeated: true, type: :string

  field :instance_name_prefixes, 4,
    repeated: true,
    type: :string,
    json_name: "instanceNamePrefixes"

  field :os_types, 5,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.Assignment.OsType,
    json_name: "osTypes"
end

defmodule Google.Cloud.Osconfig.V1beta.Package do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :desired_state, 2,
    type: Google.Cloud.Osconfig.V1beta.DesiredState,
    json_name: "desiredState",
    enum: true

  field :manager, 3, type: Google.Cloud.Osconfig.V1beta.Package.Manager, enum: true
end

defmodule Google.Cloud.Osconfig.V1beta.AptRepository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :archive_type, 1,
    type: Google.Cloud.Osconfig.V1beta.AptRepository.ArchiveType,
    json_name: "archiveType",
    enum: true

  field :uri, 2, type: :string, deprecated: false
  field :distribution, 3, type: :string, deprecated: false
  field :components, 4, repeated: true, type: :string, deprecated: false
  field :gpg_key, 5, type: :string, json_name: "gpgKey"
end

defmodule Google.Cloud.Osconfig.V1beta.YumRepository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :base_url, 3, type: :string, json_name: "baseUrl", deprecated: false
  field :gpg_keys, 4, repeated: true, type: :string, json_name: "gpgKeys"
end

defmodule Google.Cloud.Osconfig.V1beta.ZypperRepository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :base_url, 3, type: :string, json_name: "baseUrl", deprecated: false
  field :gpg_keys, 4, repeated: true, type: :string, json_name: "gpgKeys"
end

defmodule Google.Cloud.Osconfig.V1beta.GooRepository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :url, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.PackageRepository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :repository, 0

  field :apt, 1, type: Google.Cloud.Osconfig.V1beta.AptRepository, oneof: 0
  field :yum, 2, type: Google.Cloud.Osconfig.V1beta.YumRepository, oneof: 0
  field :zypper, 3, type: Google.Cloud.Osconfig.V1beta.ZypperRepository, oneof: 0
  field :goo, 4, type: Google.Cloud.Osconfig.V1beta.GooRepository, oneof: 0
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Artifact.Remote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 1, type: :string
  field :checksum, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Artifact.Gcs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Artifact do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :artifact, 0

  field :id, 1, type: :string, deprecated: false
  field :remote, 2, type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Artifact.Remote, oneof: 0
  field :gcs, 3, type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Artifact.Gcs, oneof: 0
  field :allow_insecure, 4, type: :bool, json_name: "allowInsecure"
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.CopyFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact_id, 1, type: :string, json_name: "artifactId", deprecated: false
  field :destination, 2, type: :string, deprecated: false
  field :overwrite, 3, type: :bool
  field :permissions, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.ExtractArchive do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact_id, 1, type: :string, json_name: "artifactId", deprecated: false
  field :destination, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.ExtractArchive.ArchiveType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.InstallMsi do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact_id, 1, type: :string, json_name: "artifactId", deprecated: false
  field :flags, 2, repeated: true, type: :string
  field :allowed_exit_codes, 3, repeated: true, type: :int32, json_name: "allowedExitCodes"
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.InstallDpkg do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact_id, 1, type: :string, json_name: "artifactId", deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.InstallRpm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact_id, 1, type: :string, json_name: "artifactId", deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.ExecFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :location_type, 0

  field :artifact_id, 1, type: :string, json_name: "artifactId", oneof: 0
  field :local_path, 2, type: :string, json_name: "localPath", oneof: 0
  field :args, 3, repeated: true, type: :string
  field :allowed_exit_codes, 4, repeated: true, type: :int32, json_name: "allowedExitCodes"
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.RunScript do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :script, 1, type: :string, deprecated: false
  field :allowed_exit_codes, 2, repeated: true, type: :int32, json_name: "allowedExitCodes"

  field :interpreter, 3,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.RunScript.Interpreter,
    enum: true
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :step, 0

  field :file_copy, 1,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.CopyFile,
    json_name: "fileCopy",
    oneof: 0

  field :archive_extraction, 2,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.ExtractArchive,
    json_name: "archiveExtraction",
    oneof: 0

  field :msi_installation, 3,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.InstallMsi,
    json_name: "msiInstallation",
    oneof: 0

  field :dpkg_installation, 4,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.InstallDpkg,
    json_name: "dpkgInstallation",
    oneof: 0

  field :rpm_installation, 5,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.InstallRpm,
    json_name: "rpmInstallation",
    oneof: 0

  field :file_exec, 6,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.ExecFile,
    json_name: "fileExec",
    oneof: 0

  field :script_run, 7,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step.RunScript,
    json_name: "scriptRun",
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1beta.SoftwareRecipe do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :string
  field :artifacts, 3, repeated: true, type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Artifact

  field :install_steps, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step,
    json_name: "installSteps"

  field :update_steps, 5,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe.Step,
    json_name: "updateSteps"

  field :desired_state, 6,
    type: Google.Cloud.Osconfig.V1beta.DesiredState,
    json_name: "desiredState",
    enum: true
end

defmodule Google.Cloud.Osconfig.V1beta.CreateGuestPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :guest_policy_id, 2, type: :string, json_name: "guestPolicyId", deprecated: false

  field :guest_policy, 3,
    type: Google.Cloud.Osconfig.V1beta.GuestPolicy,
    json_name: "guestPolicy",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.GetGuestPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.ListGuestPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Osconfig.V1beta.ListGuestPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :guest_policies, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.GuestPolicy,
    json_name: "guestPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Osconfig.V1beta.UpdateGuestPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :guest_policy, 1,
    type: Google.Cloud.Osconfig.V1beta.GuestPolicy,
    json_name: "guestPolicy",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Osconfig.V1beta.DeleteGuestPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1beta.LookupEffectiveGuestPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance, 1, type: :string, deprecated: false
  field :os_short_name, 2, type: :string, json_name: "osShortName"
  field :os_version, 3, type: :string, json_name: "osVersion"
  field :os_architecture, 4, type: :string, json_name: "osArchitecture"
end

defmodule Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy.SourcedPackage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source, 1, type: :string
  field :package, 2, type: Google.Cloud.Osconfig.V1beta.Package
end

defmodule Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy.SourcedPackageRepository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source, 1, type: :string

  field :package_repository, 2,
    type: Google.Cloud.Osconfig.V1beta.PackageRepository,
    json_name: "packageRepository"
end

defmodule Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy.SourcedSoftwareRecipe do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source, 1, type: :string

  field :software_recipe, 2,
    type: Google.Cloud.Osconfig.V1beta.SoftwareRecipe,
    json_name: "softwareRecipe"
end

defmodule Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packages, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy.SourcedPackage

  field :package_repositories, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy.SourcedPackageRepository,
    json_name: "packageRepositories"

  field :software_recipes, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy.SourcedSoftwareRecipe,
    json_name: "softwareRecipes"
end