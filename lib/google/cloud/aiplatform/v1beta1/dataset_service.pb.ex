defmodule Google.Cloud.Aiplatform.V1beta1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dataset: Google.Cloud.Aiplatform.V1beta1.Dataset.t() | nil
        }

  defstruct [:parent, :dataset]

  field :parent, 1, type: :string
  field :dataset, 2, type: Google.Cloud.Aiplatform.V1beta1.Dataset

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDatasetOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Cloud.Aiplatform.V1beta1.Dataset.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:dataset, :update_mask]

  field :dataset, 1, type: Google.Cloud.Aiplatform.V1beta1.Dataset
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          order_by: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask, :order_by]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datasets: [Google.Cloud.Aiplatform.V1beta1.Dataset.t()],
          next_page_token: String.t()
        }

  defstruct [:datasets, :next_page_token]

  field :datasets, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          import_configs: [Google.Cloud.Aiplatform.V1beta1.ImportDataConfig.t()]
        }

  defstruct [:name, :import_configs]

  field :name, 1, type: :string

  field :import_configs, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ImportDataConfig,
    json_name: "importConfigs"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          export_config: Google.Cloud.Aiplatform.V1beta1.ExportDataConfig.t() | nil
        }

  defstruct [:name, :export_config]

  field :name, 1, type: :string

  field :export_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExportDataConfig,
    json_name: "exportConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exported_files: [String.t()]
        }

  defstruct [:exported_files]

  field :exported_files, 1, repeated: true, type: :string, json_name: "exportedFiles"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          gcs_output_directory: String.t()
        }

  defstruct [:generic_metadata, :gcs_output_directory]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :gcs_output_directory, 2, type: :string, json_name: "gcsOutputDirectory"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDataItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          order_by: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask, :order_by]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDataItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_items: [Google.Cloud.Aiplatform.V1beta1.DataItem.t()],
          next_page_token: String.t()
        }

  defstruct [:data_items, :next_page_token]

  field :data_items, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataItem,
    json_name: "dataItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetAnnotationSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListAnnotationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          order_by: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask, :order_by]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListAnnotationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotations: [Google.Cloud.Aiplatform.V1beta1.Annotation.t()],
          next_page_token: String.t()
        }

  defstruct [:annotations, :next_page_token]

  field :annotations, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Annotation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.DatasetService"

  rpc :CreateDataset,
      Google.Cloud.Aiplatform.V1beta1.CreateDatasetRequest,
      Google.Longrunning.Operation

  rpc :GetDataset,
      Google.Cloud.Aiplatform.V1beta1.GetDatasetRequest,
      Google.Cloud.Aiplatform.V1beta1.Dataset

  rpc :UpdateDataset,
      Google.Cloud.Aiplatform.V1beta1.UpdateDatasetRequest,
      Google.Cloud.Aiplatform.V1beta1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Aiplatform.V1beta1.ListDatasetsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListDatasetsResponse

  rpc :DeleteDataset,
      Google.Cloud.Aiplatform.V1beta1.DeleteDatasetRequest,
      Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Aiplatform.V1beta1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Aiplatform.V1beta1.ExportDataRequest, Google.Longrunning.Operation

  rpc :ListDataItems,
      Google.Cloud.Aiplatform.V1beta1.ListDataItemsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListDataItemsResponse

  rpc :GetAnnotationSpec,
      Google.Cloud.Aiplatform.V1beta1.GetAnnotationSpecRequest,
      Google.Cloud.Aiplatform.V1beta1.AnnotationSpec

  rpc :ListAnnotations,
      Google.Cloud.Aiplatform.V1beta1.ListAnnotationsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListAnnotationsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.DatasetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.DatasetService.Service
end
