defmodule Google.Cloud.Networkservices.V1.Mesh.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.Mesh do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :self_link, 9, type: :string, json_name: "selfLink", deprecated: false

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
    type: Google.Cloud.Networkservices.V1.Mesh.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :interception_port, 8, type: :int32, json_name: "interceptionPort", deprecated: false

  field :envoy_headers, 16,
    proto3_optional: true,
    type: Google.Cloud.Networkservices.V1.EnvoyHeaders,
    json_name: "envoyHeaders",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListMeshesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :return_partial_success, 4,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListMeshesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :meshes, 1, repeated: true, type: Google.Cloud.Networkservices.V1.Mesh
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetMeshRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateMeshRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :mesh_id, 2, type: :string, json_name: "meshId", deprecated: false
  field :mesh, 3, type: Google.Cloud.Networkservices.V1.Mesh, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateMeshRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :mesh, 2, type: Google.Cloud.Networkservices.V1.Mesh, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteMeshRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
