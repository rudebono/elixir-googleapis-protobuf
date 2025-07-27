defmodule Google.Cloud.Support.V2beta.GetCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.CreateCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :case, 2, type: Google.Cloud.Support.V2beta.Case, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.ListCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"

  field :product_line, 8,
    proto3_optional: true,
    type: Google.Cloud.Support.V2beta.ProductLine,
    json_name: "productLine",
    enum: true
end

defmodule Google.Cloud.Support.V2beta.ListCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cases, 1, repeated: true, type: Google.Cloud.Support.V2beta.Case
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2beta.SearchCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 4, type: :string
  field :query, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2beta.SearchCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cases, 1, repeated: true, type: Google.Cloud.Support.V2beta.Case
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2beta.EscalateCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :escalation, 2, type: Google.Cloud.Support.V2beta.Escalation
end

defmodule Google.Cloud.Support.V2beta.UpdateCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :case, 1, type: Google.Cloud.Support.V2beta.Case, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Support.V2beta.CloseCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.SearchCaseClassificationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :product, 7, type: Google.Cloud.Support.V2beta.Product, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.SearchCaseClassificationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :case_classifications, 1,
    repeated: true,
    type: Google.Cloud.Support.V2beta.CaseClassification,
    json_name: "caseClassifications"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2beta.CaseService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2beta.CaseService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetCase, Google.Cloud.Support.V2beta.GetCaseRequest, Google.Cloud.Support.V2beta.Case

  rpc :ListCases,
      Google.Cloud.Support.V2beta.ListCasesRequest,
      Google.Cloud.Support.V2beta.ListCasesResponse

  rpc :SearchCases,
      Google.Cloud.Support.V2beta.SearchCasesRequest,
      Google.Cloud.Support.V2beta.SearchCasesResponse

  rpc :CreateCase, Google.Cloud.Support.V2beta.CreateCaseRequest, Google.Cloud.Support.V2beta.Case

  rpc :UpdateCase, Google.Cloud.Support.V2beta.UpdateCaseRequest, Google.Cloud.Support.V2beta.Case

  rpc :EscalateCase,
      Google.Cloud.Support.V2beta.EscalateCaseRequest,
      Google.Cloud.Support.V2beta.Case

  rpc :CloseCase, Google.Cloud.Support.V2beta.CloseCaseRequest, Google.Cloud.Support.V2beta.Case

  rpc :SearchCaseClassifications,
      Google.Cloud.Support.V2beta.SearchCaseClassificationsRequest,
      Google.Cloud.Support.V2beta.SearchCaseClassificationsResponse
end

defmodule Google.Cloud.Support.V2beta.CaseService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2beta.CaseService.Service
end
