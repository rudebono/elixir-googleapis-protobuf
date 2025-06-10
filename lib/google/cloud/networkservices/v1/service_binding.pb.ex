defmodule Google.Cloud.Networkservices.V1.ServiceBinding.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.ServiceBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :service, 5, type: :string, deprecated: true
  field :service_id, 8, type: :string, json_name: "serviceId", deprecated: true

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.ServiceBinding.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListServiceBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListServiceBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_bindings, 1,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.ServiceBinding,
    json_name: "serviceBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1.GetServiceBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateServiceBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_binding_id, 2, type: :string, json_name: "serviceBindingId", deprecated: false

  field :service_binding, 3,
    type: Google.Cloud.Networkservices.V1.ServiceBinding,
    json_name: "serviceBinding",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateServiceBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service_binding, 2,
    type: Google.Cloud.Networkservices.V1.ServiceBinding,
    json_name: "serviceBinding",
    deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteServiceBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
