defmodule Google.Cloud.Servicedirectory.V1.Endpoint.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :address, 2, type: :string, deprecated: false
  field :port, 3, type: :int32, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1.Endpoint.AnnotationsEntry,
    map: true,
    deprecated: false

  field :network, 8, type: :string, deprecated: false
  field :uid, 9, type: :string, deprecated: false
end