defmodule Google.Cloud.Securitycenter.V2.VertexAi.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :source, 3, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.VertexAi.Pipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V2.VertexAi do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Securitycenter.V2.VertexAi.Dataset
  field :pipelines, 2, repeated: true, type: Google.Cloud.Securitycenter.V2.VertexAi.Pipeline
end
