defmodule Grafeas.V1.InTotoStatement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :predicate, 0

  field :type, 1, type: :string, json_name: "_type"
  field :subject, 2, repeated: true, type: Grafeas.V1.Subject
  field :predicate_type, 3, type: :string, json_name: "predicateType"
  field :provenance, 4, type: Grafeas.V1.InTotoProvenance, oneof: 0

  field :slsa_provenance, 5,
    type: Grafeas.V1.SlsaProvenance,
    json_name: "slsaProvenance",
    oneof: 0

  field :slsa_provenance_zero_two, 6,
    type: Grafeas.V1.SlsaProvenanceZeroTwo,
    json_name: "slsaProvenanceZeroTwo",
    oneof: 0
end

defmodule Grafeas.V1.Subject.DigestEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.Subject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :digest, 2, repeated: true, type: Grafeas.V1.Subject.DigestEntry, map: true
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.SlsaProvenanceV1 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :build_definition, 1,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.BuildDefinition,
    json_name: "buildDefinition"

  field :run_details, 2,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.RunDetails,
    json_name: "runDetails"
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.BuildDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :build_type, 1, type: :string, json_name: "buildType"
  field :external_parameters, 2, type: Google.Protobuf.Struct, json_name: "externalParameters"
  field :internal_parameters, 3, type: Google.Protobuf.Struct, json_name: "internalParameters"

  field :resolved_dependencies, 4,
    repeated: true,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor,
    json_name: "resolvedDependencies"
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor.DigestEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :uri, 2, type: :string

  field :digest, 3,
    repeated: true,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor.DigestEntry,
    map: true

  field :content, 4, type: :bytes
  field :download_location, 5, type: :string, json_name: "downloadLocation"
  field :media_type, 6, type: :string, json_name: "mediaType"

  field :annotations, 7,
    repeated: true,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor.AnnotationsEntry,
    map: true
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.RunDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :builder, 1, type: Grafeas.V1.InTotoSlsaProvenanceV1.ProvenanceBuilder
  field :metadata, 2, type: Grafeas.V1.InTotoSlsaProvenanceV1.BuildMetadata
  field :byproducts, 3, repeated: true, type: Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.ProvenanceBuilder.VersionEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.ProvenanceBuilder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string

  field :version, 2,
    repeated: true,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.ProvenanceBuilder.VersionEntry,
    map: true

  field :builder_dependencies, 3,
    repeated: true,
    type: Grafeas.V1.InTotoSlsaProvenanceV1.ResourceDescriptor,
    json_name: "builderDependencies"
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1.BuildMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :started_on, 2, type: Google.Protobuf.Timestamp, json_name: "startedOn"
  field :finished_on, 3, type: Google.Protobuf.Timestamp, json_name: "finishedOn"
end

defmodule Grafeas.V1.InTotoSlsaProvenanceV1 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: :string, json_name: "_type"
  field :subject, 2, repeated: true, type: Grafeas.V1.Subject
  field :predicate_type, 3, type: :string, json_name: "predicateType"
  field :predicate, 4, type: Grafeas.V1.InTotoSlsaProvenanceV1.SlsaProvenanceV1
end