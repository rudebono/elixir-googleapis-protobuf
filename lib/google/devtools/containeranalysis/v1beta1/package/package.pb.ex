defmodule Grafeas.V1beta1.Package.Architecture do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ARCHITECTURE_UNSPECIFIED | :X86 | :X64

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :X86, 1
  field :X64, 2
end
defmodule Grafeas.V1beta1.Package.Version.VersionKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :VERSION_KIND_UNSPECIFIED | :NORMAL | :MINIMUM | :MAXIMUM

  field :VERSION_KIND_UNSPECIFIED, 0
  field :NORMAL, 1
  field :MINIMUM, 2
  field :MAXIMUM, 3
end
defmodule Grafeas.V1beta1.Package.Distribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpe_uri: String.t(),
          architecture: Grafeas.V1beta1.Package.Architecture.t(),
          latest_version: Grafeas.V1beta1.Package.Version.t() | nil,
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
  field :architecture, 2, type: Grafeas.V1beta1.Package.Architecture, enum: true
  field :latest_version, 3, type: Grafeas.V1beta1.Package.Version, json_name: "latestVersion"
  field :maintainer, 4, type: :string
  field :url, 5, type: :string
  field :description, 6, type: :string
end
defmodule Grafeas.V1beta1.Package.Location do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpe_uri: String.t(),
          version: Grafeas.V1beta1.Package.Version.t() | nil,
          path: String.t()
        }

  defstruct cpe_uri: "",
            version: nil,
            path: ""

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :version, 2, type: Grafeas.V1beta1.Package.Version
  field :path, 3, type: :string
end
defmodule Grafeas.V1beta1.Package.Package do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          distribution: [Grafeas.V1beta1.Package.Distribution.t()]
        }

  defstruct name: "",
            distribution: []

  field :name, 1, type: :string
  field :distribution, 10, repeated: true, type: Grafeas.V1beta1.Package.Distribution
end
defmodule Grafeas.V1beta1.Package.Details do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          installation: Grafeas.V1beta1.Package.Installation.t() | nil
        }

  defstruct installation: nil

  field :installation, 1, type: Grafeas.V1beta1.Package.Installation
end
defmodule Grafeas.V1beta1.Package.Installation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          location: [Grafeas.V1beta1.Package.Location.t()]
        }

  defstruct name: "",
            location: []

  field :name, 1, type: :string
  field :location, 2, repeated: true, type: Grafeas.V1beta1.Package.Location
end
defmodule Grafeas.V1beta1.Package.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          epoch: integer,
          name: String.t(),
          revision: String.t(),
          kind: Grafeas.V1beta1.Package.Version.VersionKind.t()
        }

  defstruct epoch: 0,
            name: "",
            revision: "",
            kind: :VERSION_KIND_UNSPECIFIED

  field :epoch, 1, type: :int32
  field :name, 2, type: :string
  field :revision, 3, type: :string
  field :kind, 4, type: Grafeas.V1beta1.Package.Version.VersionKind, enum: true
end
