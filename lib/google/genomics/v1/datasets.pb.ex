defmodule Google.Genomics.V1.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :name, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Genomics.V1.ListDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Genomics.V1.ListDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Genomics.V1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.CreateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset, 1, type: Google.Genomics.V1.Dataset
end

defmodule Google.Genomics.V1.UpdateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :dataset, 2, type: Google.Genomics.V1.Dataset
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Genomics.V1.UndeleteDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Genomics.V1.GetDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Genomics.V1.DatasetServiceV1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.genomics.v1.DatasetServiceV1",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListDatasets,
      Google.Genomics.V1.ListDatasetsRequest,
      Google.Genomics.V1.ListDatasetsResponse

  rpc :CreateDataset, Google.Genomics.V1.CreateDatasetRequest, Google.Genomics.V1.Dataset

  rpc :GetDataset, Google.Genomics.V1.GetDatasetRequest, Google.Genomics.V1.Dataset

  rpc :UpdateDataset, Google.Genomics.V1.UpdateDatasetRequest, Google.Genomics.V1.Dataset

  rpc :DeleteDataset, Google.Genomics.V1.DeleteDatasetRequest, Google.Protobuf.Empty

  rpc :UndeleteDataset, Google.Genomics.V1.UndeleteDatasetRequest, Google.Genomics.V1.Dataset

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Genomics.V1.DatasetServiceV1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1.DatasetServiceV1.Service
end
