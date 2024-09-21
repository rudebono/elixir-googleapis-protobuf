defmodule Grafeas.V1.Architecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :X86, 1
  field :X64, 2
end

defmodule Grafeas.V1.Version.VersionKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERSION_KIND_UNSPECIFIED, 0
  field :NORMAL, 1
  field :MINIMUM, 2
  field :MAXIMUM, 3
end

defmodule Grafeas.V1.Distribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cpe_uri, 1, type: :string, json_name: "cpeUri", deprecated: false
  field :architecture, 2, type: Grafeas.V1.Architecture, enum: true
  field :latest_version, 3, type: Grafeas.V1.Version, json_name: "latestVersion"
  field :maintainer, 4, type: :string
  field :url, 5, type: :string
  field :description, 6, type: :string
end

defmodule Grafeas.V1.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :version, 2, type: Grafeas.V1.Version
  field :path, 3, type: :string
end

defmodule Grafeas.V1.PackageNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :distribution, 10, repeated: true, type: Grafeas.V1.Distribution
  field :package_type, 11, type: :string, json_name: "packageType"
  field :cpe_uri, 12, type: :string, json_name: "cpeUri"
  field :architecture, 13, type: Grafeas.V1.Architecture, enum: true
  field :version, 14, type: Grafeas.V1.Version
  field :maintainer, 15, type: :string
  field :url, 16, type: :string
  field :description, 17, type: :string
  field :license, 18, type: Grafeas.V1.License
  field :digest, 19, repeated: true, type: Grafeas.V1.Digest
end

defmodule Grafeas.V1.PackageOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :location, 2, repeated: true, type: Grafeas.V1.Location
  field :package_type, 3, type: :string, json_name: "packageType", deprecated: false
  field :cpe_uri, 4, type: :string, json_name: "cpeUri", deprecated: false
  field :architecture, 5, type: Grafeas.V1.Architecture, enum: true, deprecated: false
  field :license, 6, type: Grafeas.V1.License
  field :version, 7, type: Grafeas.V1.Version, deprecated: false
end

defmodule Grafeas.V1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :epoch, 1, type: :int32
  field :name, 2, type: :string
  field :revision, 3, type: :string
  field :inclusive, 6, type: :bool
  field :kind, 4, type: Grafeas.V1.Version.VersionKind, enum: true
  field :full_name, 5, type: :string, json_name: "fullName"
end