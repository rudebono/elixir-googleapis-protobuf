defmodule Google.Cloud.Aiplatform.V1.CreateFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          featurestore: Google.Cloud.Aiplatform.V1.Featurestore.t() | nil,
          featurestore_id: String.t()
        }

  defstruct parent: "",
            featurestore: nil,
            featurestore_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :featurestore, 2, type: Google.Cloud.Aiplatform.V1.Featurestore, deprecated: false
  field :featurestore_id, 3, type: :string, json_name: "featurestoreId", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.GetFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListFeaturestoresRequest do
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
defmodule Google.Cloud.Aiplatform.V1.ListFeaturestoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          featurestores: [Google.Cloud.Aiplatform.V1.Featurestore.t()],
          next_page_token: String.t()
        }

  defstruct featurestores: [],
            next_page_token: ""

  field :featurestores, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Featurestore
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.UpdateFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          featurestore: Google.Cloud.Aiplatform.V1.Featurestore.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct featurestore: nil,
            update_mask: nil

  field :featurestore, 1, type: Google.Cloud.Aiplatform.V1.Featurestore, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end
defmodule Google.Cloud.Aiplatform.V1.ImportFeatureValuesRequest.FeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          source_field: String.t()
        }

  defstruct id: "",
            source_field: ""

  field :id, 1, type: :string, deprecated: false
  field :source_field, 2, type: :string, json_name: "sourceField"
end
defmodule Google.Cloud.Aiplatform.V1.ImportFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:avro_source, Google.Cloud.Aiplatform.V1.AvroSource.t() | nil}
            | {:bigquery_source, Google.Cloud.Aiplatform.V1.BigQuerySource.t() | nil}
            | {:csv_source, Google.Cloud.Aiplatform.V1.CsvSource.t() | nil},
          feature_time_source:
            {:feature_time_field, String.t()}
            | {:feature_time, Google.Protobuf.Timestamp.t() | nil},
          entity_type: String.t(),
          entity_id_field: String.t(),
          feature_specs: [Google.Cloud.Aiplatform.V1.ImportFeatureValuesRequest.FeatureSpec.t()],
          disable_online_serving: boolean,
          worker_count: integer,
          disable_ingestion_analysis: boolean
        }

  defstruct source: nil,
            feature_time_source: nil,
            entity_type: "",
            entity_id_field: "",
            feature_specs: [],
            disable_online_serving: false,
            worker_count: 0,
            disable_ingestion_analysis: false

  oneof :source, 0
  oneof :feature_time_source, 1

  field :avro_source, 2,
    type: Google.Cloud.Aiplatform.V1.AvroSource,
    json_name: "avroSource",
    oneof: 0

  field :bigquery_source, 3,
    type: Google.Cloud.Aiplatform.V1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :csv_source, 4,
    type: Google.Cloud.Aiplatform.V1.CsvSource,
    json_name: "csvSource",
    oneof: 0

  field :feature_time_field, 6, type: :string, json_name: "featureTimeField", oneof: 1
  field :feature_time, 7, type: Google.Protobuf.Timestamp, json_name: "featureTime", oneof: 1
  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false
  field :entity_id_field, 5, type: :string, json_name: "entityIdField"

  field :feature_specs, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ImportFeatureValuesRequest.FeatureSpec,
    json_name: "featureSpecs",
    deprecated: false

  field :disable_online_serving, 9, type: :bool, json_name: "disableOnlineServing"
  field :worker_count, 11, type: :int32, json_name: "workerCount"
  field :disable_ingestion_analysis, 12, type: :bool, json_name: "disableIngestionAnalysis"
end
defmodule Google.Cloud.Aiplatform.V1.ImportFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          imported_entity_count: integer,
          imported_feature_value_count: integer,
          invalid_row_count: integer
        }

  defstruct imported_entity_count: 0,
            imported_feature_value_count: 0,
            invalid_row_count: 0

  field :imported_entity_count, 1, type: :int64, json_name: "importedEntityCount"
  field :imported_feature_value_count, 2, type: :int64, json_name: "importedFeatureValueCount"
  field :invalid_row_count, 6, type: :int64, json_name: "invalidRowCount"
end
defmodule Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest.PassThroughField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_name: String.t()
        }

  defstruct field_name: ""

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest.EntityTypeSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type_id: String.t(),
          feature_selector: Google.Cloud.Aiplatform.V1.FeatureSelector.t() | nil,
          settings: [Google.Cloud.Aiplatform.V1.DestinationFeatureSetting.t()]
        }

  defstruct entity_type_id: "",
            feature_selector: nil,
            settings: []

  field :entity_type_id, 1, type: :string, json_name: "entityTypeId", deprecated: false

  field :feature_selector, 2,
    type: Google.Cloud.Aiplatform.V1.FeatureSelector,
    json_name: "featureSelector",
    deprecated: false

  field :settings, 3, repeated: true, type: Google.Cloud.Aiplatform.V1.DestinationFeatureSetting
end
defmodule Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_option:
            {:csv_read_instances, Google.Cloud.Aiplatform.V1.CsvSource.t() | nil}
            | {:bigquery_read_instances, Google.Cloud.Aiplatform.V1.BigQuerySource.t() | nil},
          featurestore: String.t(),
          destination: Google.Cloud.Aiplatform.V1.FeatureValueDestination.t() | nil,
          pass_through_fields: [
            Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest.PassThroughField.t()
          ],
          entity_type_specs: [
            Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest.EntityTypeSpec.t()
          ]
        }

  defstruct read_option: nil,
            featurestore: "",
            destination: nil,
            pass_through_fields: [],
            entity_type_specs: []

  oneof :read_option, 0

  field :csv_read_instances, 3,
    type: Google.Cloud.Aiplatform.V1.CsvSource,
    json_name: "csvReadInstances",
    oneof: 0

  field :bigquery_read_instances, 5,
    type: Google.Cloud.Aiplatform.V1.BigQuerySource,
    json_name: "bigqueryReadInstances",
    oneof: 0

  field :featurestore, 1, type: :string, deprecated: false

  field :destination, 4,
    type: Google.Cloud.Aiplatform.V1.FeatureValueDestination,
    deprecated: false

  field :pass_through_fields, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest.PassThroughField,
    json_name: "passThroughFields"

  field :entity_type_specs, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest.EntityTypeSpec,
    json_name: "entityTypeSpecs",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest.SnapshotExport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct snapshot_time: nil,
            start_time: nil

  field :snapshot_time, 1, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
end
defmodule Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest.FullExport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct start_time: nil,
            end_time: nil

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 1, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode:
            {:snapshot_export,
             Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest.SnapshotExport.t() | nil}
            | {:full_export,
               Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest.FullExport.t() | nil},
          entity_type: String.t(),
          destination: Google.Cloud.Aiplatform.V1.FeatureValueDestination.t() | nil,
          feature_selector: Google.Cloud.Aiplatform.V1.FeatureSelector.t() | nil,
          settings: [Google.Cloud.Aiplatform.V1.DestinationFeatureSetting.t()]
        }

  defstruct mode: nil,
            entity_type: "",
            destination: nil,
            feature_selector: nil,
            settings: []

  oneof :mode, 0

  field :snapshot_export, 3,
    type: Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest.SnapshotExport,
    json_name: "snapshotExport",
    oneof: 0

  field :full_export, 7,
    type: Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest.FullExport,
    json_name: "fullExport",
    oneof: 0

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false

  field :destination, 4,
    type: Google.Cloud.Aiplatform.V1.FeatureValueDestination,
    deprecated: false

  field :feature_selector, 5,
    type: Google.Cloud.Aiplatform.V1.FeatureSelector,
    json_name: "featureSelector",
    deprecated: false

  field :settings, 6, repeated: true, type: Google.Cloud.Aiplatform.V1.DestinationFeatureSetting
end
defmodule Google.Cloud.Aiplatform.V1.DestinationFeatureSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_id: String.t(),
          destination_field: String.t()
        }

  defstruct feature_id: "",
            destination_field: ""

  field :feature_id, 1, type: :string, json_name: "featureId", deprecated: false
  field :destination_field, 2, type: :string, json_name: "destinationField"
end
defmodule Google.Cloud.Aiplatform.V1.FeatureValueDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:bigquery_destination, Google.Cloud.Aiplatform.V1.BigQueryDestination.t() | nil}
            | {:tfrecord_destination, Google.Cloud.Aiplatform.V1.TFRecordDestination.t() | nil}
            | {:csv_destination, Google.Cloud.Aiplatform.V1.CsvDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :bigquery_destination, 1,
    type: Google.Cloud.Aiplatform.V1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  field :tfrecord_destination, 2,
    type: Google.Cloud.Aiplatform.V1.TFRecordDestination,
    json_name: "tfrecordDestination",
    oneof: 0

  field :csv_destination, 3,
    type: Google.Cloud.Aiplatform.V1.CsvDestination,
    json_name: "csvDestination",
    oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1.ExportFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Aiplatform.V1.CreateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entity_type: Google.Cloud.Aiplatform.V1.EntityType.t() | nil,
          entity_type_id: String.t()
        }

  defstruct parent: "",
            entity_type: nil,
            entity_type_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :entity_type, 2, type: Google.Cloud.Aiplatform.V1.EntityType, json_name: "entityType"
  field :entity_type_id, 3, type: :string, json_name: "entityTypeId", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.GetEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListEntityTypesRequest do
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
defmodule Google.Cloud.Aiplatform.V1.ListEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_types: [Google.Cloud.Aiplatform.V1.EntityType.t()],
          next_page_token: String.t()
        }

  defstruct entity_types: [],
            next_page_token: ""

  field :entity_types, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.EntityType,
    json_name: "entityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.UpdateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: Google.Cloud.Aiplatform.V1.EntityType.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct entity_type: nil,
            update_mask: nil

  field :entity_type, 1,
    type: Google.Cloud.Aiplatform.V1.EntityType,
    json_name: "entityType",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end
defmodule Google.Cloud.Aiplatform.V1.CreateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          feature: Google.Cloud.Aiplatform.V1.Feature.t() | nil,
          feature_id: String.t()
        }

  defstruct parent: "",
            feature: nil,
            feature_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :feature, 2, type: Google.Cloud.Aiplatform.V1.Feature, deprecated: false
  field :feature_id, 3, type: :string, json_name: "featureId", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchCreateFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Cloud.Aiplatform.V1.CreateFeatureRequest.t()]
        }

  defstruct parent: "",
            requests: []

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CreateFeatureRequest,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.BatchCreateFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          features: [Google.Cloud.Aiplatform.V1.Feature.t()]
        }

  defstruct features: []

  field :features, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Feature
end
defmodule Google.Cloud.Aiplatform.V1.GetFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          latest_stats_count: integer
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            order_by: "",
            read_mask: nil,
            latest_stats_count: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :latest_stats_count, 7, type: :int32, json_name: "latestStatsCount"
end
defmodule Google.Cloud.Aiplatform.V1.ListFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          features: [Google.Cloud.Aiplatform.V1.Feature.t()],
          next_page_token: String.t()
        }

  defstruct features: [],
            next_page_token: ""

  field :features, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Feature
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.SearchFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct location: "",
            query: "",
            page_size: 0,
            page_token: ""

  field :location, 1, type: :string, deprecated: false
  field :query, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Aiplatform.V1.SearchFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          features: [Google.Cloud.Aiplatform.V1.Feature.t()],
          next_page_token: String.t()
        }

  defstruct features: [],
            next_page_token: ""

  field :features, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Feature
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.UpdateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature: Google.Cloud.Aiplatform.V1.Feature.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct feature: nil,
            update_mask: nil

  field :feature, 1, type: Google.Cloud.Aiplatform.V1.Feature, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CreateFeaturestoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.UpdateFeaturestoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.ImportFeatureValuesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil,
          imported_entity_count: integer,
          imported_feature_value_count: integer,
          invalid_row_count: integer
        }

  defstruct generic_metadata: nil,
            imported_entity_count: 0,
            imported_feature_value_count: 0,
            invalid_row_count: 0

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :imported_entity_count, 2, type: :int64, json_name: "importedEntityCount"
  field :imported_feature_value_count, 3, type: :int64, json_name: "importedFeatureValueCount"
  field :invalid_row_count, 6, type: :int64, json_name: "invalidRowCount"
end
defmodule Google.Cloud.Aiplatform.V1.ExportFeatureValuesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.CreateEntityTypeOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.CreateFeatureOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.BatchCreateFeaturesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1.FeaturestoreService"

  rpc :CreateFeaturestore,
      Google.Cloud.Aiplatform.V1.CreateFeaturestoreRequest,
      Google.Longrunning.Operation

  rpc :GetFeaturestore,
      Google.Cloud.Aiplatform.V1.GetFeaturestoreRequest,
      Google.Cloud.Aiplatform.V1.Featurestore

  rpc :ListFeaturestores,
      Google.Cloud.Aiplatform.V1.ListFeaturestoresRequest,
      Google.Cloud.Aiplatform.V1.ListFeaturestoresResponse

  rpc :UpdateFeaturestore,
      Google.Cloud.Aiplatform.V1.UpdateFeaturestoreRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeaturestore,
      Google.Cloud.Aiplatform.V1.DeleteFeaturestoreRequest,
      Google.Longrunning.Operation

  rpc :CreateEntityType,
      Google.Cloud.Aiplatform.V1.CreateEntityTypeRequest,
      Google.Longrunning.Operation

  rpc :GetEntityType,
      Google.Cloud.Aiplatform.V1.GetEntityTypeRequest,
      Google.Cloud.Aiplatform.V1.EntityType

  rpc :ListEntityTypes,
      Google.Cloud.Aiplatform.V1.ListEntityTypesRequest,
      Google.Cloud.Aiplatform.V1.ListEntityTypesResponse

  rpc :UpdateEntityType,
      Google.Cloud.Aiplatform.V1.UpdateEntityTypeRequest,
      Google.Cloud.Aiplatform.V1.EntityType

  rpc :DeleteEntityType,
      Google.Cloud.Aiplatform.V1.DeleteEntityTypeRequest,
      Google.Longrunning.Operation

  rpc :CreateFeature,
      Google.Cloud.Aiplatform.V1.CreateFeatureRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateFeatures,
      Google.Cloud.Aiplatform.V1.BatchCreateFeaturesRequest,
      Google.Longrunning.Operation

  rpc :GetFeature,
      Google.Cloud.Aiplatform.V1.GetFeatureRequest,
      Google.Cloud.Aiplatform.V1.Feature

  rpc :ListFeatures,
      Google.Cloud.Aiplatform.V1.ListFeaturesRequest,
      Google.Cloud.Aiplatform.V1.ListFeaturesResponse

  rpc :UpdateFeature,
      Google.Cloud.Aiplatform.V1.UpdateFeatureRequest,
      Google.Cloud.Aiplatform.V1.Feature

  rpc :DeleteFeature,
      Google.Cloud.Aiplatform.V1.DeleteFeatureRequest,
      Google.Longrunning.Operation

  rpc :ImportFeatureValues,
      Google.Cloud.Aiplatform.V1.ImportFeatureValuesRequest,
      Google.Longrunning.Operation

  rpc :BatchReadFeatureValues,
      Google.Cloud.Aiplatform.V1.BatchReadFeatureValuesRequest,
      Google.Longrunning.Operation

  rpc :ExportFeatureValues,
      Google.Cloud.Aiplatform.V1.ExportFeatureValuesRequest,
      Google.Longrunning.Operation

  rpc :SearchFeatures,
      Google.Cloud.Aiplatform.V1.SearchFeaturesRequest,
      Google.Cloud.Aiplatform.V1.SearchFeaturesResponse
end

defmodule Google.Cloud.Aiplatform.V1.FeaturestoreService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.FeaturestoreService.Service
end
