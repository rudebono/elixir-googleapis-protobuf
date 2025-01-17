defmodule Google.Gapic.Metadata.GapicMetadata.ServicesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Gapic.Metadata.GapicMetadata.ServiceForTransport
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceForTransport.ClientsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Gapic.Metadata.GapicMetadata.ServiceAsClient
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceForTransport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :clients, 1,
    repeated: true,
    type: Google.Gapic.Metadata.GapicMetadata.ServiceForTransport.ClientsEntry,
    map: true
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceAsClient.RpcsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Gapic.Metadata.GapicMetadata.MethodList
end

defmodule Google.Gapic.Metadata.GapicMetadata.ServiceAsClient do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :library_client, 1, type: :string, json_name: "libraryClient"

  field :rpcs, 2,
    repeated: true,
    type: Google.Gapic.Metadata.GapicMetadata.ServiceAsClient.RpcsEntry,
    map: true
end

defmodule Google.Gapic.Metadata.GapicMetadata.MethodList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :methods, 1, repeated: true, type: :string
end

defmodule Google.Gapic.Metadata.GapicMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :schema, 1, type: :string
  field :comment, 2, type: :string
  field :language, 3, type: :string
  field :proto_package, 4, type: :string, json_name: "protoPackage"
  field :library_package, 5, type: :string, json_name: "libraryPackage"

  field :services, 6,
    repeated: true,
    type: Google.Gapic.Metadata.GapicMetadata.ServicesEntry,
    map: true
end
