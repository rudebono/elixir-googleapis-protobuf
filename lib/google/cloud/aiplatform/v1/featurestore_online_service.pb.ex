defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: String.t(),
          entity_id: String.t(),
          feature_selector: Google.Cloud.Aiplatform.V1.FeatureSelector.t() | nil
        }

  defstruct entity_type: "",
            entity_id: "",
            feature_selector: nil

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false
  field :entity_id, 2, type: :string, json_name: "entityId", deprecated: false

  field :feature_selector, 3,
    type: Google.Cloud.Aiplatform.V1.FeatureSelector,
    json_name: "featureSelector",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.FeatureDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct id: ""

  field :id, 1, type: :string
end
defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: String.t(),
          feature_descriptors: [
            Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.FeatureDescriptor.t()
          ]
        }

  defstruct entity_type: "",
            feature_descriptors: []

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false

  field :feature_descriptors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.FeatureDescriptor,
    json_name: "featureDescriptors"
end
defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data:
            {:value, Google.Cloud.Aiplatform.V1.FeatureValue.t() | nil}
            | {:values, Google.Cloud.Aiplatform.V1.FeatureValueList.t() | nil}
        }

  defstruct data: nil

  oneof :data, 0

  field :value, 1, type: Google.Cloud.Aiplatform.V1.FeatureValue, oneof: 0
  field :values, 2, type: Google.Cloud.Aiplatform.V1.FeatureValueList, oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_id: String.t(),
          data: [Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView.Data.t()]
        }

  defstruct entity_id: "",
            data: []

  field :entity_id, 1, type: :string, json_name: "entityId"

  field :data, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView.Data
end
defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.Header.t() | nil,
          entity_view: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView.t() | nil
        }

  defstruct header: nil,
            entity_view: nil

  field :header, 1, type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.Header

  field :entity_view, 2,
    type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView,
    json_name: "entityView"
end
defmodule Google.Cloud.Aiplatform.V1.StreamingReadFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: String.t(),
          entity_ids: [String.t()],
          feature_selector: Google.Cloud.Aiplatform.V1.FeatureSelector.t() | nil
        }

  defstruct entity_type: "",
            entity_ids: [],
            feature_selector: nil

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false
  field :entity_ids, 2, repeated: true, type: :string, json_name: "entityIds", deprecated: false

  field :feature_selector, 3,
    type: Google.Cloud.Aiplatform.V1.FeatureSelector,
    json_name: "featureSelector",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.FeatureValue.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generate_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct generate_time: nil

  field :generate_time, 1, type: Google.Protobuf.Timestamp, json_name: "generateTime"
end
defmodule Google.Cloud.Aiplatform.V1.FeatureValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:bool_value, boolean}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:int64_value, integer}
            | {:string_value, String.t()}
            | {:bool_array_value, Google.Cloud.Aiplatform.V1.BoolArray.t() | nil}
            | {:double_array_value, Google.Cloud.Aiplatform.V1.DoubleArray.t() | nil}
            | {:int64_array_value, Google.Cloud.Aiplatform.V1.Int64Array.t() | nil}
            | {:string_array_value, Google.Cloud.Aiplatform.V1.StringArray.t() | nil}
            | {:bytes_value, binary},
          metadata: Google.Cloud.Aiplatform.V1.FeatureValue.Metadata.t() | nil
        }

  defstruct value: nil,
            metadata: nil

  oneof :value, 0

  field :bool_value, 1, type: :bool, json_name: "boolValue", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
  field :int64_value, 5, type: :int64, json_name: "int64Value", oneof: 0
  field :string_value, 6, type: :string, json_name: "stringValue", oneof: 0

  field :bool_array_value, 7,
    type: Google.Cloud.Aiplatform.V1.BoolArray,
    json_name: "boolArrayValue",
    oneof: 0

  field :double_array_value, 8,
    type: Google.Cloud.Aiplatform.V1.DoubleArray,
    json_name: "doubleArrayValue",
    oneof: 0

  field :int64_array_value, 11,
    type: Google.Cloud.Aiplatform.V1.Int64Array,
    json_name: "int64ArrayValue",
    oneof: 0

  field :string_array_value, 12,
    type: Google.Cloud.Aiplatform.V1.StringArray,
    json_name: "stringArrayValue",
    oneof: 0

  field :bytes_value, 13, type: :bytes, json_name: "bytesValue", oneof: 0
  field :metadata, 14, type: Google.Cloud.Aiplatform.V1.FeatureValue.Metadata
end
defmodule Google.Cloud.Aiplatform.V1.FeatureValueList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Cloud.Aiplatform.V1.FeatureValue.t()]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.FeatureValue
end
defmodule Google.Cloud.Aiplatform.V1.FeaturestoreOnlineServingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1.FeaturestoreOnlineServingService"

  rpc :ReadFeatureValues,
      Google.Cloud.Aiplatform.V1.ReadFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse

  rpc :StreamingReadFeatureValues,
      Google.Cloud.Aiplatform.V1.StreamingReadFeatureValuesRequest,
      stream(Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse)
end

defmodule Google.Cloud.Aiplatform.V1.FeaturestoreOnlineServingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.FeaturestoreOnlineServingService.Service
end
