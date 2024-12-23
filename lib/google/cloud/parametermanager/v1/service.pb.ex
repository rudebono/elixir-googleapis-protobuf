defmodule Google.Cloud.Parametermanager.V1.ParameterFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PARAMETER_FORMAT_UNSPECIFIED, 0
  field :UNFORMATTED, 1
  field :YAML, 2
  field :JSON, 3
end

defmodule Google.Cloud.Parametermanager.V1.View do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Parametermanager.V1.Parameter.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Parametermanager.V1.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Parametermanager.V1.Parameter.LabelsEntry,
    map: true,
    deprecated: false

  field :format, 5,
    type: Google.Cloud.Parametermanager.V1.ParameterFormat,
    enum: true,
    deprecated: false

  field :policy_member, 6,
    type: Google.Iam.V1.ResourcePolicyMember,
    json_name: "policyMember",
    deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ListParametersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ListParametersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parameters, 1, repeated: true, type: Google.Cloud.Parametermanager.V1.Parameter
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.GetParameterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.CreateParameterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :parameter_id, 2, type: :string, json_name: "parameterId", deprecated: false
  field :parameter, 3, type: Google.Cloud.Parametermanager.V1.Parameter, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.UpdateParameterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :parameter, 2, type: Google.Cloud.Parametermanager.V1.Parameter, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.DeleteParameterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ParameterVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :disabled, 4, type: :bool, deprecated: false

  field :payload, 5,
    type: Google.Cloud.Parametermanager.V1.ParameterVersionPayload,
    deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ParameterVersionPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data, 1, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ListParameterVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ListParameterVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parameter_versions, 1,
    repeated: true,
    type: Google.Cloud.Parametermanager.V1.ParameterVersion,
    json_name: "parameterVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.GetParameterVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 6, type: Google.Cloud.Parametermanager.V1.View, enum: true, deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.RenderParameterVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.RenderParameterVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parameter_version, 1, type: :string, json_name: "parameterVersion", deprecated: false
  field :payload, 2, type: Google.Cloud.Parametermanager.V1.ParameterVersionPayload
  field :rendered_payload, 3, type: :bytes, json_name: "renderedPayload", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.CreateParameterVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :parameter_version_id, 2,
    type: :string,
    json_name: "parameterVersionId",
    deprecated: false

  field :parameter_version, 3,
    type: Google.Cloud.Parametermanager.V1.ParameterVersion,
    json_name: "parameterVersion",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.UpdateParameterVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :parameter_version, 2,
    type: Google.Cloud.Parametermanager.V1.ParameterVersion,
    json_name: "parameterVersion",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.DeleteParameterVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Parametermanager.V1.ParameterManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.parametermanager.v1.ParameterManager",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListParameters,
      Google.Cloud.Parametermanager.V1.ListParametersRequest,
      Google.Cloud.Parametermanager.V1.ListParametersResponse

  rpc :GetParameter,
      Google.Cloud.Parametermanager.V1.GetParameterRequest,
      Google.Cloud.Parametermanager.V1.Parameter

  rpc :CreateParameter,
      Google.Cloud.Parametermanager.V1.CreateParameterRequest,
      Google.Cloud.Parametermanager.V1.Parameter

  rpc :UpdateParameter,
      Google.Cloud.Parametermanager.V1.UpdateParameterRequest,
      Google.Cloud.Parametermanager.V1.Parameter

  rpc :DeleteParameter,
      Google.Cloud.Parametermanager.V1.DeleteParameterRequest,
      Google.Protobuf.Empty

  rpc :ListParameterVersions,
      Google.Cloud.Parametermanager.V1.ListParameterVersionsRequest,
      Google.Cloud.Parametermanager.V1.ListParameterVersionsResponse

  rpc :GetParameterVersion,
      Google.Cloud.Parametermanager.V1.GetParameterVersionRequest,
      Google.Cloud.Parametermanager.V1.ParameterVersion

  rpc :RenderParameterVersion,
      Google.Cloud.Parametermanager.V1.RenderParameterVersionRequest,
      Google.Cloud.Parametermanager.V1.RenderParameterVersionResponse

  rpc :CreateParameterVersion,
      Google.Cloud.Parametermanager.V1.CreateParameterVersionRequest,
      Google.Cloud.Parametermanager.V1.ParameterVersion

  rpc :UpdateParameterVersion,
      Google.Cloud.Parametermanager.V1.UpdateParameterVersionRequest,
      Google.Cloud.Parametermanager.V1.ParameterVersion

  rpc :DeleteParameterVersion,
      Google.Cloud.Parametermanager.V1.DeleteParameterVersionRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Parametermanager.V1.ParameterManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Parametermanager.V1.ParameterManager.Service
end