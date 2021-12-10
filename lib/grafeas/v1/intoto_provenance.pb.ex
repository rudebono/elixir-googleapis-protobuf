defmodule Grafeas.V1.Recipe do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          defined_in_material: integer,
          entry_point: String.t(),
          arguments: [Google.Protobuf.Any.t()],
          environment: [Google.Protobuf.Any.t()]
        }

  defstruct type: "",
            defined_in_material: 0,
            entry_point: "",
            arguments: [],
            environment: []

  field :type, 1, type: :string
  field :defined_in_material, 2, type: :int64, json_name: "definedInMaterial"
  field :entry_point, 3, type: :string, json_name: "entryPoint"
  field :arguments, 4, repeated: true, type: Google.Protobuf.Any
  field :environment, 5, repeated: true, type: Google.Protobuf.Any
end
defmodule Grafeas.V1.Completeness do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          arguments: boolean,
          environment: boolean,
          materials: boolean
        }

  defstruct arguments: false,
            environment: false,
            materials: false

  field :arguments, 1, type: :bool
  field :environment, 2, type: :bool
  field :materials, 3, type: :bool
end
defmodule Grafeas.V1.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_invocation_id: String.t(),
          build_started_on: Google.Protobuf.Timestamp.t() | nil,
          build_finished_on: Google.Protobuf.Timestamp.t() | nil,
          completeness: Grafeas.V1.Completeness.t() | nil,
          reproducible: boolean
        }

  defstruct build_invocation_id: "",
            build_started_on: nil,
            build_finished_on: nil,
            completeness: nil,
            reproducible: false

  field :build_invocation_id, 1, type: :string, json_name: "buildInvocationId"
  field :build_started_on, 2, type: Google.Protobuf.Timestamp, json_name: "buildStartedOn"
  field :build_finished_on, 3, type: Google.Protobuf.Timestamp, json_name: "buildFinishedOn"
  field :completeness, 4, type: Grafeas.V1.Completeness
  field :reproducible, 5, type: :bool
end
defmodule Grafeas.V1.BuilderConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct id: ""

  field :id, 1, type: :string
end
defmodule Grafeas.V1.InTotoProvenance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builder_config: Grafeas.V1.BuilderConfig.t() | nil,
          recipe: Grafeas.V1.Recipe.t() | nil,
          metadata: Grafeas.V1.Metadata.t() | nil,
          materials: [String.t()]
        }

  defstruct builder_config: nil,
            recipe: nil,
            metadata: nil,
            materials: []

  field :builder_config, 1, type: Grafeas.V1.BuilderConfig, json_name: "builderConfig"
  field :recipe, 2, type: Grafeas.V1.Recipe
  field :metadata, 3, type: Grafeas.V1.Metadata
  field :materials, 4, repeated: true, type: :string
end
