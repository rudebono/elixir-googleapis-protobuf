defmodule Google.Cloud.Aiplatform.V1beta1.CreateTensorboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tensorboard: Google.Cloud.Aiplatform.V1beta1.Tensorboard.t() | nil
        }

  defstruct parent: "",
            tensorboard: nil

  field :parent, 1, type: :string, deprecated: false
  field :tensorboard, 2, type: Google.Cloud.Aiplatform.V1beta1.Tensorboard, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.GetTensorboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            order_by: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboards: [Google.Cloud.Aiplatform.V1beta1.Tensorboard.t()],
          next_page_token: String.t()
        }

  defstruct tensorboards: [],
            next_page_token: ""

  field :tensorboards, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Tensorboard
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          tensorboard: Google.Cloud.Aiplatform.V1beta1.Tensorboard.t() | nil
        }

  defstruct update_mask: nil,
            tensorboard: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard, 2, type: Google.Cloud.Aiplatform.V1beta1.Tensorboard, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateTensorboardExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tensorboard_experiment: Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment.t() | nil,
          tensorboard_experiment_id: String.t()
        }

  defstruct parent: "",
            tensorboard_experiment: nil,
            tensorboard_experiment_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :tensorboard_experiment, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment,
    json_name: "tensorboardExperiment"

  field :tensorboard_experiment_id, 3,
    type: :string,
    json_name: "tensorboardExperimentId",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.GetTensorboardExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            order_by: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_experiments: [Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment.t()],
          next_page_token: String.t()
        }

  defstruct tensorboard_experiments: [],
            next_page_token: ""

  field :tensorboard_experiments, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment,
    json_name: "tensorboardExperiments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          tensorboard_experiment: Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment.t() | nil
        }

  defstruct update_mask: nil,
            tensorboard_experiment: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard_experiment, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment,
    json_name: "tensorboardExperiment",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardRunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Cloud.Aiplatform.V1beta1.CreateTensorboardRunRequest.t()]
        }

  defstruct parent: "",
            requests: []

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.CreateTensorboardRunRequest,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_runs: [Google.Cloud.Aiplatform.V1beta1.TensorboardRun.t()]
        }

  defstruct tensorboard_runs: []

  field :tensorboard_runs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardRun,
    json_name: "tensorboardRuns"
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateTensorboardRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tensorboard_run: Google.Cloud.Aiplatform.V1beta1.TensorboardRun.t() | nil,
          tensorboard_run_id: String.t()
        }

  defstruct parent: "",
            tensorboard_run: nil,
            tensorboard_run_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :tensorboard_run, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardRun,
    json_name: "tensorboardRun",
    deprecated: false

  field :tensorboard_run_id, 3, type: :string, json_name: "tensorboardRunId", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.GetTensorboardRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ReadTensorboardBlobDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series: String.t(),
          blob_ids: [String.t()]
        }

  defstruct time_series: "",
            blob_ids: []

  field :time_series, 1, type: :string, json_name: "timeSeries", deprecated: false
  field :blob_ids, 2, repeated: true, type: :string, json_name: "blobIds"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ReadTensorboardBlobDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          blobs: [Google.Cloud.Aiplatform.V1beta1.TensorboardBlob.t()]
        }

  defstruct blobs: []

  field :blobs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.TensorboardBlob
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardRunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            order_by: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_runs: [Google.Cloud.Aiplatform.V1beta1.TensorboardRun.t()],
          next_page_token: String.t()
        }

  defstruct tensorboard_runs: [],
            next_page_token: ""

  field :tensorboard_runs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardRun,
    json_name: "tensorboardRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          tensorboard_run: Google.Cloud.Aiplatform.V1beta1.TensorboardRun.t() | nil
        }

  defstruct update_mask: nil,
            tensorboard_run: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard_run, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardRun,
    json_name: "tensorboardRun",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Cloud.Aiplatform.V1beta1.CreateTensorboardTimeSeriesRequest.t()]
        }

  defstruct parent: "",
            requests: []

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.CreateTensorboardTimeSeriesRequest,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_time_series: [Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.t()]
        }

  defstruct tensorboard_time_series: []

  field :tensorboard_time_series, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries"
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateTensorboardTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          tensorboard_time_series_id: String.t(),
          tensorboard_time_series: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.t() | nil
        }

  defstruct parent: "",
            tensorboard_time_series_id: "",
            tensorboard_time_series: nil

  field :parent, 1, type: :string, deprecated: false

  field :tensorboard_time_series_id, 3,
    type: :string,
    json_name: "tensorboardTimeSeriesId",
    deprecated: false

  field :tensorboard_time_series, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.GetTensorboardTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            order_by: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListTensorboardTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_time_series: [Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.t()],
          next_page_token: String.t()
        }

  defstruct tensorboard_time_series: [],
            next_page_token: ""

  field :tensorboard_time_series, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          tensorboard_time_series: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.t() | nil
        }

  defstruct update_mask: nil,
            tensorboard_time_series: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard_time_series, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.BatchReadTensorboardTimeSeriesDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard: String.t(),
          time_series: [String.t()]
        }

  defstruct tensorboard: "",
            time_series: []

  field :tensorboard, 1, type: :string, deprecated: false
  field :time_series, 2, repeated: true, type: :string, json_name: "timeSeries", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.BatchReadTensorboardTimeSeriesDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series_data: [Google.Cloud.Aiplatform.V1beta1.TimeSeriesData.t()]
        }

  defstruct time_series_data: []

  field :time_series_data, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TimeSeriesData,
    json_name: "timeSeriesData"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ReadTensorboardTimeSeriesDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_time_series: String.t(),
          max_data_points: integer,
          filter: String.t()
        }

  defstruct tensorboard_time_series: "",
            max_data_points: 0,
            filter: ""

  field :tensorboard_time_series, 1,
    type: :string,
    json_name: "tensorboardTimeSeries",
    deprecated: false

  field :max_data_points, 2, type: :int32, json_name: "maxDataPoints"
  field :filter, 3, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.ReadTensorboardTimeSeriesDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series_data: Google.Cloud.Aiplatform.V1beta1.TimeSeriesData.t() | nil
        }

  defstruct time_series_data: nil

  field :time_series_data, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TimeSeriesData,
    json_name: "timeSeriesData"
end
defmodule Google.Cloud.Aiplatform.V1beta1.WriteTensorboardExperimentDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_experiment: String.t(),
          write_run_data_requests: [
            Google.Cloud.Aiplatform.V1beta1.WriteTensorboardRunDataRequest.t()
          ]
        }

  defstruct tensorboard_experiment: "",
            write_run_data_requests: []

  field :tensorboard_experiment, 1,
    type: :string,
    json_name: "tensorboardExperiment",
    deprecated: false

  field :write_run_data_requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.WriteTensorboardRunDataRequest,
    json_name: "writeRunDataRequests",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.WriteTensorboardExperimentDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Aiplatform.V1beta1.WriteTensorboardRunDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_run: String.t(),
          time_series_data: [Google.Cloud.Aiplatform.V1beta1.TimeSeriesData.t()]
        }

  defstruct tensorboard_run: "",
            time_series_data: []

  field :tensorboard_run, 1, type: :string, json_name: "tensorboardRun", deprecated: false

  field :time_series_data, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TimeSeriesData,
    json_name: "timeSeriesData",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.WriteTensorboardRunDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExportTensorboardTimeSeriesDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_time_series: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct tensorboard_time_series: "",
            filter: "",
            page_size: 0,
            page_token: "",
            order_by: ""

  field :tensorboard_time_series, 1,
    type: :string,
    json_name: "tensorboardTimeSeries",
    deprecated: false

  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExportTensorboardTimeSeriesDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series_data_points: [Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint.t()],
          next_page_token: String.t()
        }

  defstruct time_series_data_points: [],
            next_page_token: ""

  field :time_series_data_points, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint,
    json_name: "timeSeriesDataPoints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateTensorboardOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.TensorboardService"

  rpc :CreateTensorboard,
      Google.Cloud.Aiplatform.V1beta1.CreateTensorboardRequest,
      Google.Longrunning.Operation

  rpc :GetTensorboard,
      Google.Cloud.Aiplatform.V1beta1.GetTensorboardRequest,
      Google.Cloud.Aiplatform.V1beta1.Tensorboard

  rpc :UpdateTensorboard,
      Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardRequest,
      Google.Longrunning.Operation

  rpc :ListTensorboards,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardsResponse

  rpc :DeleteTensorboard,
      Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardRequest,
      Google.Longrunning.Operation

  rpc :CreateTensorboardExperiment,
      Google.Cloud.Aiplatform.V1beta1.CreateTensorboardExperimentRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment

  rpc :GetTensorboardExperiment,
      Google.Cloud.Aiplatform.V1beta1.GetTensorboardExperimentRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment

  rpc :UpdateTensorboardExperiment,
      Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardExperimentRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment

  rpc :ListTensorboardExperiments,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardExperimentsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardExperimentsResponse

  rpc :DeleteTensorboardExperiment,
      Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardExperimentRequest,
      Google.Longrunning.Operation

  rpc :CreateTensorboardRun,
      Google.Cloud.Aiplatform.V1beta1.CreateTensorboardRunRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardRun

  rpc :BatchCreateTensorboardRuns,
      Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardRunsRequest,
      Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardRunsResponse

  rpc :GetTensorboardRun,
      Google.Cloud.Aiplatform.V1beta1.GetTensorboardRunRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardRun

  rpc :UpdateTensorboardRun,
      Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardRunRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardRun

  rpc :ListTensorboardRuns,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardRunsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardRunsResponse

  rpc :DeleteTensorboardRun,
      Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardRunRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1beta1.BatchCreateTensorboardTimeSeriesResponse

  rpc :CreateTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1beta1.CreateTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries

  rpc :GetTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1beta1.GetTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries

  rpc :UpdateTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1beta1.UpdateTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries

  rpc :ListTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListTensorboardTimeSeriesResponse

  rpc :DeleteTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1beta1.DeleteTensorboardTimeSeriesRequest,
      Google.Longrunning.Operation

  rpc :BatchReadTensorboardTimeSeriesData,
      Google.Cloud.Aiplatform.V1beta1.BatchReadTensorboardTimeSeriesDataRequest,
      Google.Cloud.Aiplatform.V1beta1.BatchReadTensorboardTimeSeriesDataResponse

  rpc :ReadTensorboardTimeSeriesData,
      Google.Cloud.Aiplatform.V1beta1.ReadTensorboardTimeSeriesDataRequest,
      Google.Cloud.Aiplatform.V1beta1.ReadTensorboardTimeSeriesDataResponse

  rpc :ReadTensorboardBlobData,
      Google.Cloud.Aiplatform.V1beta1.ReadTensorboardBlobDataRequest,
      stream(Google.Cloud.Aiplatform.V1beta1.ReadTensorboardBlobDataResponse)

  rpc :WriteTensorboardExperimentData,
      Google.Cloud.Aiplatform.V1beta1.WriteTensorboardExperimentDataRequest,
      Google.Cloud.Aiplatform.V1beta1.WriteTensorboardExperimentDataResponse

  rpc :WriteTensorboardRunData,
      Google.Cloud.Aiplatform.V1beta1.WriteTensorboardRunDataRequest,
      Google.Cloud.Aiplatform.V1beta1.WriteTensorboardRunDataResponse

  rpc :ExportTensorboardTimeSeriesData,
      Google.Cloud.Aiplatform.V1beta1.ExportTensorboardTimeSeriesDataRequest,
      Google.Cloud.Aiplatform.V1beta1.ExportTensorboardTimeSeriesDataResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.TensorboardService.Service
end
