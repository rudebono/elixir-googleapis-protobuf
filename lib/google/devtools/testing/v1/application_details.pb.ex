defmodule Google.Devtools.Testing.V1.ApkDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :apk_manifest, 1, type: Google.Devtools.Testing.V1.ApkManifest, json_name: "apkManifest"
end

defmodule Google.Devtools.Testing.V1.ApkManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :package_name, 1, type: :string, json_name: "packageName"
  field :min_sdk_version, 2, type: :int32, json_name: "minSdkVersion"
  field :max_sdk_version, 3, type: :int32, json_name: "maxSdkVersion"
  field :target_sdk_version, 6, type: :int32, json_name: "targetSdkVersion"
  field :application_label, 4, type: :string, json_name: "applicationLabel"

  field :intent_filters, 5,
    repeated: true,
    type: Google.Devtools.Testing.V1.IntentFilter,
    json_name: "intentFilters"

  field :uses_permission_tags, 13,
    repeated: true,
    type: Google.Devtools.Testing.V1.UsesPermissionTag,
    json_name: "usesPermissionTags"

  field :uses_permission, 7, repeated: true, type: :string, json_name: "usesPermission"
  field :version_code, 8, type: :int64, json_name: "versionCode"
  field :version_name, 9, type: :string, json_name: "versionName"
  field :metadata, 10, repeated: true, type: Google.Devtools.Testing.V1.Metadata

  field :uses_feature, 11,
    repeated: true,
    type: Google.Devtools.Testing.V1.UsesFeature,
    json_name: "usesFeature"

  field :services, 12, repeated: true, type: Google.Devtools.Testing.V1.Service
end

defmodule Google.Devtools.Testing.V1.UsesPermissionTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :max_sdk_version, 2, type: :int32, json_name: "maxSdkVersion"
end

defmodule Google.Devtools.Testing.V1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :intent_filter, 2,
    repeated: true,
    type: Google.Devtools.Testing.V1.IntentFilter,
    json_name: "intentFilter"
end

defmodule Google.Devtools.Testing.V1.IntentFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :action_names, 1, repeated: true, type: :string, json_name: "actionNames"
  field :category_names, 2, repeated: true, type: :string, json_name: "categoryNames"
  field :mime_type, 3, type: :string, json_name: "mimeType"
end

defmodule Google.Devtools.Testing.V1.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Testing.V1.UsesFeature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :is_required, 2, type: :bool, json_name: "isRequired"
end

defmodule Google.Devtools.Testing.V1.GetApkDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: Google.Devtools.Testing.V1.FileReference, deprecated: false

  field :bundle_location, 2,
    type: Google.Devtools.Testing.V1.FileReference,
    json_name: "bundleLocation",
    deprecated: false
end

defmodule Google.Devtools.Testing.V1.GetApkDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :apk_detail, 1, type: Google.Devtools.Testing.V1.ApkDetail, json_name: "apkDetail"
end

defmodule Google.Devtools.Testing.V1.ApplicationDetailService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.testing.v1.ApplicationDetailService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetApkDetails,
      Google.Devtools.Testing.V1.GetApkDetailsRequest,
      Google.Devtools.Testing.V1.GetApkDetailsResponse
end

defmodule Google.Devtools.Testing.V1.ApplicationDetailService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Testing.V1.ApplicationDetailService.Service
end
