defmodule Grafeas.V1.Architecture do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ARCHITECTURE_UNSPECIFIED | :X86 | :X64

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :X86, 1
  field :X64, 2
end
defmodule Grafeas.V1.Version.VersionKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :VERSION_KIND_UNSPECIFIED | :NORMAL | :MINIMUM | :MAXIMUM

  field :VERSION_KIND_UNSPECIFIED, 0
  field :NORMAL, 1
  field :MINIMUM, 2
  field :MAXIMUM, 3
end
defmodule Grafeas.V1.Distribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpe_uri: String.t(),
          architecture: Grafeas.V1.Architecture.t(),
          latest_version: Grafeas.V1.Version.t() | nil,
          maintainer: String.t(),
          url: String.t(),
          description: String.t()
        }

  defstruct cpe_uri: "",
            architecture: :ARCHITECTURE_UNSPECIFIED,
            latest_version: nil,
            maintainer: "",
            url: "",
            description: ""

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :architecture, 2, type: Grafeas.V1.Architecture, enum: true
  field :latest_version, 3, type: Grafeas.V1.Version, json_name: "latestVersion"
  field :maintainer, 4, type: :string
  field :url, 5, type: :string
  field :description, 6, type: :string
end
defmodule Grafeas.V1.Location do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpe_uri: String.t(),
          version: Grafeas.V1.Version.t() | nil,
          path: String.t()
        }

  defstruct cpe_uri: "",
            version: nil,
            path: ""

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :version, 2, type: Grafeas.V1.Version
  field :path, 3, type: :string
end
defmodule Grafeas.V1.PackageNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          distribution: [Grafeas.V1.Distribution.t()]
        }

  defstruct name: "",
            distribution: []

  field :name, 1, type: :string
  field :distribution, 10, repeated: true, type: Grafeas.V1.Distribution
end
defmodule Grafeas.V1.PackageOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          location: [Grafeas.V1.Location.t()]
        }

  defstruct name: "",
            location: []

  field :name, 1, type: :string
  field :location, 2, repeated: true, type: Grafeas.V1.Location
end
defmodule Grafeas.V1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          epoch: integer,
          name: String.t(),
          revision: String.t(),
          inclusive: boolean,
          kind: Grafeas.V1.Version.VersionKind.t(),
          full_name: String.t()
        }

  defstruct epoch: 0,
            name: "",
            revision: "",
            inclusive: false,
            kind: :VERSION_KIND_UNSPECIFIED,
            full_name: ""

  field :epoch, 1, type: :int32
  field :name, 2, type: :string
  field :revision, 3, type: :string
  field :inclusive, 6, type: :bool
  field :kind, 4, type: Grafeas.V1.Version.VersionKind, enum: true
  field :full_name, 5, type: :string, json_name: "fullName"
end
