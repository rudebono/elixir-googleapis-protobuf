defmodule Google.Cloud.Resourcemanager.V3.TagValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string, deprecated: false
  field :short_name, 3, type: :string, json_name: "shortName", deprecated: false
  field :namespaced_name, 4, type: :string, json_name: "namespacedName", deprecated: false
  field :description, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag_values, 1,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.TagValue,
    json_name: "tagValues"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V3.GetTagValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.GetNamespacedTagValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag_value, 1,
    type: Google.Cloud.Resourcemanager.V3.TagValue,
    json_name: "tagValue",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagValueMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateTagValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag_value, 1,
    type: Google.Cloud.Resourcemanager.V3.TagValue,
    json_name: "tagValue",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateTagValueMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagValueMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.TagValues.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.resourcemanager.v3.TagValues",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListTagValues,
      Google.Cloud.Resourcemanager.V3.ListTagValuesRequest,
      Google.Cloud.Resourcemanager.V3.ListTagValuesResponse

  rpc :GetTagValue,
      Google.Cloud.Resourcemanager.V3.GetTagValueRequest,
      Google.Cloud.Resourcemanager.V3.TagValue

  rpc :GetNamespacedTagValue,
      Google.Cloud.Resourcemanager.V3.GetNamespacedTagValueRequest,
      Google.Cloud.Resourcemanager.V3.TagValue

  rpc :CreateTagValue,
      Google.Cloud.Resourcemanager.V3.CreateTagValueRequest,
      Google.Longrunning.Operation

  rpc :UpdateTagValue,
      Google.Cloud.Resourcemanager.V3.UpdateTagValueRequest,
      Google.Longrunning.Operation

  rpc :DeleteTagValue,
      Google.Cloud.Resourcemanager.V3.DeleteTagValueRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.TagValues.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.TagValues.Service
end
