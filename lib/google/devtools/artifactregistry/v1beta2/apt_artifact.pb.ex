defmodule Google.Devtools.Artifactregistry.V1beta2.AptArtifact.PackageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PACKAGE_TYPE_UNSPECIFIED | :BINARY | :SOURCE

  field :PACKAGE_TYPE_UNSPECIFIED, 0
  field :BINARY, 1
  field :SOURCE, 2
end
defmodule Google.Devtools.Artifactregistry.V1beta2.AptArtifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          package_name: String.t(),
          package_type: Google.Devtools.Artifactregistry.V1beta2.AptArtifact.PackageType.t(),
          architecture: String.t(),
          component: String.t(),
          control_file: binary
        }

  defstruct name: "",
            package_name: "",
            package_type: :PACKAGE_TYPE_UNSPECIFIED,
            architecture: "",
            component: "",
            control_file: ""

  field :name, 1, type: :string, deprecated: false
  field :package_name, 2, type: :string, json_name: "packageName", deprecated: false

  field :package_type, 3,
    type: Google.Devtools.Artifactregistry.V1beta2.AptArtifact.PackageType,
    json_name: "packageType",
    enum: true,
    deprecated: false

  field :architecture, 4, type: :string, deprecated: false
  field :component, 5, type: :string, deprecated: false
  field :control_file, 6, type: :bytes, json_name: "controlFile", deprecated: false
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsGcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()],
          use_wildcards: boolean
        }

  defstruct uris: [],
            use_wildcards: false

  field :uris, 1, repeated: true, type: :string
  field :use_wildcards, 2, type: :bool, json_name: "useWildcards"
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source,
             Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsGcsSource.t() | nil},
          parent: String.t()
        }

  defstruct source: nil,
            parent: ""

  oneof :source, 0

  field :gcs_source, 2,
    type: Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsGcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :parent, 1, type: :string
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsErrorInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source,
             Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsGcsSource.t() | nil},
          error: Google.Rpc.Status.t() | nil
        }

  defstruct source: nil,
            error: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsGcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :error, 2, type: Google.Rpc.Status
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apt_artifacts: [Google.Devtools.Artifactregistry.V1beta2.AptArtifact.t()],
          errors: [Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsErrorInfo.t()]
        }

  defstruct apt_artifacts: [],
            errors: []

  field :apt_artifacts, 1,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1beta2.AptArtifact,
    json_name: "aptArtifacts"

  field :errors, 2,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsErrorInfo
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportAptArtifactsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
