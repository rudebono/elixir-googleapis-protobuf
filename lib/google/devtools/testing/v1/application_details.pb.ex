defmodule Google.Devtools.Testing.V1.ApkDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :apk_manifest, 1, type: Google.Devtools.Testing.V1.ApkManifest, json_name: "apkManifest"
end
defmodule Google.Devtools.Testing.V1.ApkManifest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :package_name, 1, type: :string, json_name: "packageName"
  field :min_sdk_version, 2, type: :int32, json_name: "minSdkVersion"
  field :max_sdk_version, 3, type: :int32, json_name: "maxSdkVersion"
  field :target_sdk_version, 6, type: :int32, json_name: "targetSdkVersion"
  field :application_label, 4, type: :string, json_name: "applicationLabel"

  field :intent_filters, 5,
    repeated: true,
    type: Google.Devtools.Testing.V1.IntentFilter,
    json_name: "intentFilters"

  field :uses_permission, 7, repeated: true, type: :string, json_name: "usesPermission"
end
defmodule Google.Devtools.Testing.V1.IntentFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :action_names, 1, repeated: true, type: :string, json_name: "actionNames"
  field :category_names, 2, repeated: true, type: :string, json_name: "categoryNames"
  field :mime_type, 3, type: :string, json_name: "mimeType"
end
defmodule Google.Devtools.Testing.V1.GetApkDetailsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :location, 1, type: Google.Devtools.Testing.V1.FileReference
end
defmodule Google.Devtools.Testing.V1.GetApkDetailsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :apk_detail, 1, type: Google.Devtools.Testing.V1.ApkDetail, json_name: "apkDetail"
end
defmodule Google.Devtools.Testing.V1.ApplicationDetailService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.testing.v1.ApplicationDetailService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetApkDetails,
      Google.Devtools.Testing.V1.GetApkDetailsRequest,
      Google.Devtools.Testing.V1.GetApkDetailsResponse
end

defmodule Google.Devtools.Testing.V1.ApplicationDetailService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Testing.V1.ApplicationDetailService.Service
end
