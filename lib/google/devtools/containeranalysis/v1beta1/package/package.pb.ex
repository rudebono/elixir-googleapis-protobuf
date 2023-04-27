defmodule Grafeas.V1beta1.Package.Architecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :X86, 1
  field :X64, 2
end

defmodule Grafeas.V1beta1.Package.Version.VersionKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VERSION_KIND_UNSPECIFIED, 0
  field :NORMAL, 1
  field :MINIMUM, 2
  field :MAXIMUM, 3
end

defmodule Grafeas.V1beta1.Package.Distribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :architecture, 2, type: Grafeas.V1beta1.Package.Architecture, enum: true
  field :latest_version, 3, type: Grafeas.V1beta1.Package.Version, json_name: "latestVersion"
  field :maintainer, 4, type: :string
  field :url, 5, type: :string
  field :description, 6, type: :string
end

defmodule Grafeas.V1beta1.Package.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cpe_uri, 1, type: :string, json_name: "cpeUri"
  field :version, 2, type: Grafeas.V1beta1.Package.Version
  field :path, 3, type: :string
end

defmodule Grafeas.V1beta1.Package.Package do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :distribution, 10, repeated: true, type: Grafeas.V1beta1.Package.Distribution
end

defmodule Grafeas.V1beta1.Package.Details do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :installation, 1, type: Grafeas.V1beta1.Package.Installation
end

defmodule Grafeas.V1beta1.Package.Installation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :location, 2, repeated: true, type: Grafeas.V1beta1.Package.Location
end

defmodule Grafeas.V1beta1.Package.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :epoch, 1, type: :int32
  field :name, 2, type: :string
  field :revision, 3, type: :string
  field :kind, 4, type: Grafeas.V1beta1.Package.Version.VersionKind, enum: true
end