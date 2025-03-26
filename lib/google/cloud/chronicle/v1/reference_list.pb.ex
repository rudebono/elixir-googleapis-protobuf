defmodule Google.Cloud.Chronicle.V1.ReferenceListSyntaxType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REFERENCE_LIST_SYNTAX_TYPE_UNSPECIFIED, 0
  field :REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING, 1
  field :REFERENCE_LIST_SYNTAX_TYPE_REGEX, 2
  field :REFERENCE_LIST_SYNTAX_TYPE_CIDR, 3
end

defmodule Google.Cloud.Chronicle.V1.ReferenceListView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REFERENCE_LIST_VIEW_UNSPECIFIED, 0
  field :REFERENCE_LIST_VIEW_BASIC, 1
  field :REFERENCE_LIST_VIEW_FULL, 2
end

defmodule Google.Cloud.Chronicle.V1.ScopeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reference_list_scope, 2,
    type: Google.Cloud.Chronicle.V1.ReferenceListScope,
    json_name: "referenceListScope",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ReferenceListScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :scope_names, 1, repeated: true, type: :string, json_name: "scopeNames", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetReferenceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Chronicle.V1.ReferenceListView, enum: true
end

defmodule Google.Cloud.Chronicle.V1.ListReferenceListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Chronicle.V1.ReferenceListView, enum: true
end

defmodule Google.Cloud.Chronicle.V1.ListReferenceListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reference_lists, 1,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.ReferenceList,
    json_name: "referenceLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.CreateReferenceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :reference_list, 2,
    type: Google.Cloud.Chronicle.V1.ReferenceList,
    json_name: "referenceList",
    deprecated: false

  field :reference_list_id, 3, type: :string, json_name: "referenceListId", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.UpdateReferenceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reference_list, 1,
    type: Google.Cloud.Chronicle.V1.ReferenceList,
    json_name: "referenceList",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Chronicle.V1.ReferenceList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :revision_create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :description, 4, type: :string, deprecated: false

  field :entries, 5,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.ReferenceListEntry,
    deprecated: false

  field :rules, 6, repeated: true, type: :string, deprecated: false

  field :syntax_type, 8,
    type: Google.Cloud.Chronicle.V1.ReferenceListSyntaxType,
    json_name: "syntaxType",
    enum: true,
    deprecated: false

  field :rule_associations_count, 9,
    type: :int32,
    json_name: "ruleAssociationsCount",
    deprecated: false

  field :scope_info, 11,
    type: Google.Cloud.Chronicle.V1.ScopeInfo,
    json_name: "scopeInfo",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ReferenceListEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ReferenceListService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.chronicle.v1.ReferenceListService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetReferenceList,
      Google.Cloud.Chronicle.V1.GetReferenceListRequest,
      Google.Cloud.Chronicle.V1.ReferenceList

  rpc :ListReferenceLists,
      Google.Cloud.Chronicle.V1.ListReferenceListsRequest,
      Google.Cloud.Chronicle.V1.ListReferenceListsResponse

  rpc :CreateReferenceList,
      Google.Cloud.Chronicle.V1.CreateReferenceListRequest,
      Google.Cloud.Chronicle.V1.ReferenceList

  rpc :UpdateReferenceList,
      Google.Cloud.Chronicle.V1.UpdateReferenceListRequest,
      Google.Cloud.Chronicle.V1.ReferenceList
end

defmodule Google.Cloud.Chronicle.V1.ReferenceListService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Chronicle.V1.ReferenceListService.Service
end
