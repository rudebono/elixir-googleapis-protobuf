defmodule Google.Cloud.Servicedirectory.V1.Service.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1.Service.AnnotationsEntry,
    map: true,
    deprecated: false

  field :endpoints, 3,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1.Endpoint,
    deprecated: false

  field :uid, 7, type: :string, deprecated: false
end
