defmodule Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: String.t(),
          entity_id: String.t(),
          feature_selector: Google.Cloud.Aiplatform.V1beta1.FeatureSelector.t() | nil
        }

  defstruct [:entity_type, :entity_id, :feature_selector]

  field :entity_type, 1, type: :string
  field :entity_id, 2, type: :string
  field :feature_selector, 3, type: Google.Cloud.Aiplatform.V1beta1.FeatureSelector
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.FeatureDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct [:id]

  field :id, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: String.t(),
          feature_descriptors: [
            Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.FeatureDescriptor.t()
          ]
        }

  defstruct [:entity_type, :feature_descriptors]

  field :entity_type, 1, type: :string

  field :feature_descriptors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.FeatureDescriptor
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.EntityView.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: {atom, any}
        }

  defstruct [:data]

  oneof :data, 0
  field :value, 1, type: Google.Cloud.Aiplatform.V1beta1.FeatureValue, oneof: 0
  field :values, 2, type: Google.Cloud.Aiplatform.V1beta1.FeatureValueList, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.EntityView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_id: String.t(),
          data: [Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.EntityView.Data.t()]
        }

  defstruct [:entity_id, :data]

  field :entity_id, 1, type: :string

  field :data, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.EntityView.Data
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.Header.t() | nil,
          entity_view:
            Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.EntityView.t() | nil
        }

  defstruct [:header, :entity_view]

  field :header, 1, type: Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.Header

  field :entity_view, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse.EntityView
end

defmodule Google.Cloud.Aiplatform.V1beta1.StreamingReadFeatureValuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: String.t(),
          entity_ids: [String.t()],
          feature_selector: Google.Cloud.Aiplatform.V1beta1.FeatureSelector.t() | nil
        }

  defstruct [:entity_type, :entity_ids, :feature_selector]

  field :entity_type, 1, type: :string
  field :entity_ids, 2, repeated: true, type: :string
  field :feature_selector, 3, type: Google.Cloud.Aiplatform.V1beta1.FeatureSelector
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureValue.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generate_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:generate_time]

  field :generate_time, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any},
          metadata: Google.Cloud.Aiplatform.V1beta1.FeatureValue.Metadata.t() | nil
        }

  defstruct [:value, :metadata]

  oneof :value, 0
  field :bool_value, 1, type: :bool, oneof: 0
  field :double_value, 2, type: :double, oneof: 0
  field :int64_value, 5, type: :int64, oneof: 0
  field :string_value, 6, type: :string, oneof: 0
  field :bool_array_value, 7, type: Google.Cloud.Aiplatform.V1beta1.BoolArray, oneof: 0
  field :double_array_value, 8, type: Google.Cloud.Aiplatform.V1beta1.DoubleArray, oneof: 0
  field :int64_array_value, 11, type: Google.Cloud.Aiplatform.V1beta1.Int64Array, oneof: 0
  field :string_array_value, 12, type: Google.Cloud.Aiplatform.V1beta1.StringArray, oneof: 0
  field :bytes_value, 13, type: :bytes, oneof: 0
  field :metadata, 14, type: Google.Cloud.Aiplatform.V1beta1.FeatureValue.Metadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureValueList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Cloud.Aiplatform.V1beta1.FeatureValue.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.FeatureValue
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreOnlineServingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.FeaturestoreOnlineServingService"

  rpc :ReadFeatureValues,
      Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse

  rpc :StreamingReadFeatureValues,
      Google.Cloud.Aiplatform.V1beta1.StreamingReadFeatureValuesRequest,
      stream(Google.Cloud.Aiplatform.V1beta1.ReadFeatureValuesResponse)
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreOnlineServingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.FeaturestoreOnlineServingService.Service
end
