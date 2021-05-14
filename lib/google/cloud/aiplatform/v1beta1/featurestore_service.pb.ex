defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          featurestore: Google.Cloud.Aiplatform.V1beta1.Featurestore.t() | nil,
          featurestore_id: String.t()
        }

  defstruct [:parent, :featurestore, :featurestore_id]

  field :parent, 1, type: :string
  field :featurestore, 2, type: Google.Cloud.Aiplatform.V1beta1.Featurestore
  field :featurestore_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeaturestoresRequest do
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

  defstruct [:parent, :filter, :page_size, :page_token, :order_by, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :order_by, 5, type: :string
  field :read_mask, 6, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeaturestoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          featurestores: [Google.Cloud.Aiplatform.V1beta1.Featurestore.t()],
          next_page_token: String.t()
        }

  defstruct [:featurestores, :next_page_token]

  field :featurestores, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Featurestore
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          featurestore: Google.Cloud.Aiplatform.V1beta1.Featurestore.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:featurestore, :update_mask]

  field :featurestore, 1, type: Google.Cloud.Aiplatform.V1beta1.Featurestore
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteFeaturestoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportFeatureValuesRequest.FeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          source_field: String.t()
        }

  defstruct [:id, :source_field]

  field :id, 1, type: :string
  field :source_field, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          feature_time_source: {atom, any},
          entity_type: String.t(),
          entity_id_field: String.t(),
          feature_specs: [
            Google.Cloud.Aiplatform.V1beta1.ImportFeatureValuesRequest.FeatureSpec.t()
          ],
          disable_online_serving: boolean,
          worker_count: integer
        }

  defstruct [
    :source,
    :feature_time_source,
    :entity_type,
    :entity_id_field,
    :feature_specs,
    :disable_online_serving,
    :worker_count
  ]

  oneof :source, 0
  oneof :feature_time_source, 1
  field :avro_source, 2, type: Google.Cloud.Aiplatform.V1beta1.AvroSource, oneof: 0
  field :bigquery_source, 3, type: Google.Cloud.Aiplatform.V1beta1.BigQuerySource, oneof: 0
  field :csv_source, 4, type: Google.Cloud.Aiplatform.V1beta1.CsvSource, oneof: 0
  field :feature_time_field, 6, type: :string, oneof: 1
  field :feature_time, 7, type: Google.Protobuf.Timestamp, oneof: 1
  field :entity_type, 1, type: :string
  field :entity_id_field, 5, type: :string

  field :feature_specs, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ImportFeatureValuesRequest.FeatureSpec

  field :disable_online_serving, 9, type: :bool
  field :worker_count, 11, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          imported_entity_count: integer,
          imported_feature_value_count: integer,
          invalid_row_count: integer
        }

  defstruct [:imported_entity_count, :imported_feature_value_count, :invalid_row_count]

  field :imported_entity_count, 1, type: :int64
  field :imported_feature_value_count, 2, type: :int64
  field :invalid_row_count, 6, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchReadFeatureValuesRequest.EntityTypeSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type_id: String.t(),
          feature_selector: Google.Cloud.Aiplatform.V1beta1.FeatureSelector.t() | nil,
          settings: [Google.Cloud.Aiplatform.V1beta1.DestinationFeatureSetting.t()]
        }

  defstruct [:entity_type_id, :feature_selector, :settings]

  field :entity_type_id, 1, type: :string
  field :feature_selector, 2, type: Google.Cloud.Aiplatform.V1beta1.FeatureSelector

  field :settings, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DestinationFeatureSetting
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchReadFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_option: {atom, any},
          featurestore: String.t(),
          destination: Google.Cloud.Aiplatform.V1beta1.FeatureValueDestination.t() | nil,
          entity_type_specs: [
            Google.Cloud.Aiplatform.V1beta1.BatchReadFeatureValuesRequest.EntityTypeSpec.t()
          ]
        }

  defstruct [:read_option, :featurestore, :destination, :entity_type_specs]

  oneof :read_option, 0
  field :csv_read_instances, 3, type: Google.Cloud.Aiplatform.V1beta1.CsvSource, oneof: 0
  field :featurestore, 1, type: :string
  field :destination, 4, type: Google.Cloud.Aiplatform.V1beta1.FeatureValueDestination

  field :entity_type_specs, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BatchReadFeatureValuesRequest.EntityTypeSpec
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportFeatureValuesRequest.SnapshotExport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:snapshot_time]

  field :snapshot_time, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: {atom, any},
          entity_type: String.t(),
          destination: Google.Cloud.Aiplatform.V1beta1.FeatureValueDestination.t() | nil,
          feature_selector: Google.Cloud.Aiplatform.V1beta1.FeatureSelector.t() | nil,
          settings: [Google.Cloud.Aiplatform.V1beta1.DestinationFeatureSetting.t()]
        }

  defstruct [:mode, :entity_type, :destination, :feature_selector, :settings]

  oneof :mode, 0

  field :snapshot_export, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ExportFeatureValuesRequest.SnapshotExport,
    oneof: 0

  field :entity_type, 1, type: :string
  field :destination, 4, type: Google.Cloud.Aiplatform.V1beta1.FeatureValueDestination
  field :feature_selector, 5, type: Google.Cloud.Aiplatform.V1beta1.FeatureSelector

  field :settings, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DestinationFeatureSetting
end

defmodule Google.Cloud.Aiplatform.V1beta1.DestinationFeatureSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_id: String.t(),
          destination_field: String.t()
        }

  defstruct [:feature_id, :destination_field]

  field :feature_id, 1, type: :string
  field :destination_field, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureValueDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :bigquery_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    oneof: 0

  field :tfrecord_destination, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TFRecordDestination,
    oneof: 0

  field :csv_destination, 3, type: Google.Cloud.Aiplatform.V1beta1.CsvDestination, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchReadFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entity_type: Google.Cloud.Aiplatform.V1beta1.EntityType.t() | nil,
          entity_type_id: String.t()
        }

  defstruct [:parent, :entity_type, :entity_type_id]

  field :parent, 1, type: :string
  field :entity_type, 2, type: Google.Cloud.Aiplatform.V1beta1.EntityType
  field :entity_type_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListEntityTypesRequest do
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

  defstruct [:parent, :filter, :page_size, :page_token, :order_by, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :order_by, 5, type: :string
  field :read_mask, 6, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_types: [Google.Cloud.Aiplatform.V1beta1.EntityType.t()],
          next_page_token: String.t()
        }

  defstruct [:entity_types, :next_page_token]

  field :entity_types, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EntityType
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: Google.Cloud.Aiplatform.V1beta1.EntityType.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:entity_type, :update_mask]

  field :entity_type, 1, type: Google.Cloud.Aiplatform.V1beta1.EntityType
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          feature: Google.Cloud.Aiplatform.V1beta1.Feature.t() | nil,
          feature_id: String.t()
        }

  defstruct [:parent, :feature, :feature_id]

  field :parent, 1, type: :string
  field :feature, 2, type: Google.Cloud.Aiplatform.V1beta1.Feature
  field :feature_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Cloud.Aiplatform.V1beta1.CreateFeatureRequest.t()]
        }

  defstruct [:parent, :requests]

  field :parent, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.CreateFeatureRequest
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          features: [Google.Cloud.Aiplatform.V1beta1.Feature.t()]
        }

  defstruct [:features]

  field :features, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Feature
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeaturesRequest do
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

  defstruct [
    :parent,
    :filter,
    :page_size,
    :page_token,
    :order_by,
    :read_mask,
    :latest_stats_count
  ]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :order_by, 5, type: :string
  field :read_mask, 6, type: Google.Protobuf.FieldMask
  field :latest_stats_count, 7, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          features: [Google.Cloud.Aiplatform.V1beta1.Feature.t()],
          next_page_token: String.t()
        }

  defstruct [:features, :next_page_token]

  field :features, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Feature
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:location, :query, :page_size, :page_token]

  field :location, 1, type: :string
  field :query, 3, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 5, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          features: [Google.Cloud.Aiplatform.V1beta1.Feature.t()],
          next_page_token: String.t()
        }

  defstruct [:features, :next_page_token]

  field :features, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Feature
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature: Google.Cloud.Aiplatform.V1beta1.Feature.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:feature, :update_mask]

  field :feature, 1, type: Google.Cloud.Aiplatform.V1beta1.Feature
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeaturestoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeaturestoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportFeatureValuesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          imported_entity_count: integer,
          imported_feature_value_count: integer,
          invalid_row_count: integer
        }

  defstruct [
    :generic_metadata,
    :imported_entity_count,
    :imported_feature_value_count,
    :invalid_row_count
  ]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
  field :imported_entity_count, 2, type: :int64
  field :imported_feature_value_count, 3, type: :int64
  field :invalid_row_count, 6, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportFeatureValuesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchReadFeatureValuesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateEntityTypeOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.BatchCreateFeaturesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end
