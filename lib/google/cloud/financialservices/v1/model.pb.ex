defmodule Google.Cloud.Financialservices.V1.Model.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Financialservices.V1.Model.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Financialservices.V1.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
    type: Google.Cloud.Financialservices.V1.Model.LabelsEntry,
    map: true

  field :state, 5,
    type: Google.Cloud.Financialservices.V1.Model.State,
    enum: true,
    deprecated: false

  field :engine_version, 6, type: :string, json_name: "engineVersion", deprecated: false
  field :engine_config, 7, type: :string, json_name: "engineConfig", deprecated: false
  field :primary_dataset, 8, type: :string, json_name: "primaryDataset", deprecated: false
  field :end_time, 10, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :line_of_business, 12,
    type: Google.Cloud.Financialservices.V1.LineOfBusiness,
    json_name: "lineOfBusiness",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Financialservices.V1.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Financialservices.V1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Financialservices.V1.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.CreateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :model_id, 2, type: :string, json_name: "modelId", deprecated: false
  field :model, 3, type: Google.Cloud.Financialservices.V1.Model, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.UpdateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :model, 2, type: Google.Cloud.Financialservices.V1.Model, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.DeleteModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportModelMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :structured_metadata_destination, 2,
    type: Google.Cloud.Financialservices.V1.BigQueryDestination,
    json_name: "structuredMetadataDestination",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportModelMetadataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
