defmodule Google.Cloud.Aiplatform.V1.FeatureViewDataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FEATURE_VIEW_DATA_FORMAT_UNSPECIFIED, 0
  field :KEY_VALUE, 1
  field :PROTO_STRUCT, 2
end

defmodule Google.Cloud.Aiplatform.V1.FeatureViewDataKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :key_oneof, 0

  field :key, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :feature_view, 1, type: :string, json_name: "featureView", deprecated: false

  field :data_key, 6,
    type: Google.Cloud.Aiplatform.V1.FeatureViewDataKey,
    json_name: "dataKey",
    deprecated: false

  field :data_format, 7,
    type: Google.Cloud.Aiplatform.V1.FeatureViewDataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data, 0

  field :value, 2, type: Google.Cloud.Aiplatform.V1.FeatureValue, oneof: 0
  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :features, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :format, 0

  field :key_values, 3,
    type: Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList,
    json_name: "keyValues",
    oneof: 0

  field :proto_struct, 2, type: Google.Protobuf.Struct, json_name: "protoStruct", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.FeatureOnlineStoreService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :FetchFeatureValues,
      Google.Cloud.Aiplatform.V1.FetchFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.FeatureOnlineStoreService.Service
end