defmodule Google.Cloud.Aiplatform.V1.WriteFeatureValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false

  field :payloads, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.WriteFeatureValuesPayload,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.WriteFeatureValuesPayload.FeatureValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.FeatureValue
end

defmodule Google.Cloud.Aiplatform.V1.WriteFeatureValuesPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId", deprecated: false

  field :feature_values, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.WriteFeatureValuesPayload.FeatureValuesEntry,
    json_name: "featureValues",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.WriteFeatureValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false
  field :entity_id, 2, type: :string, json_name: "entityId", deprecated: false

  field :feature_selector, 3,
    type: Google.Cloud.Aiplatform.V1.FeatureSelector,
    json_name: "featureSelector",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.FeatureDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false

  field :feature_descriptors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.FeatureDescriptor,
    json_name: "featureDescriptors"
end

defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView.Data do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data, 0

  field :value, 1, type: Google.Cloud.Aiplatform.V1.FeatureValue, oneof: 0
  field :values, 2, type: Google.Cloud.Aiplatform.V1.FeatureValueList, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId"

  field :data, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView.Data
end

defmodule Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :header, 1, type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.Header

  field :entity_view, 2,
    type: Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse.EntityView,
    json_name: "entityView"
end

defmodule Google.Cloud.Aiplatform.V1.StreamingReadFeatureValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_type, 1, type: :string, json_name: "entityType", deprecated: false
  field :entity_ids, 2, repeated: true, type: :string, json_name: "entityIds", deprecated: false

  field :feature_selector, 3,
    type: Google.Cloud.Aiplatform.V1.FeatureSelector,
    json_name: "featureSelector",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureValue.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generate_time, 1, type: Google.Protobuf.Timestamp, json_name: "generateTime"
end

defmodule Google.Cloud.Aiplatform.V1.FeatureValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  field :struct_value, 15,
    type: Google.Cloud.Aiplatform.V1.StructValue,
    json_name: "structValue",
    oneof: 0

  field :metadata, 14, type: Google.Cloud.Aiplatform.V1.FeatureValue.Metadata
end

defmodule Google.Cloud.Aiplatform.V1.StructValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.StructFieldValue
end

defmodule Google.Cloud.Aiplatform.V1.StructFieldValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.FeatureValue
end

defmodule Google.Cloud.Aiplatform.V1.FeatureValueList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.FeatureValue
end

defmodule Google.Cloud.Aiplatform.V1.FeaturestoreOnlineServingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.FeaturestoreOnlineServingService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ReadFeatureValues,
      Google.Cloud.Aiplatform.V1.ReadFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse

  rpc :StreamingReadFeatureValues,
      Google.Cloud.Aiplatform.V1.StreamingReadFeatureValuesRequest,
      stream(Google.Cloud.Aiplatform.V1.ReadFeatureValuesResponse)

  rpc :WriteFeatureValues,
      Google.Cloud.Aiplatform.V1.WriteFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1.WriteFeatureValuesResponse
end

defmodule Google.Cloud.Aiplatform.V1.FeaturestoreOnlineServingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.FeaturestoreOnlineServingService.Service
end