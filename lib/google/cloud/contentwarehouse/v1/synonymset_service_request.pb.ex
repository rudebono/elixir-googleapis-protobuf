defmodule Google.Cloud.Contentwarehouse.V1.CreateSynonymSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :synonym_set, 2,
    type: Google.Cloud.Contentwarehouse.V1.SynonymSet,
    json_name: "synonymSet",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.GetSynonymSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.ListSynonymSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.ListSynonymSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :synonym_sets, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.SynonymSet,
    json_name: "synonymSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.UpdateSynonymSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :synonym_set, 2,
    type: Google.Cloud.Contentwarehouse.V1.SynonymSet,
    json_name: "synonymSet",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.DeleteSynonymSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
