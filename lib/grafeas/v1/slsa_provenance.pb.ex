defmodule Grafeas.V1.SlsaProvenance.SlsaRecipe do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          defined_in_material: integer,
          entry_point: String.t(),
          arguments: Google.Protobuf.Any.t() | nil,
          environment: Google.Protobuf.Any.t() | nil
        }

  defstruct type: "",
            defined_in_material: 0,
            entry_point: "",
            arguments: nil,
            environment: nil

  field :type, 1, type: :string
  field :defined_in_material, 2, type: :int64, json_name: "definedInMaterial"
  field :entry_point, 3, type: :string, json_name: "entryPoint"
  field :arguments, 4, type: Google.Protobuf.Any
  field :environment, 5, type: Google.Protobuf.Any
end
defmodule Grafeas.V1.SlsaProvenance.SlsaCompleteness do
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
defmodule Grafeas.V1.SlsaProvenance.SlsaMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_invocation_id: String.t(),
          build_started_on: Google.Protobuf.Timestamp.t() | nil,
          build_finished_on: Google.Protobuf.Timestamp.t() | nil,
          completeness: Grafeas.V1.SlsaProvenance.SlsaCompleteness.t() | nil,
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
  field :completeness, 4, type: Grafeas.V1.SlsaProvenance.SlsaCompleteness
  field :reproducible, 5, type: :bool
end
defmodule Grafeas.V1.SlsaProvenance.SlsaBuilder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct id: ""

  field :id, 1, type: :string
end
defmodule Grafeas.V1.SlsaProvenance.Material.DigestEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Grafeas.V1.SlsaProvenance.Material do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          digest: %{String.t() => String.t()}
        }

  defstruct uri: "",
            digest: %{}

  field :uri, 1, type: :string

  field :digest, 2,
    repeated: true,
    type: Grafeas.V1.SlsaProvenance.Material.DigestEntry,
    map: true
end
defmodule Grafeas.V1.SlsaProvenance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builder: Grafeas.V1.SlsaProvenance.SlsaBuilder.t() | nil,
          recipe: Grafeas.V1.SlsaProvenance.SlsaRecipe.t() | nil,
          metadata: Grafeas.V1.SlsaProvenance.SlsaMetadata.t() | nil,
          materials: [Grafeas.V1.SlsaProvenance.Material.t()]
        }

  defstruct builder: nil,
            recipe: nil,
            metadata: nil,
            materials: []

  field :builder, 1, type: Grafeas.V1.SlsaProvenance.SlsaBuilder
  field :recipe, 2, type: Grafeas.V1.SlsaProvenance.SlsaRecipe
  field :metadata, 3, type: Grafeas.V1.SlsaProvenance.SlsaMetadata
  field :materials, 4, repeated: true, type: Grafeas.V1.SlsaProvenance.Material
end
