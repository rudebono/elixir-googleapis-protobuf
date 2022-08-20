defmodule Grafeas.V1.Recipe do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :string
  field :defined_in_material, 2, type: :int64, json_name: "definedInMaterial"
  field :entry_point, 3, type: :string, json_name: "entryPoint"
  field :arguments, 4, repeated: true, type: Google.Protobuf.Any
  field :environment, 5, repeated: true, type: Google.Protobuf.Any
end

defmodule Grafeas.V1.Completeness do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :arguments, 1, type: :bool
  field :environment, 2, type: :bool
  field :materials, 3, type: :bool
end

defmodule Grafeas.V1.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :build_invocation_id, 1, type: :string, json_name: "buildInvocationId"
  field :build_started_on, 2, type: Google.Protobuf.Timestamp, json_name: "buildStartedOn"
  field :build_finished_on, 3, type: Google.Protobuf.Timestamp, json_name: "buildFinishedOn"
  field :completeness, 4, type: Grafeas.V1.Completeness
  field :reproducible, 5, type: :bool
end

defmodule Grafeas.V1.BuilderConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Grafeas.V1.InTotoProvenance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :builder_config, 1, type: Grafeas.V1.BuilderConfig, json_name: "builderConfig"
  field :recipe, 2, type: Grafeas.V1.Recipe
  field :metadata, 3, type: Grafeas.V1.Metadata
  field :materials, 4, repeated: true, type: :string
end