defmodule Grafeas.V1.Layer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :directive, 1, type: :string
  field :arguments, 2, type: :string
end
defmodule Grafeas.V1.Fingerprint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :v1_name, 1, type: :string, json_name: "v1Name"
  field :v2_blob, 2, repeated: true, type: :string, json_name: "v2Blob"
  field :v2_name, 3, type: :string, json_name: "v2Name"
end
defmodule Grafeas.V1.ImageNote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_url, 1, type: :string, json_name: "resourceUrl"
  field :fingerprint, 2, type: Grafeas.V1.Fingerprint
end
defmodule Grafeas.V1.ImageOccurrence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :fingerprint, 1, type: Grafeas.V1.Fingerprint
  field :distance, 2, type: :int32
  field :layer_info, 3, repeated: true, type: Grafeas.V1.Layer, json_name: "layerInfo"
  field :base_resource_url, 4, type: :string, json_name: "baseResourceUrl"
end
