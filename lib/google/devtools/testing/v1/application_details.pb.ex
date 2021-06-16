defmodule Google.Devtools.Testing.V1.ApkDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apk_manifest: Google.Devtools.Testing.V1.ApkManifest.t() | nil
        }

  defstruct [:apk_manifest]

  field :apk_manifest, 1, type: Google.Devtools.Testing.V1.ApkManifest
end

defmodule Google.Devtools.Testing.V1.ApkManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          package_name: String.t(),
          min_sdk_version: integer,
          max_sdk_version: integer,
          target_sdk_version: integer,
          application_label: String.t(),
          intent_filters: [Google.Devtools.Testing.V1.IntentFilter.t()],
          uses_permission: [String.t()]
        }

  defstruct [
    :package_name,
    :min_sdk_version,
    :max_sdk_version,
    :target_sdk_version,
    :application_label,
    :intent_filters,
    :uses_permission
  ]

  field :package_name, 1, type: :string
  field :min_sdk_version, 2, type: :int32
  field :max_sdk_version, 3, type: :int32
  field :target_sdk_version, 6, type: :int32
  field :application_label, 4, type: :string
  field :intent_filters, 5, repeated: true, type: Google.Devtools.Testing.V1.IntentFilter
  field :uses_permission, 7, repeated: true, type: :string
end

defmodule Google.Devtools.Testing.V1.IntentFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_names: [String.t()],
          category_names: [String.t()],
          mime_type: String.t()
        }

  defstruct [:action_names, :category_names, :mime_type]

  field :action_names, 1, repeated: true, type: :string
  field :category_names, 2, repeated: true, type: :string
  field :mime_type, 3, type: :string
end

defmodule Google.Devtools.Testing.V1.GetApkDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Devtools.Testing.V1.FileReference.t() | nil
        }

  defstruct [:location]

  field :location, 1, type: Google.Devtools.Testing.V1.FileReference
end

defmodule Google.Devtools.Testing.V1.GetApkDetailsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apk_detail: Google.Devtools.Testing.V1.ApkDetail.t() | nil
        }

  defstruct [:apk_detail]

  field :apk_detail, 1, type: Google.Devtools.Testing.V1.ApkDetail
end

defmodule Google.Devtools.Testing.V1.ApplicationDetailService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.testing.v1.ApplicationDetailService"

  rpc :GetApkDetails,
      Google.Devtools.Testing.V1.GetApkDetailsRequest,
      Google.Devtools.Testing.V1.GetApkDetailsResponse
end

defmodule Google.Devtools.Testing.V1.ApplicationDetailService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Testing.V1.ApplicationDetailService.Service
end
