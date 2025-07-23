defmodule Google.Cloud.Dataplex.V1.DataTaxonomy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DataTaxonomy do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataTaxonomy.LabelsEntry,
    map: true,
    deprecated: false

  field :attribute_count, 9, type: :int32, json_name: "attributeCount", deprecated: false
  field :etag, 10, type: :string
  field :class_count, 11, type: :int32, json_name: "classCount", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataAttribute.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DataAttribute do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataAttribute.LabelsEntry,
    map: true,
    deprecated: false

  field :parent_id, 8, type: :string, json_name: "parentId", deprecated: false
  field :attribute_count, 9, type: :int32, json_name: "attributeCount", deprecated: false
  field :etag, 10, type: :string

  field :resource_access_spec, 100,
    type: Google.Cloud.Dataplex.V1.ResourceAccessSpec,
    json_name: "resourceAccessSpec",
    deprecated: false

  field :data_access_spec, 101,
    type: Google.Cloud.Dataplex.V1.DataAccessSpec,
    json_name: "dataAccessSpec",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataAttributeBinding.Path do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :attributes, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataAttributeBinding.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DataAttributeBinding do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource_reference, 0

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataAttributeBinding.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 8, type: :string
  field :resource, 100, type: :string, oneof: 0, deprecated: false
  field :attributes, 110, repeated: true, type: :string, deprecated: false

  field :paths, 120,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataAttributeBinding.Path,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateDataTaxonomyRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :data_taxonomy_id, 2, type: :string, json_name: "dataTaxonomyId", deprecated: false

  field :data_taxonomy, 3,
    type: Google.Cloud.Dataplex.V1.DataTaxonomy,
    json_name: "dataTaxonomy",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateDataTaxonomyRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_taxonomy, 2,
    type: Google.Cloud.Dataplex.V1.DataTaxonomy,
    json_name: "dataTaxonomy",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetDataTaxonomyRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataTaxonomiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataTaxonomiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_taxonomies, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataTaxonomy,
    json_name: "dataTaxonomies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.DeleteDataTaxonomyRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateDataAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :data_attribute_id, 2, type: :string, json_name: "dataAttributeId", deprecated: false

  field :data_attribute, 3,
    type: Google.Cloud.Dataplex.V1.DataAttribute,
    json_name: "dataAttribute",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateDataAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_attribute, 2,
    type: Google.Cloud.Dataplex.V1.DataAttribute,
    json_name: "dataAttribute",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetDataAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_attributes, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataAttribute,
    json_name: "dataAttributes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.DeleteDataAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateDataAttributeBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_attribute_binding_id, 2,
    type: :string,
    json_name: "dataAttributeBindingId",
    deprecated: false

  field :data_attribute_binding, 3,
    type: Google.Cloud.Dataplex.V1.DataAttributeBinding,
    json_name: "dataAttributeBinding",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateDataAttributeBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_attribute_binding, 2,
    type: Google.Cloud.Dataplex.V1.DataAttributeBinding,
    json_name: "dataAttributeBinding",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetDataAttributeBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataAttributeBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataAttributeBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_attribute_bindings, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataAttributeBinding,
    json_name: "dataAttributeBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.DeleteDataAttributeBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataTaxonomyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.DataTaxonomyService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateDataTaxonomy,
      Google.Cloud.Dataplex.V1.CreateDataTaxonomyRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataTaxonomy,
      Google.Cloud.Dataplex.V1.UpdateDataTaxonomyRequest,
      Google.Longrunning.Operation

  rpc :DeleteDataTaxonomy,
      Google.Cloud.Dataplex.V1.DeleteDataTaxonomyRequest,
      Google.Longrunning.Operation

  rpc :ListDataTaxonomies,
      Google.Cloud.Dataplex.V1.ListDataTaxonomiesRequest,
      Google.Cloud.Dataplex.V1.ListDataTaxonomiesResponse

  rpc :GetDataTaxonomy,
      Google.Cloud.Dataplex.V1.GetDataTaxonomyRequest,
      Google.Cloud.Dataplex.V1.DataTaxonomy

  rpc :CreateDataAttributeBinding,
      Google.Cloud.Dataplex.V1.CreateDataAttributeBindingRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataAttributeBinding,
      Google.Cloud.Dataplex.V1.UpdateDataAttributeBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteDataAttributeBinding,
      Google.Cloud.Dataplex.V1.DeleteDataAttributeBindingRequest,
      Google.Longrunning.Operation

  rpc :ListDataAttributeBindings,
      Google.Cloud.Dataplex.V1.ListDataAttributeBindingsRequest,
      Google.Cloud.Dataplex.V1.ListDataAttributeBindingsResponse

  rpc :GetDataAttributeBinding,
      Google.Cloud.Dataplex.V1.GetDataAttributeBindingRequest,
      Google.Cloud.Dataplex.V1.DataAttributeBinding

  rpc :CreateDataAttribute,
      Google.Cloud.Dataplex.V1.CreateDataAttributeRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataAttribute,
      Google.Cloud.Dataplex.V1.UpdateDataAttributeRequest,
      Google.Longrunning.Operation

  rpc :DeleteDataAttribute,
      Google.Cloud.Dataplex.V1.DeleteDataAttributeRequest,
      Google.Longrunning.Operation

  rpc :ListDataAttributes,
      Google.Cloud.Dataplex.V1.ListDataAttributesRequest,
      Google.Cloud.Dataplex.V1.ListDataAttributesResponse

  rpc :GetDataAttribute,
      Google.Cloud.Dataplex.V1.GetDataAttributeRequest,
      Google.Cloud.Dataplex.V1.DataAttribute
end

defmodule Google.Cloud.Dataplex.V1.DataTaxonomyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.DataTaxonomyService.Service
end
