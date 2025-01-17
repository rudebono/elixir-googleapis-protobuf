defmodule Google.Cloud.Contentwarehouse.V1.SynonymSet.Synonym do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :words, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.SynonymSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :context, 2, type: :string
  field :synonyms, 3, repeated: true, type: Google.Cloud.Contentwarehouse.V1.SynonymSet.Synonym
end
