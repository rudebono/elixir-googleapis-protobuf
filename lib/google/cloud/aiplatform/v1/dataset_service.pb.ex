defmodule Google.Cloud.Aiplatform.V1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Aiplatform.V1.Dataset, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateDatasetOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Aiplatform.V1.Dataset, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datasets, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :import_configs, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ImportDataConfig,
    json_name: "importConfigs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.ExportDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :export_config, 2,
    type: Google.Cloud.Aiplatform.V1.ExportDataConfig,
    json_name: "exportConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExportDataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exported_files, 1, repeated: true, type: :string, json_name: "exportedFiles"
end

defmodule Google.Cloud.Aiplatform.V1.ExportDataOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :gcs_output_directory, 2, type: :string, json_name: "gcsOutputDirectory"
end

defmodule Google.Cloud.Aiplatform.V1.ListDataItemsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListDataItemsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_items, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DataItem,
    json_name: "dataItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.SearchDataItemsRequest.OrderByAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :saved_query, 1, type: :string, json_name: "savedQuery", deprecated: false
  field :order_by, 2, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.SearchDataItemsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :order, 0

  field :order_by_data_item, 12, type: :string, json_name: "orderByDataItem", oneof: 0

  field :order_by_annotation, 13,
    type: Google.Cloud.Aiplatform.V1.SearchDataItemsRequest.OrderByAnnotation,
    json_name: "orderByAnnotation",
    oneof: 0

  field :dataset, 1, type: :string, deprecated: false
  field :saved_query, 2, type: :string, json_name: "savedQuery", deprecated: true
  field :data_labeling_job, 3, type: :string, json_name: "dataLabelingJob"
  field :data_item_filter, 4, type: :string, json_name: "dataItemFilter"
  field :annotations_filter, 5, type: :string, json_name: "annotationsFilter", deprecated: true
  field :annotation_filters, 11, repeated: true, type: :string, json_name: "annotationFilters"
  field :field_mask, 6, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :annotations_limit, 7, type: :int32, json_name: "annotationsLimit"
  field :page_size, 8, type: :int32, json_name: "pageSize"
  field :order_by, 9, type: :string, json_name: "orderBy", deprecated: true
  field :page_token, 10, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1.SearchDataItemsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_item_views, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DataItemView,
    json_name: "dataItemViews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DataItemView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_item, 1, type: Google.Cloud.Aiplatform.V1.DataItem, json_name: "dataItem"
  field :annotations, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Annotation
  field :has_truncated_annotations, 3, type: :bool, json_name: "hasTruncatedAnnotations"
end

defmodule Google.Cloud.Aiplatform.V1.ListSavedQueriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListSavedQueriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :saved_queries, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SavedQuery,
    json_name: "savedQueries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.GetAnnotationSpecRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListAnnotationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListAnnotationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :annotations, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Annotation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DatasetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.DatasetService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateDataset,
      Google.Cloud.Aiplatform.V1.CreateDatasetRequest,
      Google.Longrunning.Operation

  rpc :GetDataset,
      Google.Cloud.Aiplatform.V1.GetDatasetRequest,
      Google.Cloud.Aiplatform.V1.Dataset

  rpc :UpdateDataset,
      Google.Cloud.Aiplatform.V1.UpdateDatasetRequest,
      Google.Cloud.Aiplatform.V1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Aiplatform.V1.ListDatasetsRequest,
      Google.Cloud.Aiplatform.V1.ListDatasetsResponse

  rpc :DeleteDataset,
      Google.Cloud.Aiplatform.V1.DeleteDatasetRequest,
      Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Aiplatform.V1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Aiplatform.V1.ExportDataRequest, Google.Longrunning.Operation

  rpc :ListDataItems,
      Google.Cloud.Aiplatform.V1.ListDataItemsRequest,
      Google.Cloud.Aiplatform.V1.ListDataItemsResponse

  rpc :SearchDataItems,
      Google.Cloud.Aiplatform.V1.SearchDataItemsRequest,
      Google.Cloud.Aiplatform.V1.SearchDataItemsResponse

  rpc :ListSavedQueries,
      Google.Cloud.Aiplatform.V1.ListSavedQueriesRequest,
      Google.Cloud.Aiplatform.V1.ListSavedQueriesResponse

  rpc :GetAnnotationSpec,
      Google.Cloud.Aiplatform.V1.GetAnnotationSpecRequest,
      Google.Cloud.Aiplatform.V1.AnnotationSpec

  rpc :ListAnnotations,
      Google.Cloud.Aiplatform.V1.ListAnnotationsRequest,
      Google.Cloud.Aiplatform.V1.ListAnnotationsResponse
end

defmodule Google.Cloud.Aiplatform.V1.DatasetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.DatasetService.Service
end