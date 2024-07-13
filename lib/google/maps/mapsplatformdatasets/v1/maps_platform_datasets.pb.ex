defmodule Google.Maps.Mapsplatformdatasets.V1.CreateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Maps.Mapsplatformdatasets.V1.Dataset, deprecated: false
end

defmodule Google.Maps.Mapsplatformdatasets.V1.UpdateDatasetMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: Google.Maps.Mapsplatformdatasets.V1.Dataset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Maps.Mapsplatformdatasets.V1.GetDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Maps.Mapsplatformdatasets.V1.ListDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :tag, 4, type: :string
end

defmodule Google.Maps.Mapsplatformdatasets.V1.ListDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Maps.Mapsplatformdatasets.V1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Mapsplatformdatasets.V1.FetchDatasetErrorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Maps.Mapsplatformdatasets.V1.FetchDatasetErrorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :errors, 3, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Maps.Mapsplatformdatasets.V1.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end