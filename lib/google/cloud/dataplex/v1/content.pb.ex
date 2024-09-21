defmodule Google.Cloud.Dataplex.V1.GetContentRequest.ContentView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONTENT_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Dataplex.V1.CreateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :content, 2, type: Google.Cloud.Dataplex.V1.Content, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :content, 2, type: Google.Cloud.Dataplex.V1.Content, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :content, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Content
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GetContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Dataplex.V1.GetContentRequest.ContentView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ContentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.ContentService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateContent,
      Google.Cloud.Dataplex.V1.CreateContentRequest,
      Google.Cloud.Dataplex.V1.Content

  rpc :UpdateContent,
      Google.Cloud.Dataplex.V1.UpdateContentRequest,
      Google.Cloud.Dataplex.V1.Content

  rpc :DeleteContent, Google.Cloud.Dataplex.V1.DeleteContentRequest, Google.Protobuf.Empty

  rpc :GetContent, Google.Cloud.Dataplex.V1.GetContentRequest, Google.Cloud.Dataplex.V1.Content

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :ListContent,
      Google.Cloud.Dataplex.V1.ListContentRequest,
      Google.Cloud.Dataplex.V1.ListContentResponse
end

defmodule Google.Cloud.Dataplex.V1.ContentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.ContentService.Service
end