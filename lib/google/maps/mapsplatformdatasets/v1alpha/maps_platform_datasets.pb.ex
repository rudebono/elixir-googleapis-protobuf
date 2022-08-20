defmodule Google.Maps.Mapsplatformdatasets.V1alpha.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Maps.Mapsplatformdatasets.V1alpha.Dataset, deprecated: false
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.UpdateDatasetMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: Google.Maps.Mapsplatformdatasets.V1alpha.Dataset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.GetDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :published_usage, 2,
    type: Google.Maps.Mapsplatformdatasets.V1alpha.Usage,
    json_name: "publishedUsage",
    enum: true
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetVersionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetVersionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Maps.Mapsplatformdatasets.V1alpha.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Maps.Mapsplatformdatasets.V1alpha.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.DeleteDatasetVersionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end