defmodule Google.Cloud.Dataplex.V1.Glossary.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.Glossary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Glossary.LabelsEntry,
    map: true,
    deprecated: false

  field :term_count, 8, type: :int32, json_name: "termCount", deprecated: false
  field :category_count, 9, type: :int32, json_name: "categoryCount", deprecated: false
  field :etag, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GlossaryCategory.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.GlossaryCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.GlossaryCategory.LabelsEntry,
    map: true,
    deprecated: false

  field :parent, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GlossaryTerm.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.GlossaryTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.GlossaryTerm.LabelsEntry,
    map: true,
    deprecated: false

  field :parent, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateGlossaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :glossary_id, 2, type: :string, json_name: "glossaryId", deprecated: false
  field :glossary, 3, type: Google.Cloud.Dataplex.V1.Glossary, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateGlossaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :glossary, 1, type: Google.Cloud.Dataplex.V1.Glossary, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteGlossaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetGlossaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListGlossariesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListGlossariesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :glossaries, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Glossary
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.CreateGlossaryCategoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :category_id, 2, type: :string, json_name: "categoryId", deprecated: false
  field :category, 3, type: Google.Cloud.Dataplex.V1.GlossaryCategory, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateGlossaryCategoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 1, type: Google.Cloud.Dataplex.V1.GlossaryCategory, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteGlossaryCategoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetGlossaryCategoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListGlossaryCategoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListGlossaryCategoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :categories, 1, repeated: true, type: Google.Cloud.Dataplex.V1.GlossaryCategory
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.CreateGlossaryTermRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :term_id, 2, type: :string, json_name: "termId", deprecated: false
  field :term, 3, type: Google.Cloud.Dataplex.V1.GlossaryTerm, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateGlossaryTermRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :term, 1, type: Google.Cloud.Dataplex.V1.GlossaryTerm, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteGlossaryTermRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetGlossaryTermRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListGlossaryTermsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListGlossaryTermsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :terms, 1, repeated: true, type: Google.Cloud.Dataplex.V1.GlossaryTerm
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.BusinessGlossaryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.BusinessGlossaryService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateGlossary,
      Google.Cloud.Dataplex.V1.CreateGlossaryRequest,
      Google.Longrunning.Operation

  rpc :UpdateGlossary,
      Google.Cloud.Dataplex.V1.UpdateGlossaryRequest,
      Google.Longrunning.Operation

  rpc :DeleteGlossary,
      Google.Cloud.Dataplex.V1.DeleteGlossaryRequest,
      Google.Longrunning.Operation

  rpc :GetGlossary, Google.Cloud.Dataplex.V1.GetGlossaryRequest, Google.Cloud.Dataplex.V1.Glossary

  rpc :ListGlossaries,
      Google.Cloud.Dataplex.V1.ListGlossariesRequest,
      Google.Cloud.Dataplex.V1.ListGlossariesResponse

  rpc :CreateGlossaryCategory,
      Google.Cloud.Dataplex.V1.CreateGlossaryCategoryRequest,
      Google.Cloud.Dataplex.V1.GlossaryCategory

  rpc :UpdateGlossaryCategory,
      Google.Cloud.Dataplex.V1.UpdateGlossaryCategoryRequest,
      Google.Cloud.Dataplex.V1.GlossaryCategory

  rpc :DeleteGlossaryCategory,
      Google.Cloud.Dataplex.V1.DeleteGlossaryCategoryRequest,
      Google.Protobuf.Empty

  rpc :GetGlossaryCategory,
      Google.Cloud.Dataplex.V1.GetGlossaryCategoryRequest,
      Google.Cloud.Dataplex.V1.GlossaryCategory

  rpc :ListGlossaryCategories,
      Google.Cloud.Dataplex.V1.ListGlossaryCategoriesRequest,
      Google.Cloud.Dataplex.V1.ListGlossaryCategoriesResponse

  rpc :CreateGlossaryTerm,
      Google.Cloud.Dataplex.V1.CreateGlossaryTermRequest,
      Google.Cloud.Dataplex.V1.GlossaryTerm

  rpc :UpdateGlossaryTerm,
      Google.Cloud.Dataplex.V1.UpdateGlossaryTermRequest,
      Google.Cloud.Dataplex.V1.GlossaryTerm

  rpc :DeleteGlossaryTerm,
      Google.Cloud.Dataplex.V1.DeleteGlossaryTermRequest,
      Google.Protobuf.Empty

  rpc :GetGlossaryTerm,
      Google.Cloud.Dataplex.V1.GetGlossaryTermRequest,
      Google.Cloud.Dataplex.V1.GlossaryTerm

  rpc :ListGlossaryTerms,
      Google.Cloud.Dataplex.V1.ListGlossaryTermsRequest,
      Google.Cloud.Dataplex.V1.ListGlossaryTermsResponse
end

defmodule Google.Cloud.Dataplex.V1.BusinessGlossaryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.BusinessGlossaryService.Service
end
