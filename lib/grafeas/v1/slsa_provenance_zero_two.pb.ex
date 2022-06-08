defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaBuilder do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaMaterial.DigestEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaMaterial do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string

  field :digest, 2,
    repeated: true,
    type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaMaterial.DigestEntry,
    map: true
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaInvocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :config_source, 1,
    type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaConfigSource,
    json_name: "configSource"

  field :parameters, 2, type: Google.Protobuf.Struct
  field :environment, 3, type: Google.Protobuf.Struct
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaConfigSource.DigestEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaConfigSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string

  field :digest, 2,
    repeated: true,
    type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaConfigSource.DigestEntry,
    map: true

  field :entry_point, 3, type: :string, json_name: "entryPoint"
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :build_invocation_id, 1, type: :string, json_name: "buildInvocationId"
  field :build_started_on, 2, type: Google.Protobuf.Timestamp, json_name: "buildStartedOn"
  field :build_finished_on, 3, type: Google.Protobuf.Timestamp, json_name: "buildFinishedOn"
  field :completeness, 4, type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaCompleteness
  field :reproducible, 5, type: :bool
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo.SlsaCompleteness do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parameters, 1, type: :bool
  field :environment, 2, type: :bool
  field :materials, 3, type: :bool
end
defmodule Grafeas.V1.SlsaProvenanceZeroTwo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :builder, 1, type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaBuilder
  field :build_type, 2, type: :string, json_name: "buildType"
  field :invocation, 3, type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaInvocation
  field :build_config, 4, type: Google.Protobuf.Struct, json_name: "buildConfig"
  field :metadata, 5, type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaMetadata
  field :materials, 6, repeated: true, type: Grafeas.V1.SlsaProvenanceZeroTwo.SlsaMaterial
end
