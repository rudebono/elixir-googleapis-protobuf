defmodule Google.Cloud.Financialservices.V1.Dataset.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Financialservices.V1.Dataset.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Financialservices.V1.Dataset.TableSpecsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Financialservices.V1.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.Dataset.LabelsEntry,
    map: true

  field :table_specs, 5,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.Dataset.TableSpecsEntry,
    json_name: "tableSpecs",
    map: true,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Financialservices.V1.Dataset.State,
    enum: true,
    deprecated: false

  field :date_range, 8, type: Google.Type.Interval, json_name: "dateRange", deprecated: false
  field :time_zone, 9, type: Google.Type.TimeZone, json_name: "timeZone"
end

defmodule Google.Cloud.Financialservices.V1.ListDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Financialservices.V1.ListDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Financialservices.V1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Financialservices.V1.GetDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.CreateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :dataset, 3, type: Google.Cloud.Financialservices.V1.Dataset, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.UpdateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :dataset, 2, type: Google.Cloud.Financialservices.V1.Dataset, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
