defmodule Google.Genomics.V1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          project_id: String.t(),
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:id, :project_id, :name, :create_time]

  field :id, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :name, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project_id, :page_size, :page_token]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datasets: [Google.Genomics.V1.Dataset.t()],
          next_page_token: String.t()
        }

  defstruct [:datasets, :next_page_token]

  field :datasets, 1, repeated: true, type: Google.Genomics.V1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Genomics.V1.Dataset.t() | nil
        }

  defstruct [:dataset]

  field :dataset, 1, type: Google.Genomics.V1.Dataset

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.UpdateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t(),
          dataset: Google.Genomics.V1.Dataset.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:dataset_id, :dataset, :update_mask]

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :dataset, 2, type: Google.Genomics.V1.Dataset
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string, json_name: "datasetId"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.UndeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string, json_name: "datasetId"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string, json_name: "datasetId"

  def transform_module(), do: nil
end

defmodule Google.Genomics.V1.DatasetServiceV1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.genomics.v1.DatasetServiceV1"

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
