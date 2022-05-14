defmodule Google.Devtools.Artifactregistry.V1beta2.YumArtifact.PackageType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PACKAGE_TYPE_UNSPECIFIED, 0
  field :BINARY, 1
  field :SOURCE, 2
end
defmodule Google.Devtools.Artifactregistry.V1beta2.YumArtifact do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :package_name, 2, type: :string, json_name: "packageName", deprecated: false

  field :package_type, 3,
    type: Google.Devtools.Artifactregistry.V1beta2.YumArtifact.PackageType,
    json_name: "packageType",
    enum: true,
    deprecated: false

  field :architecture, 4, type: :string, deprecated: false
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsGcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string
  field :use_wildcards, 2, type: :bool, json_name: "useWildcards"
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 2,
    type: Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsGcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :parent, 1, type: :string
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsErrorInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsGcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :error, 2, type: Google.Rpc.Status
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :yum_artifacts, 1,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1beta2.YumArtifact,
    json_name: "yumArtifacts"

  field :errors, 2,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsErrorInfo
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ImportYumArtifactsMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
